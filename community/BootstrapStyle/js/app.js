jQuery(document).ready(function ($) {
    "use strict";

    /*
    * @param {Element} container Block to init
    */
    function init(container) {
        var $container = $(container),
            active;


        $("input:text[alt], input:password[alt], textarea.nockeditor[alt]", $container).each(function (index) {
            var $this = $(this);
            $this.attr("placeholder", $this.attr("alt"));
        });
        if (!$.support.placeholder) {
            active = document.activeElement;
            $('input:text[placeholder], input:password[placeholder], textarea.nockeditor[placeholder]', $container).blur();
            if (document.activeElement !== active) {
                $(active).focus();
            }
        }

        $('.MultiEntryUnit.dynamic', $container).each(function () {
            dynamicMultipleForm(this);
        });

        if ($.fn.filestyle) {
            $(":file + .bootstrap-filestyle", $container).remove();
            $(":file", $container).filestyle();
        }
    }

    /*
    * @param {Element} dmf Multiple Form Container
    */
    function dynamicMultipleForm(dmf) {
        var $table = $('> .table', dmf),
            $lastRow = $('> tbody > tr:last', $table),
            lastRowId = $lastRow.attr('id'),
            newRowId = $table.attr("id") + "[INDEX]",
            newRow = $lastRow.get(0).outerHTML;
        while (newRow.indexOf(lastRowId) > 0) {
            newRow = newRow.replace(lastRowId, newRowId);
        }
        while (newRow.indexOf("selected") > 0) {
            newRow = newRow.replace("selected", "");
        }
        
        $table.data('multiEntryRow', newRow);

        function checkRowLength($table) {
            var $removeRowLinks = $('.remove-row', $table);
            if ($removeRowLinks.length > 1) {
                $removeRowLinks.removeClass('disabled');
            } else if ($removeRowLinks.length < 2) {
                $removeRowLinks.addClass('disabled');
            }
        }

        $(dmf).on('click', '.add-row', function (event) {
            event.preventDefault();

            var $table = $(this).closest(".MultiEntryUnit.dynamic").find('> .table'),
                $lastRow = $('> tbody > tr:last', $table),
                lastRowId = $lastRow.attr('id'),
                rowIndex = 1 + Number(lastRowId.replace($table.attr("id"), "").replace("[", "").replace("]", "")),
                newRowId = $table.attr("id") + "[" + (rowIndex) + "]",
                newRow = $table.data('multiEntryRow'),
                rowId = $table.attr("id") + "[INDEX]";
            
            while (newRow.indexOf(rowId) > 0) {
                newRow = newRow.replace(rowId, newRowId);
            }

            $(newRow).insertAfter($lastRow);
            $(":input", newRow).not(':button, :submit').val("");
            init(newRow);

            checkRowLength($table);

            return false;

        }).on('click', '.remove-row', function (event) {
            event.preventDefault();

            var $row = $(this).closest("tr"),
                $table = $(this).closest("table");
            if (!$row.is(":only-child") && !$(this).is(".disabled")) {
                $row.remove();
            }

            checkRowLength($table);

            return false;
        });

        checkRowLength(dmf);
    }

    $.support.placeholder = (document.createElement('input').hasOwnProperty('placeholder'));
    if (!$.support.placeholder) {
        $(document).on('focus', 'input:text[placeholder], input:password[placeholder], textarea.nockeditor[placeholder]', function (e) {
            var $this = $(this),
                placeholder = $this.attr('placeholder');
            if ($this.is('[readonly]')) {
                return false;
            }
            if ($.trim(placeholder) !== '' && $this.val() === placeholder) {
                $this.val('').removeClass('has-placeholder');
            }
        }).on('blur', 'input:text[placeholder], input:password[placeholder], textarea.nockeditor[placeholder]', function (e) {
            var $this = $(this),
                placeholder = $this.attr('placeholder');
            if ($this.is('[readonly]')) {
                return false;
            }
            if ($.trim(placeholder) !== '' && ($this.val() === '' || $this.val() === placeholder)) {
                $this.val(placeholder).addClass('has-placeholder');
            }
        }).on('submit.wr', 'form', function (e) {
            $('.has-placeholder', $(this)).each(function () {
                $(this).val('');
            });
        }).on('ajaxbegin', function (e) {
            $('.has-placeholder', $(this)).each(function () {
                $(this).val('');
            });
        }).on('ajaxcomplete', function (e) {
            var active = document.activeElement;
            $('input:text[placeholder], input:password[placeholder], textarea.nockeditor[placeholder]').blur();
            if (document.activeElement !== active) {
                $(active).focus();
            }
        });
    }

    /* 3rd+ Level Landmark */
    $('ul.dropdown-menu [data-toggle=dropdown]').on('click', function (event) {
        event.preventDefault();
        event.stopPropagation();
        $(this).parent().siblings().removeClass('open');
        $(this).parent().toggleClass('open');
    });


    if (typeof wr !== "undefined") {

        /* Init for ajax update */
        wr.LegacyAjaxPlugin.addContentUpdateListener(function (element) {
            init(element);
        });

        /* Trigger custom event on ajax events */
        wr.logic.AjaxRequestActor.prototype.execute = (function () {
            var _execute = wr.logic.AjaxRequestActor.prototype.execute;
            return function (input, output, context) {
                $(document).trigger($.Event("ajaxbegin", {
                    ajaxAction: input
                }));
                var promise = _execute.call(this, input, output, context);
                promise.onComplete(function () {
                    $(document).trigger($.Event("ajaxcomplete", {
                        ajaxAction: input
                    }));
                });
                return promise;
            };
        })();

    }

    init(document);


});