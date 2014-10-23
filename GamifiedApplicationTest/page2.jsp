<!DOCTYPE html>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<% response.setHeader("X-UA-Compatible", "IE=edge"); %>
<webratio:Page page="page2"/>
<html lang="${LanguageISOCtxParam}">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<title>Manage Users</title>
		<c:set var="wrAjaxDebugLevel" value="minimal"/>
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet" data-wr-resname="jquery-ui-style" data-wr-resver="1.9.2">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-ui-style" data-wr-resver="7.2.6">
	<link href="<webratio:Resource path="builtin/960_Fluid_Nestable_12.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-960gs-12">
	<link href="<webratio:Resource path="wrdefault/css/default.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wrdefault-style">
	<link href="<webratio:Resource path="MetroStyle/css/app.css"/>" type="text/css" rel="stylesheet" data-wr-resname="metro-app-css">
	<link href="<webratio:Resource path="builtin/grid_elements.css"/>" type="text/css" rel="stylesheet" data-wr-resname="wr-ui-gridsystem">
<script>if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
		<c:set var="wrAjaxDebugLevel" value="minimal"/>
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" data-wr-resname="jquery" data-wr-resver="1.7.2"></script>
	<script src="<webratio:Resource path="WRResources/script.js"/>" data-wr-resname="wr-utils-supportscripts" data-wr-resver="7.2.6"></script>
	<script src="<webratio:Resource path="WRResources/ajax/jquery-ui/jquery-ui.min.js"/>" data-wr-resname="jquery-ui" data-wr-resver="1.9.2"></script>
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext))}">
	<script src="<webratio:Resource path="${webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext)}"/>" data-wr-resname="wr-runtime" data-wr-resver="7.2.6"></script>
<c:if test="${not wrAjax and not webratio:isWindow(pageContext)}">
	<script type="text/javascript">
		<c:choose>
			<c:when test="${wrBoxed}">
				(wr._configs = (wr._configs || {}))["${wrClientAppName}"] = (function() {
					var app = new wr.app.App("${wrClientAppName}");
					app.configure({
			</c:when>
			<c:otherwise>
				(function() { 
					wr.getApp().mergeConfig({
			</c:otherwise>
		</c:choose>
			log: {
				implementation: "wr.log.LogPlugin",
				appenders: [
					"wr.log.HtmlAppender"
				],
				categories: {
					<c:choose>
						<c:when test="${wrAjaxDebugLevel eq 'full'}">
							"": wr.log.Level.DEBUG
						</c:when>
						<c:otherwise>
							"": wr.log.Level.WARN,
							"wr.logic.AjaxRequestActor._response": wr.log.Level.DEBUG,
							"wr.ui.html.ElementViewer._code": wr.log.Level.DEBUG,
							"wr.widgets": wr.log.Level.DEBUG
						</c:otherwise>
					</c:choose>
				}
			},
		ui: {
			implementation: "wr.ui.UIPlugin",
			factories: {
				"display": "wr.ui.DisplayControlFactory",
				"window": "wr.ui.WindowControlFactory",
				"default": "wr.ui.ViewerBasedControlFactory"
			},
			display: { 
				factory: "display", 
				viewer: "wr.ui.web.BrowserViewer",
				views: {
					"${wrCurrentWindowName}": {
						factory: "window",
						viewer: "${wrBoxed ? 'wr.ui.web.BoxViewer' : 'wr.ui.web.WindowViewer'}",
						viewerConfig: { <c:if test="${wrBoxed}">boxSelector: "#wr-${wrClientAppName}"</c:if> },
						views: {
							"${wrCurrentWindowName}_page": {
								viewer: "wr.ui.html.ContainerElementViewer",
								viewerConfig: { containersFilter: ".wr-ajaxDiv" }
							}
						}
					}
				}
			}
		},
		nav: {
			implementation: "wr.nav.NavPlugin",
			routers: [ {
				name: "wr.nav.PropagationRouter",
				priority: -50
			}, {
				name: "wr.nav.HttpWebRouter",
				priority: -100
			} ]
		},
		logic: {
			implementation: "wr.logic.LogicPlugin"
		},
		oldajax: {
			implementation: "wr.LegacyAjaxPlugin",
				containersFilter: ".wr-ajaxDiv"
			}
		<c:choose>
			<c:when test="${wrBoxed}">
					}).chain(function() {
						app.init();
					}).chain(function() {
						app.start();
					});
				});
			</c:when>
			<c:otherwise>
					});
				})();
			</c:otherwise>
		</c:choose>
	</script>
