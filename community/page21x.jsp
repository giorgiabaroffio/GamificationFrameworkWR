<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html; charset=UTF-8"%> 
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<webratio:Page page="page21x"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<html:xhtml/>
<head>
  <base href="<%=wrBaseURI%>"/> 
  <title>Manage Actions</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <c:set var="wrAjaxDebugLevel" value="full"/>
			<c:if test="${(wrBoxed or wrAjaxCalling)}">
	<link href="<webratio:Resource path="WRResources/ajax/jquery-ui/themes/smoothness/jquery-ui.min.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "jquery-ui-style", "wr-resver": "1.9.2"}-->
			</c:if>
	<script src="<webratio:Resource path="WRResources/ajax/jquery/jquery.min.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery", "wr-resver": "1.7.2"}-->
	<script src="<webratio:Resource path="WRResources/script.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-utils-supportscripts", "wr-resver": "7.2.6"}-->
	<link href="<webratio:Resource path="style/css/tab_small.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "small-tab"}-->
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
			<html:form action="form_page21x.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
			<html:hidden property="lastURL" styleId="lastURL_page21x"/>
				<input type="hidden" name="ln207x" value="<webratio:Link link="ln207x"/>"/>
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
			<h1>Manage Actions
			<i><u><c:out value="${var18x[0]}" /></i></u> Area:<i><u><c:out value="${var20x[0]}" /></i></u> Needed Score:<i><u><c:out value="${var19x[0]}" /></i></u>
			</h1>
			<ul class="page-links">
			</ul>
		</div>
<div class="container_12">
			<div class="grid_6 alpha agrd_12">
<div class="left-bar">
	<h2 class="">All Reputation Actions</h2>
<div class="tab">
<ul >
<c:forEach var="current" varStatus="status" items="${inu18x.data}">
<c:set var="index" value="${status.index}"/>
<li>
<a href="<webratio:Link escapeXml="true" link="ln200x" position="index"/>" id="ln200x" title="${current.area}">
${current.area}
</a>
</li>
</c:forEach>
</ul>
</div>
<c:choose>
<c:when test="${not(empty mciu1x) and (mciu1x.dataSize gt 0)}">
		<div class="plain plainNotInline" style="clear:both; display:block;">
			<div class="plain MultiChoiceIndexUnit">
				<table class="maintable">
					<tr>
						<td colspan="2" class="error"><html:errors property="mciu1xChecked" /></td>
					</tr>
					<tr>
						<td>
							<table class="maintable" border="0" cellspacing="0" cellpadding="0">
								<tr class="headerRow">
									<th class="plainNotInline header"/>
                                          <th nowrap="nowrap" class=" header">Name</th>
                                          <th nowrap="nowrap" class=" header">Description</th>
                                          <th nowrap="nowrap" class=" header">Score</th>
								</tr>
							<c:forEach var="current" varStatus="status" items="${mciu1x.data}">
								<c:set var="index" value="${status.index}" />
									<tr class="row<c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
										<td>
											<html:multibox value="${mciu1x.key[index]}" styleId="mciu1x_1075816_${index}" property="mciu1xChecked" styleClass="checkBox"><c:out value="${mciu1x.key[index]}"/></html:multibox>
										</td>
										  <td class=" value<c:if test="${index mod 2 eq 0}">Alternate</c:if> string"><c:out value="${current.name}"/></td>
										  <td class=" value<c:if test="${index mod 2 eq 0}">Alternate</c:if> string"><c:out value="${current.description}"/></td>
										  <td class=" value<c:if test="${index mod 2 eq 0}">Alternate</c:if> decimal"><fmt:formatNumber value="${current.score}" pattern="${decimalPattern}"/></td>
			<c:if test="${webratio:isTargetAccessible('ln207x', pageContext)}">
			</c:if>
								</tr>
							</c:forEach>
							</table>
								<table>
									<tr>
			<c:if test="${webratio:isTargetAccessible('ln207x', pageContext)}">
													<td> <c:if test="${webratio:isTargetAccessible('ln207x', pageContext)}">
			<input title="Add" onclick="$('page21xFormBean').target='_self'" class="add  button"  style="background-image:url('style/img/Add.png'); background-position: left; background-repeat: no-repeat; padding-left: 20px;" id="button:ln207x" name="button:ln207x" type="submit" value="Add">
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
</c:when>
<c:otherwise>
		<div class="plain plainNotInline">
			<div class="plain MultiChoiceIndexUnit">
				<table>
				    <tr>
				      <td><bean:message key="actionAlreadyInvolved"/></td>
				    </tr>
				</table>
			</div>
		</div>
