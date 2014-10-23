<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html; charset=UTF-8"%> 
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<webratio:Page page="page20x"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<html:xhtml/>
<head>
  <base href="<%=wrBaseURI%>"/> 
  <title>Manage Action</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <c:set var="wrAjaxDebugLevel" value="full"/>
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery", "wr-resver": "1.7.2"}-->
	<script src="<webratio:Resource path="WRResources/script.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-utils-supportscripts", "wr-resver": "7.2.6"}-->
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "jquery-ui-style", "wr-resver": "1.9.2"}-->
	<script src="<webratio:Resource path="WRResources/ajax/jquery-ui/jquery-ui.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery-ui", "wr-resver": "1.9.2"}-->
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "wr-ui-style", "wr-resver": "7.2.6"}-->
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
	<link href="<webratio:Resource path="style/css/tab.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "tab"}-->
	<link href="<webratio:Resource path="style/css/style.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "style"}-->
	<link href="<webratio:Resource path="wrdefault/css/default.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "wrdefault-style"}-->
<script type="text/javascript">if (typeof wr !== "undefined") { wr.ui.html.resx.refreshLoaded(); }</script>
</head>
<body>
<c:if test="${not webratio:isWindow(pageContext)}">
<div class="body">
<div class="bg-bottom"></div>
<div class="container">
</c:if>
	<c:if test="${wrBoxed}">
		<div <c:if test="${not wrAjax}">id="wr-${wrClientAppName}" data-wr-appid="${wrClientAppName}"</c:if> class="wr-appui wr-appui-${wrClientAppName}">
	</c:if>
	<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
			<html:form action="form_page20x.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		<div class="wr-ajaxDiv" id="page20xHiddenFields">
			<html:hidden property="lastURL" styleId="lastURL_page20x"/>
		</div>
	<c:if test="${not webratio:isWindow(pageContext)}">
	<div class="top-bar">
		<div class="logo">
			<a href="page1q.do" title="<bean:message key="go to homepage"/>">Webratio CRM</a>
		</div>
		<div class="user-profile">
			<div class="wr-ajaxDiv" id="mpage2x_customlocation_0"><div class="wr-ajaxDiv" id="mpage2x_grid_0">
<div class="wr-ajaxDiv" id="mpage2x_cell_0">
	<div class="wr-ajaxDiv" id="dau6x_0">
<c:if test="${not(empty dau6x) and (dau6x.dataSize gt 0)}">
		<div class="plain userUnit ">
			<div class="plain DataUnit">
				<table>
					<tr>
						<td class=" value string">    
<c:out value="${dau6x.data.userName}"/> 
  </td>
			<c:if test="${webratio:isTargetAccessible('ln54x', pageContext)}">
						<td>
						<a href="<webratio:Link escapeXml="true" link="ln54x" position="index"/>" class="button">Logout</a>
						</td>
			</c:if>
					</tr>  
				</table> 
				<div class="clear">&nbsp;</div>
			</div>
		</div>
</c:if>
    </div>
</div>
</div></div>
		</div>
	</div>
	<div class="lm">
		<ul>
				<li class="current"><c:if test="${webratio:isTargetAccessible('page1q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page1q.link"/>">
   Gamification Area
</a>
			</c:if>
				<ul>
					<li><c:if test="${webratio:isTargetAccessible('page1q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page1q.link"/>">
   Manage Gamified Application
</a>
			</c:if>
 </li>
					<li><c:if test="${webratio:isTargetAccessible('page25q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page25q.link"/>">
   Manage Thematic Area
</a>
			</c:if>
 </li>
					<li class="current"><c:if test="${webratio:isTargetAccessible('page20x.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page20x.link"/>">
   Manage Action
</a>
			</c:if>
					</li>
					<li><c:if test="${webratio:isTargetAccessible('page4x.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page4x.link"/>">
   Manage Badge Area
</a>
			</c:if>
 </li>
					<li><c:if test="${webratio:isTargetAccessible('page22x.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page22x.link"/>">
   Manage Badge
</a>
			</c:if>
 </li>
				</ul>
				</li>
				<li><c:if test="${webratio:isTargetAccessible('page22p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page22p.link"/>">
   Rewards Area
</a>
			</c:if>
				<ul>
					<li><c:if test="${webratio:isTargetAccessible('page22p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page22p.link"/>">
   Manage Rewards
</a>
			</c:if>
 </li>
				</ul>
				</li>
				<li><c:if test="${webratio:isTargetAccessible('page4p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page4p.link"/>">
   Community Users Area
</a>
			</c:if>
				</li>
				<li><c:if test="${webratio:isTargetAccessible('page7q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page7q.link"/>">
   Administrator Users Area