</c:if>
			</c:if>
			<!--[if lt IE 9]>
	<script src="<webratio:Resource path="MetroStyle/js/html5shiv.min.js"/>" data-wr-resname="aFarkas-html5shiv"></script>
			<![endif]-->
			<!--[if lt IE 9]>
	<script src="<webratio:Resource path="MetroStyle/js/respond.min.js"/>" data-wr-resname="Scott-Jehl-respond"></script>
			<![endif]-->
	<script src="<webratio:Resource path="MetroStyle/js/bootstrap.min.js"/>" data-wr-resname="bootstrap-js"></script>
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BUILTIN/jquery-ui-datepicker-lang', 'WRResources/ajax/jquery-ui/i18n/', pageContext))}">
	<script src="<webratio:Resource path="${webratio:expandLayoutResourceContent('BUILTIN/jquery-ui-datepicker-lang', 'WRResources/ajax/jquery-ui/i18n/', pageContext)}"/>" data-wr-resname="jquery-ui-datepicker-lang" data-wr-resver="1.9.2"></script>
			</c:if>
	<script src="<webratio:Resource path="MetroStyle/js/bootstrap-filestyle.min.js"/>" data-wr-resname="bootstrap-filestyle-js"></script>
	<script src="<webratio:Resource path="MetroStyle/js/app.min.js"/>" data-wr-resname="metro-app-js"></script>
	<script src="<webratio:Resource path="WRResources/ajax/webratio/calendar-utils.js"/>" data-wr-resname="wr-calendar-utils" data-wr-resver="7.2.6"></script>
<script>if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
	</head>
<body>
<a href="#main-content" class="sr-only">Skip to main content</a>
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
		<script type="text/javascript">
			if (typeof wr !== "undefined") {
				WRAjax.onReady(function() {
					wr.getApp().getPlugin("ui").configureViews(null, {
						_oldajax_ww: {
							factory: "window",
							viewer: "wr.ui.jquery.WaitDialogViewer"
						}
					});
				});
			}
		</script>
			<html:form action="form_page2.do${wrAjax ? '#!ajax=true' : ''}" styleId="page2FormBean" enctype="multipart/form-data">
		<div class="wr-ajaxDiv" id="page2HiddenFields">
			<html:hidden property="lastURL" styleId="lastURL_page2"/>
				<input type="hidden" name="ln11" value="<webratio:Link link="ln11"/>">
				<input type="hidden" name="ln22" value="<webratio:Link link="ln22"/>">
				<input type="hidden" name="ln1g" value="<webratio:Link link="ln1g"/>">
					<input type="hidden" name="ln1g_sr" value="<webratio:Link link="ln1g" selectiveRefresh="true"/>">
		</div>
<div class="wrapper">
	<nav id="main-nav" class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="row">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">		      
		            <ul class="nav navbar-nav" role="menu">
									<li><a href="<webratio:Link escapeXml="true" link="page1.link"/>">Loyalty Program Simulator</a></li>
									<li class="active"><a href="<webratio:Link escapeXml="true" link="page2.link"/>">Manage Users</a></li>
									<li class="dropdown">
										<a href="<webratio:Link escapeXml="true" link="page3g.link"/>" class="dropdown-toggle" data-toggle="dropdown" data-target="#">Test WS<span class="caret"></span></a>
										<ul class="dropdown-menu" role="menu">
															<li>	
 <a class="" href="<webratio:Link link="page3g.link"/>">
   Get Actions
</a>
 </li>
															<li>	
 <a class="" href="<webratio:Link link="page5g.link"/>">
   Get User Credits
</a>
 </li>
															<li>	
 <a class="" href="<webratio:Link link="page6g.link"/>">
   Get User Rewards
</a>
 </li>
															<li>	
 <a class="" href="<webratio:Link link="page7g.link"/>">
   Redeem  User Reward
