<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"%> 
<webratio:Page page="page8"/>
<html>
<head>
  <title>Select User Email</title>
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
	<link href="<webratio:Resource path="MetroStyle/css/app.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "metro-app-css"}-->
	<link href="<webratio:Resource path="builtin/grid_elements.css"/>" type="text/css" rel="stylesheet"><!--[data] {"wr-resname": "wr-ui-gridsystem"}-->
<script type="text/javascript">if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
</head>
<body style="background-color:white">
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
			<html:form action="form_page8.do${wrAjax ? '#!ajax=true' : ''}" styleId="page8FormBean" enctype="multipart/form-data">
			<html:hidden property="lastURL" styleId="lastURL_page8"/>
				<input type="hidden" name="ln3" value="<webratio:Link link="ln3"/>">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Public User Search
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="">
	    <c:set var="btFieldError"><html:errors property="enu5"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu5"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="fld1g"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld1g" class="control-label">First Name</label>
					<div class="controls">
					<html:text   styleId="fld1g" styleClass="wr-submitButtons:ln3  form-control " property="fld1g" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld1g"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld2"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld2" class="control-label">Last Name</label>
					<div class="controls">
					<html:text   styleId="fld2" styleClass="wr-submitButtons:ln3  form-control " property="fld2" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld2"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
		<div class="form-group form-btn">
					 <button title="Search" onclick="$('#page8FormBean')[0].target='_self'" class="btn  btn-default " id="button:ln3" name="button:ln3" type="submit" value="Search">
			Search</button>
		</div>
</div>	
	</div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
<c:if test="${not(empty pwu1g) and (pwu1g.dataSize gt 0)}">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			List of Users
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
						            Last Name
					        </th>
					        <th scope="col" class="">
						            First Name
					        </th>
					        <th scope="col" class="">
						            Email
					        </th>
<th scope="col" class=" smallcol"></th> 
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu1g.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu1g.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
										<c:out value="${current.lastName}"/>
								</td>
								<td class=" string">
										<c:out value="${current.firstName}"/>
								</td>
								<td class=" string">
										<c:out value="${current.email}"/>
								</td>
									<td class=" smallcol">
										 <a title="Add Email" id="ln7g" onclick="return ajaxRequest('<webratio:Link link="ln7g" position="index"/>', $H({pressedLink: 'ln7g', sourcePage: 'page8'}))" class=" " href="<webratio:Link link="ln7g" position="index"/>">							
			Add Email</a>
									</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu1g.scroller.of gt 10}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu1g.scroller.current ne pwu1g.scroller.first}">
	     	            <li> <a title="<bean:message key="PowerIndex.First"/>" id="pwu1gFirst" class="  scroll" href="<webratio:Link link="pwu1gFirst" position="index"/>" >
			<bean:message key="PowerIndex.First"/></a>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.First"/>" id="pwu1gFirst" class="  scroll" href="<webratio:Link link="pwu1gFirst" position="index"/>" >
			<bean:message key="PowerIndex.First"/></a>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu1g.scroller.current ne pwu1g.scroller.previous}">
	     	            <li> <a title="<bean:message key="PowerIndex.Previous"/>" id="pwu1gPrevious" class="  scroll" href="<webratio:Link link="pwu1gPrevious" position="index"/>" >
			<bean:message key="PowerIndex.Previous"/></a>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.Previous"/>" id="pwu1gPrevious" class="  scroll" href="<webratio:Link link="pwu1gPrevious" position="index"/>" >
			<bean:message key="PowerIndex.Previous"/></a>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu1g.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu1g.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu1gBlock" position="index"/>"  onclick="">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu1g.scroller.current ne pwu1g.scroller.next}">
	     	            <li> <a title="<bean:message key="PowerIndex.Next"/>" id="pwu1gNext" class="  scroll" href="<webratio:Link link="pwu1gNext" position="index"/>" >
			<bean:message key="PowerIndex.Next"/></a>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.Next"/>" id="pwu1gNext" class="  scroll" href="<webratio:Link link="pwu1gNext" position="index"/>" >
			<bean:message key="PowerIndex.Next"/></a>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu1g.scroller.current ne pwu1g.scroller.last}">
	     	            <li> <a title="<bean:message key="PowerIndex.Last"/>" id="pwu1gLast" class="  scroll" href="<webratio:Link link="pwu1gLast" position="index"/>" >
			<bean:message key="PowerIndex.Last"/></a>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.Last"/>" id="pwu1gLast" class="  scroll" href="<webratio:Link link="pwu1gLast" position="index"/>" >
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
				<div class="clear"></div>
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
		<webratio:LinkInfos page="page8"/>
	</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page8"/>
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