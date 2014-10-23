<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html; charset=UTF-8"%> 
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<webratio:Page page="page16q"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<html:xhtml/>
<head>
  <base href="<%=wrBaseURI%>"/> 
  <title>Text Chunks</title>
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
			<html:form action="form_page16q.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		<div class="wr-ajaxDiv" id="page16qHiddenFields">
			<html:hidden property="lastURL" styleId="lastURL_page16q"/>
				<input type="hidden" name="ln221q" value="<webratio:Link link="ln221q"/>"/>
				<input type="hidden" name="ln222q" value="<webratio:Link link="ln222q"/>"/>
					<input type="hidden" name="ln222q_sr" value="<webratio:Link link="ln222q" selectiveRefresh="true"/>"/>
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
				<li class="current"><c:if test="${webratio:isTargetAccessible('page16q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page16q.link"/>">
   Text Management Area
</a>
			</c:if>
				<ul>
					<li class="current"><c:if test="${webratio:isTargetAccessible('page16q.link', pageContext)}">	
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
			<h1>Text Chunks
			</h1>
			<ul class="page-links">
			</ul>
		</div>
		<div class="wr-ajaxDiv" id="page16q_grid_0">
<div class="container_12">
			<div class="grid_4 prefix_8 alpha omega agrd_8">
				<div class="wr-ajaxDiv" id="page16q_cell_8">
	<div class="wr-ajaxDiv" id="enu8q_0">
<div class="left-bar">
	<h2 class="">Language</h2>
	 <div class="plain ">
		<div class="plain EntryUnit">
		   		<table border="0" cellpadding="0" cellspacing="0">
		   			<tr>
		   				<td>
				<table>
					<tr>
						<td colspan="3" class="error">
							<html:errors property="enu8q" />
						</td>
					</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								language
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld19q" styleClass="wr-submitButtons:ln222q  selectionfield" property="sfld19q" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld19qList" labelProperty="sfld19qLabelList"/>
			</html:select><script type="text/javascript">
			WREventUtils.observe("sfld19q", "change", function(event) { WREvent.observe(event, "page16q", "ln222q", $H({"isForm": true, "pressedLink": 'button:ln222q', "selectiveRefresh": true, "sourcePage": 'page16q'})); });
		</script>
						</td>
						    </tr>
							<tr><td></td>
								<td class="error"><span class=" error"><html:errors property="sfld19q"/></span></td>
					 	</tr>
					</table>
						</td>
						<td valign="bottom">
					<table>
				      <tr>
					</tr>
				    </table>
				   </td>
			   </tr>
		  </table>
		</div>
	</div>
</div>
</div>
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page16q_cell_12">
	<div class="wr-ajaxDiv" id="pwu6q_0">
<c:choose>
<c:when test="${not(empty pwu6q) and (pwu6q.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">Chunks</h2>
		<div class=" ">
			<div class=" PowerIndexUnit">
				<table class="maintable" border="0" cellspacing="0" cellpadding="0">
						<!-- begin header -->
						<thead>
						<tr class="headerRow">
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu6qatt16p', pageContext)}">
		 			<a title="Key" id="pwu6qatt16p" onclick="return ajaxRequest('<webratio:Link link="pwu6qatt16p" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qatt16p', sourcePage: 'page16q'}))" class=" sort" href="<webratio:Link link="pwu6qatt16p" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu6q.sortMask.att16p eq 'A'}">
         				<img title="Key" alt="Key" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Key" alt="Key" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Key" id="pwu6qatt16p" onclick="return ajaxRequest('<webratio:Link link="pwu6qatt16p" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qatt16p', sourcePage: 'page16q'}))" class=" sort" href="<webratio:Link link="pwu6qatt16p" position="index"/>">							
					Key</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						            Message
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln223q', pageContext)}">
<th class=" header"></th> 
			</c:if>
						</tr>
						</thead>
						<!-- end header -->
				<!-- instances -->
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu6q.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu6q.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								   <td class=" value<c:if test="${pwu6q.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.key}"/>
								   </td>
								   <td class=" value<c:if test="${pwu6q.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> text">				
										<c:out value="${current.message}" escapeXml="false"/>
								   </td>
			<c:if test="${webratio:isTargetAccessible('ln223q', pageContext)}">
									<td class=" linkCell value<c:if test="${pwu6q.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
										<c:choose>
							   				<c:when test="${pwu6q.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:isTargetAccessible('ln223q', pageContext)}">
		 			<a title="Edit" id="ln223q" class=" linkCurrentAlternate" href="<webratio:Link link="ln223q" position="index"/>">
					Edit</a>
	</c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:isTargetAccessible('ln223q', pageContext)}">
		 			<a title="Edit" id="ln223q" class=" linkCurrent" href="<webratio:Link link="ln223q" position="index"/>">
					Edit</a>
	</c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:isTargetAccessible('ln223q', pageContext)}">
		 			<a title="Edit" id="ln223q" class=" linkAlternate" href="<webratio:Link link="ln223q" position="index"/>">
					Edit</a>
	</c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:isTargetAccessible('ln223q', pageContext)}">
		 			<a title="Edit" id="ln223q" class=" link" href="<webratio:Link link="ln223q" position="index"/>">
					Edit</a>
	</c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
			</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
					<c:if test="${pwu6q.scroller.of gt 20}">
						<table class="scrolling" border="0" cellspacing="0" cellpadding="0">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu6q.scroller.current ne pwu6q.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu6qFirst', pageContext)}">
			 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu6qFirst" onclick="return ajaxRequest('<webratio:Link link="pwu6qFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qFirst', sourcePage: 'page16q'}))" class=" scroll" href="<webratio:Link link="pwu6qFirst" position="index"/>">							
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
							                <c:when test="${pwu6q.scroller.current ne pwu6q.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu6qPrevious', pageContext)}">
			 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu6qPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu6qPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qPrevious', sourcePage: 'page16q'}))" class=" scroll" href="<webratio:Link link="pwu6qPrevious" position="index"/>">							
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
							    <td class="scrollText" nowrap>${pwu6q.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu6q.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu6q.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu6q.scroller.current ne pwu6q.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu6qNext', pageContext)}">
			 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu6qNext" onclick="return ajaxRequest('<webratio:Link link="pwu6qNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qNext', sourcePage: 'page16q'}))" class=" scroll" href="<webratio:Link link="pwu6qNext" position="index"/>">							
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
					    		            <c:when test="${pwu6q.scroller.current ne pwu6q.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu6qLast', pageContext)}">
			 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu6qLast" onclick="return ajaxRequest('<webratio:Link link="pwu6qLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6qLast', sourcePage: 'page16q'}))" class=" scroll" href="<webratio:Link link="pwu6qLast" position="index"/>">							
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
</div>
</c:when>
<c:otherwise>
<div class="left-bar">
	<h2 class="">Chunks</h2>
		<div class=" ">
			<div class=" PowerIndexUnit">
				<bean:message key="No results"/>
			</div>
		</div>
</div>
</c:otherwise>
</c:choose>
</div>
</div>
			</div>
				<div class="clear"></div>
</div>
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
	<script type="application/json" class="wr-linkInfos">
		<webratio:LinkInfos page="page16q"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page16q" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page16q"/>
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