</a>
 </li>
										</ul>
									</li>
									<li><a href="<webratio:Link escapeXml="true" link="page8g.link"/>">Reset Loyalty Program Dashboard</a></li>
									<li><a href="<webratio:Link escapeXml="true" link="page3.link"/>">Go To Community</a></li>
		            </ul>
		            <div class="user-location">
		            </div>
				</div>
			</div>
		</div>
	</nav>
	<div class="page-header">
		<div class="container container-fixed-top-padding">
			<div class="row">
				<a class="logo" href="page1.do"><span class="sr-only">WebRatio</span></a>
			</div>
			<div class="row">
				<ol class="breadcrumb" aria-label="breadcrumbs">
					<li class="active">Manage Users</li>
				</ol>
			</div>
		</div>
	</div>
	<div class="container main-grid">
		<div class="row">
			<div class="col-md-12">
				<div class="page-title">
						<h1>Manage Users</h1>
				</div>
				<div id="main-content" role="main">
				<div class="wr-ajaxDiv" id="page2_grid_0">
<div class="container_12">
			<div class="grid_5 suffix_7 alpha omega agrd_10">
				<div class="wr-ajaxDiv" id="page2_cell_0">
	<div class="wr-ajaxDiv" id="mssu2_0">
<c:if test="${not(empty mssu2) and (mssu2.dataSize gt 0)}">
	<div class="alert alert-info ">
		<c:forEach var="current" varStatus="status" items="${mssu2.data}">
			<c:set var="index" value="${status.index}"/>
			<p>
					<c:out value="${current}"/>
				</p>
		</c:forEach>
	</div>
</c:if>
</div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_5 alpha agrd_10">
				<div class="wr-ajaxDiv" id="page2_cell_12">
	<div class="wr-ajaxDiv" id="enu3_0">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Create New User
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="">
	    <c:set var="btFieldError"><html:errors property="enu3"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu3"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="fld1"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld1" class="control-label">First Name *</label>
					<div class="controls">
					<html:text   styleId="fld1" styleClass="wr-submitButtons:ln1g  form-control " property="fld1" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld1"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld3"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld3" class="control-label">Last Name *</label>
					<div class="controls">
					<html:text   styleId="fld3" styleClass="wr-submitButtons:ln1g  form-control " property="fld3" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld3"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld6"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld6" class="control-label">Email *</label>
					<div class="controls">
					<html:text   styleId="fld6" styleClass="wr-submitButtons:ln1g  form-control " property="fld6" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld6"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld7_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld7_locale" class="control-label">BirthDate</label>
					<div class="controls">
					<div class="input-calendar input-group">
				<html:text  styleId="fld7_locale" styleClass="wr-submitButtons:ln1g form-control " property="fld7_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld7_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld7_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld7_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld7_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld7_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld7_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld8"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld8" class="control-label">City *</label>
					<div class="controls">
					<html:text   styleId="fld8" styleClass="wr-submitButtons:ln1g  form-control " property="fld8" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld8"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld9"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld9" class="control-label">Country *</label>
					<div class="controls">
					<html:text   styleId="fld9" styleClass="wr-submitButtons:ln1g  form-control " property="fld9" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld9"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld4"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld4" class="control-label">Geographical Area</label>
					<div class="controls">
					<html:select styleId="sfld4" styleClass="wr-submitButtons:ln1g form-control " property="sfld4" disabled="false">
				    <html:options property="sfld4List" labelProperty="sfld4LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld4"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld12_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld12_locale" class="control-label">Public profile *</label>
					<div class="controls">
					<label class="radio-inline" for="bool_fld12_0">
  					<html:radio styleClass="wr-submitButtons:ln1g " styleId="bool_fld12_0" property="fld12_locale" value="true" disabled="false"/>
					<bean:message key="boolean.yes"/>
				</label>
				<label class="radio-inline" for="bool_fld12_1">
  					<html:radio styleClass="wr-submitButtons:ln1g " styleId="bool_fld12_1" property="fld12_locale" value="false" disabled="false"/>
					<bean:message key="boolean.no"/>
				</label>
		<c:if test="false">
			<html:hidden property="fld12_locale"/>
		</c:if>
					<c:set var="btFieldError"><html:errors property="fld12_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld16_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld16_locale" class="control-label">Internal User *</label>
					<div class="controls">
					<label class="radio-inline" for="bool_fld16_0">
  					<html:radio styleClass="wr-submitButtons:ln1g " styleId="bool_fld16_0" property="fld16_locale" value="true" disabled="false"/>
					<bean:message key="boolean.yes"/>
				</label>
				<label class="radio-inline" for="bool_fld16_1">
  					<html:radio styleClass="wr-submitButtons:ln1g " styleId="bool_fld16_1" property="fld16_locale" value="false" disabled="false"/>
					<bean:message key="boolean.no"/>
				</label>
		<c:if test="false">
			<html:hidden property="fld16_locale"/>
		</c:if>
					<c:set var="btFieldError"><html:errors property="fld16_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld3"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld3" class="control-label">Language *</label>
					<div class="controls">
					<html:select styleId="sfld3" styleClass="wr-submitButtons:ln1g form-control " property="sfld3" disabled="false">
				    <html:options property="sfld3List" labelProperty="sfld3LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld3"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld13"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld13" class="control-label">Username *</label>
					<div class="controls">
					<html:text   styleId="fld13" styleClass="wr-submitButtons:ln1g  form-control " property="fld13" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld13"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld14"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld14" class="control-label">Password *</label>
					<div class="controls">
					<input type="password" autocomplete="off" id="fld14" class="wr-submitButtons:ln1g form-control " name="fld14" value="${page2FormBean.map.fld14}"/>
					<c:set var="btFieldError"><html:errors property="fld14"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld10"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld10" class="control-label">Photo</label>
					<div class="controls">
					<html:hidden property="fld10_preload" styleId="fld10_preload"/>
			<html:file styleId="fld10" styleClass="wr-submitButtons:ln1g " property="fld10" accept="image/jpg" disabled="false" />
		<c:if test="${not(empty page2FormBean.map.fld10_preload)}">
			<label class="input-group-addon blob-clear" for="fld10_clear"><html:checkbox styleClass="wr-submitButtons:ln1g " styleId="fld10_clear" property="fld10_clear" disabled="false"/> Clear </label><div class="input-group-btn"><a target="blank" class="btn btn-default" href="<webratio:BLOB value="${page2FormBean.map.fld10_preload}"/>">Preview</a></div>
		</c:if>
					<c:set var="btFieldError"><html:errors property="fld10"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
		<div class="form-group form-btn">
					 <button title="Select Photo" onclick="return ajaxRequest('page2FormBean', $H({isForm: true, pressedLink: 'button:ln1g', selectiveRefresh: true, sourcePage: 'page2'})) " class="btn  btn-default " id="button:ln1g" name="button:ln1g" type="submit" value="Select Photo">
			Select Photo</button>
		</div>