</a>
			</c:if>
				</li>
				<li><c:if test="${webratio:isTargetAccessible('page36p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page36p.link"/>">
   Notification Area
</a>
			</c:if>
				<ul>
					<li><c:if test="${webratio:isTargetAccessible('page36p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page36p.link"/>">
   Text Mail
</a>
			</c:if>
 </li>
					<li><c:if test="${webratio:isTargetAccessible('page35p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page35p.link"/>">
   Manage Containers
</a>
			</c:if>
 </li>
					<li><c:if test="${webratio:isTargetAccessible('page37p.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page37p.link"/>">
   Notification Events
</a>
			</c:if>
 </li>
				</ul>
				</li>
				<li><c:if test="${webratio:isTargetAccessible('page16q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page16q.link"/>">
   Text Management Area
</a>
			</c:if>
				<ul>
					<li><c:if test="${webratio:isTargetAccessible('page16q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page16q.link"/>">
   Text Chunks
</a>
			</c:if>
 </li>
					<li><c:if test="${webratio:isTargetAccessible('page17q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page17q.link"/>">
   Text Labels
</a>
			</c:if>
 </li>
				</ul>
				</li>
		</ul>
		<div class="clear">&nbsp;</div>
	</div>
	<div class="content">
	</c:if>
		<div class="page-title<c:if test="${not webratio:isWindow(pageContext)}"> ajaxPopup</c:if>">
			<h1>Manage Action
			</h1>
			<ul class="page-links">
				<li><c:if test="${webratio:isTargetAccessible('ln34q', pageContext)}">	
 <a class="button" href="<webratio:Link link="ln34q"/>">
   Add Action
</a>
			</c:if>
 </li>
			</ul>
		</div>
		<div class="wr-ajaxDiv" id="page20x_grid_0">
<table     width="100%" >
<tr>
<td  valign="top" align="left" ><div class="wr-ajaxDiv" id="page20x_cell_0">
<div class="tab">
<ul >
<c:forEach var="current" varStatus="status" items="${inu3x.data}">
<c:set var="index" value="${status.index}"/>
<li>
<a href="<webratio:Link escapeXml="true" link="ln13x" position="index"/>" id="ln13x" title="${current.areaName}">
${current.areaName}
</a>
</li>
</c:forEach>
</ul>
</div></div></td>
</tr>
<tr>
<td  valign="top" align="left" ><div class="wr-ajaxDiv" id="page20x_cell_1">
	<div class="wr-ajaxDiv" id="pwu7x_0">
