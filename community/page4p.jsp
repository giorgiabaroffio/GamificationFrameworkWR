<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html; charset=UTF-8"%> 
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<webratio:Page page="page4p"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<html:xhtml/>
<head>
  <base href="<%=wrBaseURI%>"/> 
  <title>Users list</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <c:set var="wrAjaxDebugLevel" value="full"/>
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery", "wr-resver": "1.7.2"}-->
	<script src="<webratio:Resource path="WRResources/script.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-utils-supportscripts", "wr-resver": "7.2.6"}-->
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "jquery-ui-style", "wr-resver": "1.9.2"}-->
			</c:if>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<script src="<webratio:Resource path="WRResources/ajax/jquery-ui/jquery-ui.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery-ui", "wr-resver": "1.9.2"}-->
			</c:if>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/webratio/style.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "wr-ui-style", "wr-resver": "7.2.6"}-->
			</c:if>
			<c:if test="${(wrBoxed or wrAjaxCalling) and not(empty webratio:expandLayoutResourceContent('BUILTIN/wr-runtime', 'WRResources/ajax/webratio/', pageContext))}">
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
	<link href="<webratio:Resource path="builtin/960_Fluid_Nestable_12.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "wr-960gs-12"}-->
	<link href="<webratio:Resource path="style/css/style.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "style"}-->
	<link href="<webratio:Resource path="wrdefault/css/default.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "wrdefault-style"}-->
	<link href="<webratio:Resource path="builtin/grid_elements.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "wr-ui-gridsystem"}-->
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
			<html:form action="form_page4p.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
			<html:hidden property="lastURL" styleId="lastURL_page4p"/>
				<input type="hidden" name="ln114p" value="<webratio:Link link="ln114p"/>"/>
	<c:if test="${not webratio:isWindow(pageContext)}">
	<div class="top-bar">
		<div class="logo">
			<a href="page1q.do" title="<bean:message key="go to homepage"/>">Webratio CRM</a>
		</div>
		<div class="user-profile">
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
	<div class="lm">
		<ul>
				<li><c:if test="${webratio:isTargetAccessible('page1q.link', pageContext)}">	
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
					<li><c:if test="${webratio:isTargetAccessible('page20x.link', pageContext)}">	
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
				<li class="current"><c:if test="${webratio:isTargetAccessible('page4p.link', pageContext)}">	
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
			<h1>Users list
			</h1>
			<ul class="page-links">
			</ul>
		</div>
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
<div class="left-bar">
	<h2 class="">Search</h2>
	 <div class="plain ">
		<div class="plain EntryUnit">
		   		<table border="0" cellpadding="0" cellspacing="0">
		   			<tr>
		   				<td>
				<table>
					<tr>
						<td colspan="6" class="error">
							<html:errors property="enu1p" />
						</td>
					</tr>
			<tr>
				<th valign="middle"  class=" header">
					First Name
				</th>
				<th valign="middle"  class=" header">
					Last Name
				</th>
				<th valign="middle"  class=" header">
					Email
				</th>
			</tr>
			<tr>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<html:text  size="25" styleId="fld9p" styleClass="wr-submitButtons:ln114p  field" property="fld9p" readonly="false"/>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<html:text  size="25" styleId="fld10p" styleClass="wr-submitButtons:ln114p  field" property="fld10p" readonly="false"/>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<html:text  size="25" styleId="fld11p" styleClass="wr-submitButtons:ln114p  field" property="fld11p" readonly="false"/>
					</td>
			</tr>
				<tr>
						<td class="error"><span class=" error"><html:errors property="fld9p"/></span></td>
						<td class="error"><span class=" error"><html:errors property="fld10p"/></span></td>
						<td class="error"><span class=" error"><html:errors property="fld11p"/></span></td>
				</tr>
					</table>
						</td>
						<td valign="bottom">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('ln114p', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln114p', pageContext)}">
			<input title="Search" onclick="$('page4pFormBean').target='_self'" class="search  button"  id="button:ln114p" name="button:ln114p" type="submit" value="Search">
	</c:if>
 </td>
			</c:if>
					</tr>
				    </table>
				   </td>
			   </tr>
		  </table>
		</div>
	</div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
<c:choose>
<c:when test="${not(empty pwu6p) and (pwu6p.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">Users</h2>
		<div class=" long-menu">
			<div class=" PowerIndexUnit">
				<table class="maintable" border="0" cellspacing="0" cellpadding="0">
						<!-- begin header -->
						<thead>
						<tr class="headerRow">
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu6puserOID', pageContext)}">
		 			<a title="OID" id="pwu6puserOID" class=" sort" href="<webratio:Link link="pwu6puserOID" position="index"/>">
				<c:choose>
         			<c:when test="${pwu6p.sortMask.userOID eq 'A'}">
         				<img title="OID" alt="OID" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="OID" alt="OID" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="OID" id="pwu6puserOID" class=" sort" href="<webratio:Link link="pwu6puserOID" position="index"/>">
					OID</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt113p', pageContext)}">
		 			<a title="First Name" id="pwu6patt113p" class=" sort" href="<webratio:Link link="pwu6patt113p" position="index"/>">
				<c:choose>
         			<c:when test="${pwu6p.sortMask.att113p eq 'A'}">
         				<img title="First Name" alt="First Name" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="First Name" alt="First Name" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="First Name" id="pwu6patt113p" class=" sort" href="<webratio:Link link="pwu6patt113p" position="index"/>">
					First Name</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt114p', pageContext)}">
		 			<a title="Last Name" id="pwu6patt114p" class=" sort" href="<webratio:Link link="pwu6patt114p" position="index"/>">
				<c:choose>
         			<c:when test="${pwu6p.sortMask.att114p eq 'A'}">
         				<img title="Last Name" alt="Last Name" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Last Name" alt="Last Name" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Last Name" id="pwu6patt114p" class=" sort" href="<webratio:Link link="pwu6patt114p" position="index"/>">
					Last Name</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt56x', pageContext)}">
		 			<a title="Participation" id="pwu6patt56x" class=" sort" href="<webratio:Link link="pwu6patt56x" position="index"/>">
				<c:choose>
         			<c:when test="${pwu6p.sortMask.att56x eq 'A'}">
         				<img title="Participation" alt="Participation" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Participation" alt="Participation" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Participation" id="pwu6patt56x" class=" sort" href="<webratio:Link link="pwu6patt56x" position="index"/>">
					Participation</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt319x', pageContext)}">
		 			<a title="Participation 7 Days" id="pwu6patt319x" class=" sort" href="<webratio:Link link="pwu6patt319x" position="index"/>">
				<c:choose>
         			<c:when test="${pwu6p.sortMask.att319x eq 'A'}">
         				<img title="Participation 7 Days" alt="Participation 7 Days" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Participation 7 Days" alt="Participation 7 Days" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Participation 7 Days" id="pwu6patt319x" class=" sort" href="<webratio:Link link="pwu6patt319x" position="index"/>">
					Participation 7 Days</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt57x', pageContext)}">
		 			<a title="Total Credit" id="pwu6patt57x" class=" sort" href="<webratio:Link link="pwu6patt57x" position="index"/>">
				<c:choose>
         			<c:when test="${pwu6p.sortMask.att57x eq 'A'}">
         				<img title="Total Credit" alt="Total Credit" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Total Credit" alt="Total Credit" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Total Credit" id="pwu6patt57x" class=" sort" href="<webratio:Link link="pwu6patt57x" position="index"/>">
					Total Credit</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt96p', pageContext)}">
		 			<a title="Credits Spent" id="pwu6patt96p" class=" sort" href="<webratio:Link link="pwu6patt96p" position="index"/>">
				<c:choose>
         			<c:when test="${pwu6p.sortMask.att96p eq 'A'}">
         				<img title="Credits Spent" alt="Credits Spent" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Credits Spent" alt="Credits Spent" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Credits Spent" id="pwu6patt96p" class=" sort" href="<webratio:Link link="pwu6patt96p" position="index"/>">
					Credits Spent</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu6patt110p', pageContext)}">
		 			<a title="Credits Available" id="pwu6patt110p" class=" sort" href="<webratio:Link link="pwu6patt110p" position="index"/>">
				<c:choose>
         			<c:when test="${pwu6p.sortMask.att110p eq 'A'}">
         				<img title="Credits Available" alt="Credits Available" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Credits Available" alt="Credits Available" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Credits Available" id="pwu6patt110p" class=" sort" href="<webratio:Link link="pwu6patt110p" position="index"/>">
					Credits Available</a>
	</c:if>
					        </th>
					    	<th class="long-menu header"></th>
						</tr>
						</thead>
						<!-- end header -->
				<!-- instances -->
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu6p.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu6p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								   <td class=" value<c:if test="${pwu6p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> integer">				
										<fmt:formatNumber value="${current.OID}" pattern="${integerPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu6p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.firstName}"/>
								   </td>
								   <td class=" value<c:if test="${pwu6p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.lastName}"/>
								   </td>
								   <td class=" value<c:if test="${pwu6p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> decimal">				
										<fmt:formatNumber value="${current.participation}" pattern="${decimalPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu6p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> decimal">				
										<fmt:formatNumber value="${current.participation7Days}" pattern="${decimalPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu6p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> decimal">				
										<fmt:formatNumber value="${current.totalCredit}" pattern="${decimalPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu6p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> decimal">				
										<fmt:formatNumber value="${current.creditsSpent}" pattern="${decimalPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu6p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> integer">				
										<fmt:formatNumber value="${current.creditsAvailable}" pattern="${integerPattern}"/>
								   </td>
						    	<td class=" linkCell link<c:if test="${pwu6p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
						    		<div class="link-menu"><a href="#" class="arrow" title="Menu"><bean:message key="Menu"/></a>
						    		<ul>
			<c:if test="${webratio:isTargetAccessible('ln49p', pageContext)}">
									   		<li class="view"> <c:if test="${webratio:isTargetAccessible('ln49p', pageContext)}">
		 			<a title="View Actions History" id="ln49p" class=" link" href="<webratio:Link link="ln49p" position="index"/>">
					View Actions History</a>
	</c:if>
 </li>										
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln48p', pageContext)}">
									   		<li class="view"> <c:if test="${webratio:isTargetAccessible('ln48p', pageContext)}">
		 			<a title="View Rewards History" id="ln48p" class=" link" href="<webratio:Link link="ln48p" position="index"/>">
					View Rewards History</a>
	</c:if>
 </li>										
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln119q', pageContext)}">
									   		<li class="delete"> <c:set var="_wr_message"><bean:message key="linkConfirmMessage"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('ln119q', pageContext)}">
		 			<a title="Delete" id="ln119q" class=" link" href="<webratio:Link link="ln119q" position="index"/>" onclick="return confirm('<c:out value="${_wr_message}"/>')">
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
					<c:if test="${pwu6p.scroller.of gt 20}">
						<table class="scrolling" border="0" cellspacing="0" cellpadding="0">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu6p.scroller.current ne pwu6p.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu6pFirst', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu6pFirst" class=" scroll" href="<webratio:Link link="pwu6pFirst" position="index"/>">
					<bean:message key="PowerIndex.First"/></a>
	</c:if>
								            </c:when>
								            <c:otherwise>
								           			<span><bean:message key="PowerIndex.First"/></span>
								           		</c:otherwise>
								        </c:choose>
								    </td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu6p.scroller.current ne pwu6p.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu6pPrevious', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu6pPrevious" class=" scroll" href="<webratio:Link link="pwu6pPrevious" position="index"/>">
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu6p.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu6p.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu6p.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu6p.scroller.current ne pwu6p.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu6pNext', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu6pNext" class=" scroll" href="<webratio:Link link="pwu6pNext" position="index"/>">
					<bean:message key="PowerIndex.Next"/></a>
	</c:if>
					    		            </c:when>
						    	            <c:otherwise>
								           			<span><bean:message key="PowerIndex.Next"/></span>
						    	            </c:otherwise>
						    	        </c:choose>
								    </td>
								    <td class="scrollText">
								    	<c:choose>
					    		            <c:when test="${pwu6p.scroller.current ne pwu6p.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu6pLast', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu6pLast" class=" scroll" href="<webratio:Link link="pwu6pLast" position="index"/>">
					<bean:message key="PowerIndex.Last"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Last"/></span>
							               </c:otherwise>
							            </c:choose>
								    </td>
						   </tr>
							   <tr>  
								    <td colspan="5" class="scrollText"> 
									    <span><bean:message key="PowerIndex.Jump"/></span>
									    <c:forEach var="current" varStatus="status" items="${pwu6p.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu6p.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu6pBlock" position="index"/>"  onclick="">${current}</a>
									        </c:when>
									        <c:otherwise>
									          ${current}
									        </c:otherwise>
									      </c:choose>
									      </span>
								    	</c:forEach> 
								    </td>
							   </tr>
						 </table>
					</c:if>
			</div>
		</div>
</div>
</c:when>
<c:otherwise>
<div class="left-bar">
	<h2 class="">Users</h2>
		<div class=" long-menu">
			<div class=" PowerIndexUnit">
				<bean:message key="No results"/>
			</div>
		</div>
</div>
</c:otherwise>
</c:choose>
			</div>
				<div class="clear"></div>
</div>
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