</div>	
	</div>
</div></div>
</div>
			</div>
			<div class="grid_7 omega agrd_14">
				<div class="wr-ajaxDiv" id="page2_cell_17">
	<div class="wr-ajaxDiv" id="pwu1_0">
<c:if test="${not(empty pwu1) and (pwu1.dataSize gt 0)}">
<div class="panel panel-default frameOverflow">
	<div class="panel-heading">
		<h2 class="panel-title">
			List Of Users
		</h2>
	</div>
	<div class="panel-body">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="">
						             <a title="First Name" id="pwu1att13" onclick="return ajaxRequest('<webratio:Link link="pwu1att13" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1att13', sourcePage: 'page2'}))" class="  sort" href="<webratio:Link link="pwu1att13" position="index"/>">							
			First Name</a>
					        </th>
					        <th scope="col" class="">
						             <a title="Last Name" id="pwu1att14" onclick="return ajaxRequest('<webratio:Link link="pwu1att14" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1att14', sourcePage: 'page2'}))" class="  sort" href="<webratio:Link link="pwu1att14" position="index"/>">							
			Last Name</a>
					        </th>
					        <th scope="col" class="">
						            Username
					        </th>
					        <th scope="col" class="">
						            Email
					        </th>
<th scope="col" class=" smallcol"></th> 
<th scope="col" class=" smallcol"></th> 
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu1.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu1.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
										<c:out value="${current.firstName}"/>
								</td>
								<td class=" string">
										<c:out value="${current.lastName}"/>
								</td>
								<td class=" string">
										<c:out value="${current.username}"/>
								</td>
								<td class=" string">
										<c:out value="${current.email}"/>
								</td>
									<td class=" smallcol">
										 <a title="Modify" id="ln32" onclick="return ajaxRequest('<webratio:Link link="ln32" position="index"/>', $H({pressedLink: 'ln32', sourcePage: 'page2'}))" class=" " href="<webratio:Link link="ln32" position="index"/>">							
			Modify</a>
									</td>
									<td class=" smallcol">
										 <c:set var="_wr_message"><bean:message key="linkConfirmMessage"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
	 		<a title="Delete" id="ln33" class=" " href="<webratio:Link link="ln33" position="index"/>"  onclick="return confirm('<c:out value="${_wr_message}"/>')">
			Delete</a>
									</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu1.scroller.of gt 20}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu1.scroller.current ne pwu1.scroller.first}">
	     	            <li> <a title="<bean:message key="PowerIndex.First"/>" id="pwu1First" onclick="return ajaxRequest('<webratio:Link link="pwu1First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1First', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.First"/>" id="pwu1First" onclick="return ajaxRequest('<webratio:Link link="pwu1First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1First', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu1.scroller.current ne pwu1.scroller.previous}">
	     	            <li> <a title="<bean:message key="PowerIndex.Previous"/>" id="pwu1Previous" onclick="return ajaxRequest('<webratio:Link link="pwu1Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Previous', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.Previous"/>" id="pwu1Previous" onclick="return ajaxRequest('<webratio:Link link="pwu1Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Previous', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu1.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu1.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu1Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu1Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Block', sourcePage: 'page2'}))">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu1.scroller.current ne pwu1.scroller.next}">
	     	            <li> <a title="<bean:message key="PowerIndex.Next"/>" id="pwu1Next" onclick="return ajaxRequest('<webratio:Link link="pwu1Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Next', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.Next"/>" id="pwu1Next" onclick="return ajaxRequest('<webratio:Link link="pwu1Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Next', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu1.scroller.current ne pwu1.scroller.last}">
	     	            <li> <a title="<bean:message key="PowerIndex.Last"/>" id="pwu1Last" onclick="return ajaxRequest('<webratio:Link link="pwu1Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Last', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1Last" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.Last"/>" id="pwu1Last" onclick="return ajaxRequest('<webratio:Link link="pwu1Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Last', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1Last" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
 </li>
	               </c:otherwise>
	            </c:choose>
	    </ul>
	    </div>
	</c:if>
			</div>
		</div>
	</div>