</c:otherwise>
</c:choose>
<c:if test="${not(empty scu25x) and (scu25x.dataSize gt 0) and scu25x.scroller.of gt 10}">
		<div style="text-align:center; margin-top: 18px;">
	<table class="tabscroll">
							<tr> 
	                                <td class="scroll_fl">
			<c:if test="${webratio:isTargetAccessible('scu25xFirst', pageContext)}">
	                                        <c:choose>
	                                            <c:when test="${scu25x.scroller.current ne scu25x.scroller.first}">
	                                                 <c:if test="${webratio:isTargetAccessible('scu25xFirst', pageContext)}">
			 			<a title="<bean:message key="Scroller.First"/>" id="scu25xFirst" class=" scroll_fl" href="<webratio:Link link="scu25xFirst" position="index"/>">
						<img title="<bean:message key="Scroller.First"/>" alt="<bean:message key="Scroller.First"/>" src="style/img/Scroller.First.png" border="0"/>
					</a>
	</c:if>
	                                            </c:when>
	                                                  <c:otherwise>
	                                                                <img src="style/img/Scroller.First.png" border="0"/>
	                                            </c:otherwise>
	                                        </c:choose>
			</c:if>
	                                </td>
	                                <td class="scrollText">
			<c:if test="${webratio:isTargetAccessible('scu25xPrevious', pageContext)}">
	                                        <c:choose>
	                                            <c:when test="${scu25x.scroller.current ne scu25x.scroller.previous}">
	                                                 <c:if test="${webratio:isTargetAccessible('scu25xPrevious', pageContext)}">
			 			<a title="<bean:message key="Scroller.Previous"/>" id="scu25xPrevious" class=" scroll" href="<webratio:Link link="scu25xPrevious" position="index"/>">
						<img title="<bean:message key="Scroller.Previous"/>" alt="<bean:message key="Scroller.Previous"/>" src="style/img/Scroller.Previous.png" border="0"/>
					</a>
	</c:if>
	                                            </c:when>
	                                            <c:otherwise>
	                                                                <img src="style/img/Scroller.Previous.png" class="freccie"/>
	                                            </c:otherwise>
	                                        </c:choose>
			</c:if>
	                                </td>
                                <td colspan="5" class="scrollTesto"> 
			<c:if test="${webratio:isTargetAccessible('scu25xBlock', pageContext)}">
	                                        <c:forEach var="current" varStatus="status" items="${scu25x.scroller.blocks}">
	                                            <c:set var="index" value="${status.index}"/>
	                                            <span class="jump">
	                                                <c:choose>
	                                                    <c:when test="${current ne scu25x.scroller.current}">
	                                                    <c:choose>
	                                                      <c:when test="${current lt 3}">
	                                                      </c:when>
	                                                    </c:choose>
	                                                        <a class=" link" href="<webratio:Link escapeXml="true" link="scu25xBlock" position="index"/>" onclick="">${current}</a>
	                                                    </c:when>
	                                                    <c:otherwise>
	                                                        ${current}
	                                                    </c:otherwise>
	                                                </c:choose>
	                                            </span>
	                                        </c:forEach> 
			</c:if>
	                                </td>
	                                <td class="scrollText">
			<c:if test="${webratio:isTargetAccessible('scu25xNext', pageContext)}">
	                                        <c:choose>
	                                            <c:when test="${scu25x.scroller.current ne scu25x.scroller.next}">
	                                                 <c:if test="${webratio:isTargetAccessible('scu25xNext', pageContext)}">
			 			<a title="<bean:message key="Scroller.Next"/>" id="scu25xNext" class=" scroll" href="<webratio:Link link="scu25xNext" position="index"/>">
						<img title="<bean:message key="Scroller.Next"/>" alt="<bean:message key="Scroller.Next"/>" src="style/img/Scroller.Next.png" border="0"/>
					</a>
	</c:if>
	                                            </c:when>
	                                            <c:otherwise>
	                                                                <img src="style/img/Scroller.Next.png" class="freccie"/>
	                                            </c:otherwise>
	                                        </c:choose>
			</c:if>
	                                </td>
	                                <td class="scroll_fl">
			<c:if test="${webratio:isTargetAccessible('scu25xLast', pageContext)}">
	                                        <c:choose>
	                                            <c:when test="${scu25x.scroller.current ne scu25x.scroller.last}">
	                                                 <c:if test="${webratio:isTargetAccessible('scu25xLast', pageContext)}">
			 			<a title="<bean:message key="Scroller.Last"/>" id="scu25xLast" class=" scroll_fl" href="<webratio:Link link="scu25xLast" position="index"/>">
						<img title="<bean:message key="Scroller.Last"/>" alt="<bean:message key="Scroller.Last"/>" src="style/img/Scroller.Last.png" border="0"/>
					</a>
	</c:if>
	                                            </c:when>
	                                            <c:otherwise>
	                                                                <img src="style/img/Scroller.Last.png" border="0"/>
	                                            </c:otherwise>
	                                        </c:choose>
			</c:if>
	                                </td>
                            </tr>
	</table>
