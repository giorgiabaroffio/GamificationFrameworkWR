<!DOCTYPE html>
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<% response.setHeader("X-UA-Compatible", "IE=edge"); %>
<webratio:Page page="page1"/>
<html lang="${LanguageISOCtxParam}">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<title>Loyalty Program Simulator</title>
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
	<script src="<webratio:Resource path="MetroStyle/js/app.min.js"/>" data-wr-resname="metro-app-js"></script>
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
			<html:form action="form_page1.do${wrAjax ? '#!ajax=true' : ''}" styleId="page1FormBean" enctype="multipart/form-data">
		<div class="wr-ajaxDiv" id="page1HiddenFields">
			<html:hidden property="lastURL" styleId="lastURL_page1"/>
				<input type="hidden" name="ln1" value="<webratio:Link link="ln1"/>">
				<input type="hidden" name="ln6" value="<webratio:Link link="ln6"/>">
					<input type="hidden" name="ln6_sr" value="<webratio:Link link="ln6" selectiveRefresh="true"/>">
				<input type="hidden" name="ln15" value="<webratio:Link link="ln15"/>">
					<input type="hidden" name="ln15_sr" value="<webratio:Link link="ln15" selectiveRefresh="true"/>">
				<input type="hidden" name="ln8g" value="<webratio:Link link="ln8g"/>">
					<input type="hidden" name="ln8g_sr" value="<webratio:Link link="ln8g" selectiveRefresh="true"/>">
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
									<li class="active"><a href="<webratio:Link escapeXml="true" link="page1.link"/>">Loyalty Program Simulator</a></li>
									<li><a href="<webratio:Link escapeXml="true" link="page2.link"/>">Manage Users</a></li>
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
					<li class="active">Loyalty Program Simulator</li>
				</ol>
			</div>
		</div>
	</div>
	<div class="container main-grid">
		<div class="row">
			<div class="col-md-12">
				<div class="page-title">
						<h1>Loyalty Program Simulator</h1>
				</div>
				<div id="main-content" role="main">
				<div class="wr-ajaxDiv" id="page1_grid_0">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page1_cell_0">
	<div class="wr-ajaxDiv" id="enu1_0">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			User Action To Perform
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="">
	    <c:set var="btFieldError"><html:errors property="enu1"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu1"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld1"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld1" class="control-label">Thematic Area *</label>
					<div class="controls">
					<html:select styleId="sfld1" styleClass="wr-submitButtons:ln6,ln15 form-control " property="sfld1" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld1List" labelProperty="sfld1LabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld1", "change", function(event) { WREvent.observe(event, "page1", "ln6", $H({"isForm": true, "pressedLink": 'button:ln6', "selectiveRefresh": true, "sourcePage": 'page1', "indicator": 'sfld1_indicator'})); });
		</script>
		<span id="sfld1_indicator" style="display: none"><img src="WRResources/ajax/jquery-ui/themes/webratio/indicator.gif"></span>
					<c:set var="btFieldError"><html:errors property="sfld1"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld2"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld2" class="control-label">Action *</label>
					<div class="controls">
					<html:select styleId="sfld2" styleClass="wr-submitButtons:ln6,ln15 form-control " property="sfld2" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld2List" labelProperty="sfld2LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld2"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld5"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld5" class="control-label">User Email *</label>
					<div class="controls">
					<html:text   styleId="fld5" styleClass="wr-submitButtons:ln6,ln15  form-control " property="fld5" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld5"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
		<div class="form-group form-btn">
					 <button title="Select User Email" onclick="return ajaxRequest('page1FormBean', $H({isForm: true, pressedLink: 'button:ln15', selectiveRefresh: true, sourcePage: 'page1'})) " class="btn  btn-default " id="button:ln15" name="button:ln15" type="submit" value="Select User Email">
			Select User Email</button>
		</div>
</div>	
	</div>
</div></div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page1_cell_12">
	<div class="wr-ajaxDiv" id="enu1_1">
<div class="EntryUnit ">
		<div class="form-group form-btn">
					 <button title="Invoke Gamification Engine" onclick="return ajaxRequest('page1FormBean', $H({isForm: true, pressedLink: 'button:ln1', selectiveRefresh: false, sourcePage: 'page1', waitingWindow: $H({message: '<bean:message key="ajax.computingRequest"/>', width: 200, height: 100, duration: 1000, className: ''})})) " class="btn  btn-default " id="button:ln1" name="button:ln1" type="submit" value="Invoke Gamification Engine">
			Invoke Gamification Engine</button>
		</div>
</div>	
</div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page1_cell_24">
	<div class="wr-ajaxDiv" id="enu1_2">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Simulate User Actions
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="">
	    <c:set var="btFieldError"><html:errors property="enu1"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu1"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld1g"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld1g" class="control-label">Gamified Application To Simulate</label>
					<div class="controls">
					<html:select styleId="sfld1g" styleClass="wr-submitButtons:ln8g form-control " property="sfld1g" disabled="false">
				    <html:options property="sfld1gList" labelProperty="sfld1gLabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld1g"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld2g_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld2g_locale" class="control-label">Number Of Actions To Simulate (default 20)</label>
					<div class="controls">
					<html:text   styleId="fld2g_locale" styleClass="wr-submitButtons:ln8g  form-control " property="fld2g_locale" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld2g_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
		<div class="form-group form-btn">
					 <button title="Simulate Users Actions" onclick="return ajaxRequest('page1FormBean', $H({isForm: true, pressedLink: 'button:ln8g', selectiveRefresh: true, sourcePage: 'page1', waitingWindow: $H({message: '<bean:message key="ajax.computingRequest"/>', width: 200, height: 100, duration: 1000, className: ''})})) " class="btn  btn-default " id="button:ln8g" name="button:ln8g" type="submit" value="Simulate Users Actions">
			Simulate Users Actions</button>
		</div>
</div>	
	</div>
</div></div>
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
		<webratio:LinkInfos page="page1"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page1" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page1"/>
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