<c:choose>
<c:when test="${not(empty pwu7x) and (pwu7x.dataSize gt 0)}">
<div class="light">
	<h2 class="">List of Actions</h2>
		<div class=" ">
			<div class=" PowerIndexUnit">
				<table class="maintable" border="0" cellspacing="0" cellpadding="0">
						<!-- begin header -->
						<thead>
						<tr class="headerRow">
					        <th nowrap="nowrap" class=" header">
						            Area
					        </th>
					        <th nowrap="nowrap" class=" header">
						            Name
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt71x', pageContext)}">
		 			<a title="Description" id="pwu7xatt71x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt71x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt71x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt71x" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att71x eq 'A'}">
         				<img title="Description" alt="Description" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Description" alt="Description" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Description" id="pwu7xatt71x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt71x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt71x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt71x" position="index"/>">							
					Description</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt41x', pageContext)}">
		 			<a title="Score" id="pwu7xatt41x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt41x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt41x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt41x" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att41x eq 'A'}">
         				<img title="Score" alt="Score" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Score" alt="Score" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Score" id="pwu7xatt41x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt41x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt41x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt41x" position="index"/>">							
					Score</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt60x', pageContext)}">
		 			<a title="Participation" id="pwu7xatt60x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt60x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt60x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt60x" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att60x eq 'A'}">
         				<img title="Participation" alt="Participation" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Participation" alt="Participation" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Participation" id="pwu7xatt60x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt60x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt60x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt60x" position="index"/>">							
					Participation</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt50x', pageContext)}">
		 			<a title="Reputation" id="pwu7xatt50x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt50x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt50x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt50x" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att50x eq 'A'}">
         				<img title="Reputation" alt="Reputation" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Reputation" alt="Reputation" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Reputation" id="pwu7xatt50x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt50x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt50x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt50x" position="index"/>">							
					Reputation</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt3q', pageContext)}">
		 			<a title="Repeatable" id="pwu7xatt3q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt3q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt3q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt3q" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att3q eq 'A'}">
         				<img title="Repeatable" alt="Repeatable" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Repeatable" alt="Repeatable" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Repeatable" id="pwu7xatt3q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt3q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt3q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt3q" position="index"/>">							
					Repeatable</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt1q', pageContext)}">
		 			<a title="Check Time Elapsed" id="pwu7xatt1q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt1q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt1q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt1q" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att1q eq 'A'}">
         				<img title="Check Time Elapsed" alt="Check Time Elapsed" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Check Time Elapsed" alt="Check Time Elapsed" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Check Time Elapsed" id="pwu7xatt1q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt1q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt1q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt1q" position="index"/>">							
					Check Time Elapsed</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt2q', pageContext)}">
		 			<a title="Time Elapsed" id="pwu7xatt2q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt2q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt2q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt2q" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att2q eq 'A'}">
         				<img title="Time Elapsed" alt="Time Elapsed" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Time Elapsed" alt="Time Elapsed" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Time Elapsed" id="pwu7xatt2q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt2q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt2q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt2q" position="index"/>">							
					Time Elapsed</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt9q', pageContext)}">
		 			<a title="Active" id="pwu7xatt9q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt9q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt9q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt9q" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att9q eq 'A'}">
         				<img title="Active" alt="Active" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Active" alt="Active" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Active" id="pwu7xatt9q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt9q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt9q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt9q" position="index"/>">							
					Active</a>
	</c:if>
					        </th>
					    	<th class=" header"></th>
						</tr>
						</thead>
						<!-- end header -->
				<!-- instances -->
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu7x.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.area}"/>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.name}"/>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.description}"/>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> decimal">				
										<fmt:formatNumber value="${current.score}" pattern="${decimalPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> boolean">				
										<c:if test="${not(empty current.participation)}">
  <c:choose>
    <c:when test="${current.participation}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> boolean">				
										<c:if test="${not(empty current.reputation)}">
  <c:choose>
    <c:when test="${current.reputation}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> boolean">				
										<c:if test="${not(empty current.repeatable)}">
  <c:choose>
    <c:when test="${current.repeatable}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> boolean">				
										<c:if test="${not(empty current.checkTimeElapsed)}">
  <c:choose>
    <c:when test="${current.checkTimeElapsed}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> integer">				
										<fmt:formatNumber value="${current.timeElapsed}" pattern="${integerPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> boolean">				
										<c:if test="${not(empty current.active)}">
  <c:choose>
    <c:when test="${current.active}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								   </td>
						    	<td class=" linkCell link<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
						    		<div class="link-menu"><a href="#" class="arrow" title="Menu"><bean:message key="Menu"/></a>
						    		<ul>
			<c:if test="${webratio:isTargetAccessible('ln12x', pageContext)}">
									   		<li class="modify"> <c:if test="${webratio:isTargetAccessible('ln12x', pageContext)}">
		 			<a title="Modify" id="ln12x" class=" link" href="<webratio:Link link="ln12x" position="index"/>">
					Modify</a>
	</c:if>
 </li>										
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln61q', pageContext)}">
									   		<li class="delete"> <c:set var="_wr_message"><bean:message key="linkConfirmMessage"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('ln61q', pageContext)}">
		 			<a title="Delete" id="ln61q" onclick=" var c = confirm('<c:out value="${_wr_message}"/>'); if (c) { return ajaxRequest('<webratio:Link link="ln61q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln61q', sourcePage: 'page20x'})) }  return c; " class=" link" href="<webratio:Link link="ln61q" position="index"/>">							
					Delete</a>
	</c:if>
 </li>										
			</c:if>
						    		</ul>
						    		</div>
						    	</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
</div>
</c:when>
<c:otherwise>
<div class="light">
	<h2 class="">List of Actions</h2>
		<div class=" ">
			<div class=" PowerIndexUnit">
				<bean:message key="No results"/>
			</div>
		</div>
</div>
</c:otherwise>
</c:choose>
</div>
</div></td>
</tr>
</table></div>
	<c:if test="${not webratio:isWindow(pageContext)}"></div></c:if>
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
		<webratio:LinkInfos page="page20x"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page20x" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page20x"/>
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
<c:if test="${not webratio:isWindow(pageContext)}">	
    <div class="wr-footer">
      <span>generated by</span>
      <a target="_blank" title="WebRatio | Business Agility and IT Standards for building your custom enterprise applications" href="http://www.webratio.com"><span class="blu">Web</span><img style="width: 8px; height: 8px; border: 0px;" alt="Generated by WebRatio" src="style/img/GeneratedByWebRatio.png" /><span class="red">Ratio</span></a><sup>&reg;</sup>
    </div>
	<div class="clear">&nbsp;</div>       
</div>
</div>
</c:if>
</body>
</html>