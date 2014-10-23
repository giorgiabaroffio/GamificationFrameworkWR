<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%> 
<webratio:Page page="page2g"/>
<html>
<head>
  <title>Upload Image</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <c:set var="wrAjaxDebugLevel" value="minimal"/>
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "jquery-ui-style", "wr-resver": "1.9.2"}-->
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery", "wr-resver": "1.7.2"}-->
	<script src="<webratio:Resource path="WRResources/script.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-utils-supportscripts", "wr-resver": "7.2.6"}-->
	<script src="<webratio:Resource path="WRResources/ajax/jquery-ui/jquery-ui.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery-ui", "wr-resver": "1.9.2"}-->
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wr-ui-style", "wr-resver": "7.2.6"}-->
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext))}">
	<script src="<webratio:Resource path="${webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext)}"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-runtime", "wr-resver": "7.2.6"}-->
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
	<script src="<webratio:Resource path="MetroStyle/js/html5shiv.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "aFarkas-html5shiv"}-->
			<![endif]-->
			<!--[if lt IE 9]>
	<script src="<webratio:Resource path="MetroStyle/js/respond.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "Scott-Jehl-respond"}-->
			<![endif]-->
	<script src="<webratio:Resource path="MetroStyle/js/bootstrap.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "bootstrap-js"}-->
	<link href="<webratio:Resource path="builtin/960_Fluid_Nestable_12.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wr-960gs-12"}-->
	<script src="<webratio:Resource path="MetroStyle/js/app.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "metro-app-js"}-->
	<link href="<webratio:Resource path="wrdefault/css/default.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wrdefault-style"}-->
	<link href="<webratio:Resource path="CSS/CropImageUnit/CropImageUnit.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "CropImageUnit-style"}-->
	<link href="<webratio:Resource path="MetroStyle/css/app.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "metro-app-css"}-->
	<link href="<webratio:Resource path="builtin/grid_elements.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wr-ui-gridsystem"}-->
	<script src="<webratio:Resource path="Scripts/CropImageUnit/jquery.crop.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery-crop"}-->
<script type="text/javascript">if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
</head>
<body style="background-color:white">
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
			<html:form action="form_page2g.do${wrAjax ? '#!ajax=true' : ''}" styleId="page2gFormBean" enctype="multipart/form-data">
		<div class="wr-ajaxDiv" id="page2gHiddenFields">
			<html:hidden property="lastURL" styleId="lastURL_page2g"/>
				<input type="hidden" name="ln3g" value="<webratio:Link link="ln3g"/>">
				<input type="hidden" name="ciu4gSelect" value="<webratio:Link link="ciu4gSelect"/>">
					<input type="hidden" name="ciu4gSelect_sr" value="<webratio:Link link="ciu4gSelect" selectiveRefresh="true"/>">
		</div>
<div class="wr-ajaxDiv" id="page2g_grid_0">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page2g_cell_0">
	<div class="wr-ajaxDiv" id="ciu4g_0">
<div class="plain ">
    <div class="plain CropImageUnit">
	    <div>
		<table>
			<tr>
			  <td>
			    <script type="text/javascript" language="javascript">
			      function ciu4gPost(){
			           return ajaxRequest('page2gFormBean', $H({isForm: true, pressedLink: 'button:ciu4gSelect', selectiveRefresh: true, sourcePage: 'page2g'}))
			      }
			    </script>
			    <html:file styleId="ciu4gImage" property="ciu4gImage" onchange="return ciu4gPost()"/>
			    <span class=" error"><html:errors property="ciu4gImage"/></span>
			  </td>
			  <c:if test="${not empty(page2gFormBean.map.ciu4gPreload)}">
<td> <button title="Upload" onclick="return ajaxRequest('page2gFormBean', $H({isForm: true, pressedLink: 'button:ln3g', selectiveRefresh: false, sourcePage: 'page2g'})) " class="btn  btn-default  button" id="button:ln3g" name="button:ln3g" type="submit" value="Upload">
			Upload</button>
 </td> 
			  </c:if>
			</tr>
		 </table>
		 </div>		 
	   <c:choose>
		 <c:when test="${not empty(page2gFormBean.map.ciu4gPreload)}">
		   <html:hidden property="ciu4gPreload" styleId="ciu4gPreload"/>
		   <html:hidden property="ciu4g_area" styleId="ciu4g_area"/>
		   <html:hidden property="ciu4g_sw" styleId="ciu4g_sw"/>
		   <html:hidden property="ciu4g_sh" styleId="ciu4g_sh"/>
		   <html:hidden property="ciu4g_tw" styleId="ciu4g_tw"/>
		   <html:hidden property="ciu4g_th" styleId="ciu4g_th"/>
		   <html:hidden property="ciu4g_ar" styleId="ciu4g_ar"/>
		   <c:set var="width" value="${page2gFormBean.map.ciu4g_sw}"/>
		   <c:set var="height" value="${page2gFormBean.map.ciu4g_sh}"/>
		 <div>
		    <img id="ciu4g_crop" border="0" src="<webratio:BLOB value="${page2gFormBean.map.ciu4gPreload}"/>" width="${width}px" height="${height}px">
			<script type="text/javascript" language="javascript">
				jQuery(function(){ 
				    jQuery('#ciu4g_crop').Jcrop({
						onChange: ciu4g_showCoords,
						onSelect: ciu4g_showCoords,
						aspectRatio: ${page2gFormBean.map.ciu4g_ar},
						setSelect: [${page2gFormBean.map.ciu4g_area}]
					});
				});
				function ciu4g_showCoords(c){
					jQuery('#ciu4g_area').val(c.x + "," + c.y + "," + c.x2 + "," + c.y2);
				};	
			</script> 
		 </div>
		 </c:when>
		 <c:otherwise>
		     <div><bean:message key="CropImageUnit.noImage"/></div>
		 </c:otherwise>
	   </c:choose>
	</div>
</div>
</div>
</div>
			</div>
				<div class="clear"></div>
</div>
</div>
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
		<webratio:LinkInfos page="page2g"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page2g" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page2g"/>
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