</div>
</c:if>
</div>
			</div>
			<div class="grid_6 omega agrd_12">
<div class="left-bar">
	<h2 class="">Involved Actions Associated</h2>
<c:choose>
<c:when test="${not(empty pwu8x) and (pwu8x.dataSize gt 0)}">
		<div class=" ">
			<div class=" PowerIndexUnit">
				<table class="maintable" border="0" cellspacing="0" cellpadding="0">
						<!-- begin header -->
						<thead>
						<tr class="headerRow">
							<th class=" header"></th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu8xatt39x', pageContext)}">
		 			<a title="Name" id="pwu8xatt39x" class=" sort" href="<webratio:Link link="pwu8xatt39x" position="index"/>">
				<c:choose>
         			<c:when test="${pwu8x.sortMask.att39x eq 'A'}">
         				<img title="Name" alt="Name" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Name" alt="Name" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Name" id="pwu8xatt39x" class=" sort" href="<webratio:Link link="pwu8xatt39x" position="index"/>">
					Name</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						            Description
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu8xatt41x', pageContext)}">
		 			<a title="Score" id="pwu8xatt41x" class=" sort" href="<webratio:Link link="pwu8xatt41x" position="index"/>">
				<c:choose>
         			<c:when test="${pwu8x.sortMask.att41x eq 'A'}">
         				<img title="Score" alt="Score" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Score" alt="Score" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Score" id="pwu8xatt41x" class=" sort" href="<webratio:Link link="pwu8xatt41x" position="index"/>">
					Score</a>
	</c:if>
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln218x', pageContext)}">
<th class=" header"></th> 
			</c:if>
						</tr>
						</thead>
						<!-- end header -->
				<!-- instances -->
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu8x.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu8x.currentIndex eq index}">Current</c:if>">	
								<td class=" value<c:if test="${pwu8x.currentIndex eq index}">Current</c:if>">
									<img src="WRResources/spacer.gif" class="bullet<c:if test="${pwu8x.currentIndex eq index}">Current</c:if>" border="0" alt="Delete"/>
								</td>
								   <td class=" value<c:if test="${pwu8x.currentIndex eq index}">Current</c:if> string">				
										<c:out value="${current.name}"/>
								   </td>
								   <td class=" value<c:if test="${pwu8x.currentIndex eq index}">Current</c:if> string">				
										<c:out value="${current.description}"/>
								   </td>
								   <td class=" value<c:if test="${pwu8x.currentIndex eq index}">Current</c:if> decimal">				
										<fmt:formatNumber value="${current.score}" pattern="${decimalPattern}"/>
								   </td>
			<c:if test="${webratio:isTargetAccessible('ln218x', pageContext)}">
									<td class=" linkCell value<c:if test="${pwu8x.currentIndex eq index}">Current</c:if>">
										<c:choose>
							   				<c:when test="${pwu8x.currentIndex eq index}">
													 <c:if test="${webratio:isTargetAccessible('ln218x', pageContext)}">
			 			<a title="Delete" id="ln218x" class=" linkCurrent" href="<webratio:Link link="ln218x" position="index"/>">
						<img title="Delete" alt="Delete" src="style/img/Delete.png" border="0"/>
					</a>
	</c:if>
							   				</c:when>
							   				<c:otherwise>
													 <c:if test="${webratio:isTargetAccessible('ln218x', pageContext)}">
			 			<a title="Delete" id="ln218x" class=" link" href="<webratio:Link link="ln218x" position="index"/>">
						<img title="Delete" alt="Delete" src="style/img/Delete.png" border="0"/>
					</a>
	</c:if>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
			</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
					<c:if test="${pwu8x.scroller.of gt 10}">
						<table class="scrolling" border="0" cellspacing="0" cellpadding="0">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu8x.scroller.current ne pwu8x.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu8xFirst', pageContext)}">
			 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu8xFirst" class=" scroll" href="<webratio:Link link="pwu8xFirst" position="index"/>">
						<img title="<bean:message key="PowerIndex.First"/>" alt="<bean:message key="PowerIndex.First"/>" src="style/img/PowerIndex.First.png" border="0"/>
					</a>
	</c:if>
								            </c:when>
								            <c:otherwise>
								            		<table cellspacing="0" cellpadding="0">
														<tr>
															<td valign="middle">
																<img src="style/img/PowerIndex.First.png" border="0"/>
															</td>
														</tr>
													</table>
								           		</c:otherwise>
								        </c:choose>
								    </td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu8x.scroller.current ne pwu8x.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu8xPrevious', pageContext)}">
			 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu8xPrevious" class=" scroll" href="<webratio:Link link="pwu8xPrevious" position="index"/>">
						<img title="<bean:message key="PowerIndex.Previous"/>" alt="<bean:message key="PowerIndex.Previous"/>" src="style/img/PowerIndex.Previous.png" border="0"/>
					</a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								            		<table cellspacing="0" cellpadding="0">
														<tr>
															<td valign="middle">
																<img src="style/img/PowerIndex.Previous.png" border="0"/>
															</td>
														</tr>
													</table>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu8x.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu8x.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu8x.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu8x.scroller.current ne pwu8x.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu8xNext', pageContext)}">
			 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu8xNext" class=" scroll" href="<webratio:Link link="pwu8xNext" position="index"/>">
						<img title="<bean:message key="PowerIndex.Next"/>" alt="<bean:message key="PowerIndex.Next"/>" src="style/img/PowerIndex.Next.png" border="0"/>
					</a>
	</c:if>
					    		            </c:when>
						    	            <c:otherwise>
								            		<table cellspacing="0" cellpadding="0">
														<tr>
															<td valign="middle">
																<img src="style/img/PowerIndex.Next.png" border="0"/>
															</td>
														</tr>
													</table>
						    	            </c:otherwise>
						    	        </c:choose>
								    </td>
								    <td class="scrollText">
								    	<c:choose>
					    		            <c:when test="${pwu8x.scroller.current ne pwu8x.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu8xLast', pageContext)}">
			 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu8xLast" class=" scroll" href="<webratio:Link link="pwu8xLast" position="index"/>">
						<img title="<bean:message key="PowerIndex.Last"/>" alt="<bean:message key="PowerIndex.Last"/>" src="style/img/PowerIndex.Last.png" border="0"/>
					</a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								            		<table cellspacing="0" cellpadding="0">
														<tr>
															<td valign="middle">
																<img src="style/img/PowerIndex.Last.png" border="0"/>
															</td>
														</tr>
													</table>
							               </c:otherwise>
							            </c:choose>
								    </td>
						   </tr>
						 </table>
					</c:if>
			</div>
		</div>
</c:when>
<c:otherwise>
		<div class=" ">
			<div class=" PowerIndexUnit">
				<bean:message key="noActionBadge"/>
			</div>
		</div>
</c:otherwise>
</c:choose>
		<c:if test="${webratio:evaluateCondition('cexpr5x', null, pageContext)}"><c:if test="${webratio:isTargetAccessible('ln232x', pageContext)}">
				<input title="Delete All" id="ln232x" class="delete button"  type="button" value="Delete All" onclick="setWindowLocation('<webratio:Link link="ln232x" position="index"/>')">
	</c:if></c:if>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_6 suffix_6 alpha omega agrd_12">
	<c:if test="${webratio:isTargetAccessible('ln231x', pageContext)}">
				<input title="Back" id="ln231x" class="back button"  type="button" value="Back" onclick="setWindowLocation('<webratio:Link link="ln231x" position="index"/>')">
	</c:if>
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