</div>
</c:if>
</div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_5 suffix_7 alpha omega agrd_10">
				<div class="wr-ajaxDiv" id="page2_cell_24">
	<div class="wr-ajaxDiv" id="enu3_1">
<div class="EntryUnit ">
		<div class="form-group form-btn">
					 <button title="Save" onclick="return ajaxRequest('page2FormBean', $H({isForm: true, pressedLink: 'button:ln11', selectiveRefresh: false, sourcePage: 'page2', waitingWindow: $H({message: '<bean:message key="ajax.computingRequest"/>', width: 200, height: 100, duration: 1000, className: ''})})) " class="btn  btn-default " id="button:ln11" name="button:ln11" type="submit" value="Save">
			Save</button>
					 <button title="Reset" onclick="$('#page2FormBean')[0].target='_self'" class="btn  btn-default " id="button:ln22" name="button:ln22" type="submit" value="Reset">
			Reset</button>
		</div>
</div>	
</div>
</div>
			</div>
				<div class="clear"></div>
</div>
</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<footer class="footer-bottom" role="contentinfo">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<a href="#main-nav" title="Back to top" class="back-top pull-right btn btn-primary btn-lg"><span class="glyphicon glyphicon-chevron-up"></span><span class="sr-only">Back to top</span></a>
					<img class="footer-logo" src="MetroStyle/img/logo.png" alt="WebRatio"/>
					<p class="footer-info">Generated by <a href="http://www.webratio.com" target="_blank" title="High Productivity Web and Mobile App Dev Platform">WebRatio<sup>&reg;</sup></a></p>
				</div>
			</div>
		</div>
	</footer>
		</html:form>
		<script type="text/javascript">
			if (typeof wr !== "undefined" && wr.getApp().isConfigurable()) {
				wr.getApp().mergeConfig({
					"ui+": {
						autoFocusFirstWindow: true
					}
				});
			}
		</script>
	<script type="application/json" class="wr-linkInfos">
		<webratio:LinkInfos page="page2"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page2" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page2"/>
	</script>
</webratio:CollectScripts>
<c:if test="${wrBoxed}">
		</div>
		<c:if test="${not wrAjax}">
			<script type="text/javascript">
				jQuery(function($) {
					wr.ui.html.addRemoveListener($("#wr-${wrClientAppName}")[0], $.proxy(wr.runScoped, this, "${wrClientAppName}", wr.LegacyAjaxPlugin.exit));
				});
				wr._configs["${wrClientAppName}"]();
			</script>
		</c:if>
		<c:if test="${not(empty inlineScripts)}">
			<script type="text/javascript">
				wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
					${inlineScripts}
				});
			</script>
		</c:if>
</c:if>
</body>
</html>