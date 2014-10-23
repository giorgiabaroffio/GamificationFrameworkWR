<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html; charset=UTF-8"%> 
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<webratio:Page page="page17q"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<html:xhtml/>
<head>
  <base href="<%=wrBaseURI%>"/> 
  <title>Text Labels</title>
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
			<html:form action="form_page17q.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		<div class="wr-ajaxDiv" id="page17qHiddenFields">
			<html:hidden property="lastURL" styleId="lastURL_page17q"/>
				<input type="hidden" name="ln224q" value="<webratio:Link link="ln224q"/>"/>
				<input type="hidden" name="ln225q" value="<webratio:Link link="ln225q"/>"/>
					<input type="hidden" name="ln225q_sr" value="<webratio:Link link="ln225q" selectiveRefresh="true"/>"/>
				<input type="hidden" name="ln227q" value="<webratio:Link link="ln227q"/>"/>
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
					<li><c:if test="${webratio:isTargetAccessible('page16q.link', pageContext)}">	
 <a class="" href="<webratio:Link link="page16q.link"/>">
   Text Chunks
</a>
			</c:if>
 </li>
					<li class="current"><c:if test="${webratio:isTargetAccessible('page17q.link', pageContext)}">	
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
			<h1>Text Labels
			</h1>
			<ul class="page-links">
			</ul>
		</div>
		<div class="wr-ajaxDiv" id="page17q_grid_0">
<div class="container_12">
			<div class="grid_4 prefix_8 alpha omega agrd_8">
				<div class="wr-ajaxDiv" id="page17q_cell_8">
	<div class="wr-ajaxDiv" id="enu10q_0">
<div class="left-bar">
	<h2 class="">Search</h2>
	 <div class="plain ">
		<div class="plain EntryUnit">
		   		<table border="0" cellpadding="0" cellspacing="0">
		   			<tr>
		   				<td>
				<table>
					<tr>
						<td colspan="3" class="error">
							<html:errors property="enu10q" />
						</td>
					</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								language
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld20q" styleClass="wr-submitButtons:ln224q  selectionfield" property="sfld20q" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld20qList" labelProperty="sfld20qLabelList"/>
			</html:select><script type="text/javascript">
			WREventUtils.observe("sfld20q", "change", function(event) { WREvent.observe(event, "page17q", "ln225q", $H({"isForm": true, "pressedLink": 'button:ln225q', "selectiveRefresh": true, "sourcePage": 'page17q'})); });
		</script>
						</td>
						    </tr>
							<tr><td></td>
								<td class="error"><span class=" error"><html:errors property="sfld20q"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Key
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:text  size="25" styleId="fld26q" styleClass="wr-submitButtons:ln224q  field" property="fld26q" readonly="false"/>
						</td>
						    </tr>
							<tr><td></td>
								<td class="error"><span class=" error"><html:errors property="fld26q"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Message
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:text  size="25" styleId="fld27q" styleClass="wr-submitButtons:ln224q  field" property="fld27q" readonly="false"/>
						</td>
						    </tr>
							<tr><td></td>
								<td class="error"><span class=" error"><html:errors property="fld27q"/></span></td>
					 	</tr>
					</table>
						</td>
						<td valign="bottom">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('ln224q', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln224q', pageContext)}">
			<input title="Search" onclick="$('page17qFormBean').target='_self'" class="search  button"  id="button:ln224q" name="button:ln224q" type="submit" value="Search">
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
</div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page17q_cell_12">
	<div class="wr-ajaxDiv" id="page17q_grid_1">
<div class="wr-ajaxDiv" id="page17q_cell_13">
<div class="left-bar">
	<h2 class="">Labels</h2>
		<div class="wr-ajaxDiv" id="scu10q_0">
<c:choose>
<c:when test="${not(empty scu10q) and (scu10q.dataSize gt 0) and scu10q.scroller.of gt 20}">
		<div class="plain ">
			<div class="plain ScrollerUnit">
				 <table border="0" cellspacing="1" cellpadding="2">
				   <tr> 
						    <td class="scrollText">
						        <c:choose>
						            <c:when test="${scu10q.scroller.current ne scu10q.scroller.first}">
					     	             <c:if test="${webratio:isTargetAccessible('scu10qFirst', pageContext)}">
			 			<a title="<bean:message key="Scroller.First"/>" id="scu10qFirst" onclick="return ajaxRequest('<webratio:Link link="scu10qFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qFirst', sourcePage: 'page17q'}))" class=" scroll" href="<webratio:Link link="scu10qFirst" position="index"/>">							
						<img title="<bean:message key="Scroller.First"/>" alt="<bean:message key="Scroller.First"/>" src="style/img/Scroller.First.png" border="0"/>
					</a>
		 			<a title="<bean:message key="Scroller.First"/>" id="scu10qFirst" onclick="return ajaxRequest('<webratio:Link link="scu10qFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qFirst', sourcePage: 'page17q'}))" class=" scroll" href="<webratio:Link link="scu10qFirst" position="index"/>">							
					<bean:message key="Scroller.First"/></a>
	</c:if>
						            </c:when>
						            <c:otherwise>
						            		<table cellspacing="0" cellpadding="0">
												<tr>
													<td valign="middle">
														<img src="style/img/Scroller.First.png" border="0"/>
													</td>
													<td>
														<bean:message key="Scroller.First"/>
													</td>
												</tr>
											</table>
						           		</c:otherwise>
						        </c:choose>
						    </td>
						    <td class="scrollText">
						        <c:choose>
					                <c:when test="${scu10q.scroller.current ne scu10q.scroller.previous}">
						    	         <c:if test="${webratio:isTargetAccessible('scu10qPrevious', pageContext)}">
			 			<a title="<bean:message key="Scroller.Previous"/>" id="scu10qPrevious" onclick="return ajaxRequest('<webratio:Link link="scu10qPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qPrevious', sourcePage: 'page17q'}))" class=" scroll" href="<webratio:Link link="scu10qPrevious" position="index"/>">							
						<img title="<bean:message key="Scroller.Previous"/>" alt="<bean:message key="Scroller.Previous"/>" src="style/img/Scroller.Previous.png" border="0"/>
					</a>
		 			<a title="<bean:message key="Scroller.Previous"/>" id="scu10qPrevious" onclick="return ajaxRequest('<webratio:Link link="scu10qPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qPrevious', sourcePage: 'page17q'}))" class=" scroll" href="<webratio:Link link="scu10qPrevious" position="index"/>">							
					<bean:message key="Scroller.Previous"/></a>
	</c:if>
					                </c:when>
					                <c:otherwise>
						            		<table cellspacing="0" cellpadding="0">
												<tr>
													<td valign="middle">
														<img src="style/img/Scroller.Previous.png" border="0"/>
													</td>
													<td>
														<bean:message key="Scroller.Previous"/>
													</td>
												</tr>
											</table>
						           	</c:otherwise>
					            </c:choose>
						    </td>
					    <td class="scrollText" nowrap>${scu10q.scroller.from} <bean:message key="Scroller.To"/> ${scu10q.scroller.to} <bean:message key="Scroller.Of"/> ${scu10q.scroller.of}</td>
						    <td class="nextLink">
						        <c:choose>
					                <c:when test="${scu10q.scroller.current ne scu10q.scroller.next}">
			    			    	     <c:if test="${webratio:isTargetAccessible('scu10qNext', pageContext)}">
			 			<a title="<bean:message key="Scroller.Next"/>" id="scu10qNext" onclick="return ajaxRequest('<webratio:Link link="scu10qNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qNext', sourcePage: 'page17q'}))" class=" scroll" href="<webratio:Link link="scu10qNext" position="index"/>">							
						<img title="<bean:message key="Scroller.Next"/>" alt="<bean:message key="Scroller.Next"/>" src="style/img/Scroller.Next.png" border="0"/>
					</a>
		 			<a title="<bean:message key="Scroller.Next"/>" id="scu10qNext" onclick="return ajaxRequest('<webratio:Link link="scu10qNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qNext', sourcePage: 'page17q'}))" class=" scroll" href="<webratio:Link link="scu10qNext" position="index"/>">							
					<bean:message key="Scroller.Next"/></a>
	</c:if>
			    		            </c:when>
				    	            <c:otherwise>
						            		<table cellspacing="0" cellpadding="0">
												<tr>
													<td valign="middle">
														<img src="style/img/Scroller.Next.png" border="0"/>
													</td>
													<td>
														<bean:message key="Scroller.Next"/>
													</td>
												</tr>
											</table>
				    	            </c:otherwise>
				    	        </c:choose>
						    </td>
						    <td class="scrollText">
						    	<c:choose>
			    		            <c:when test="${scu10q.scroller.current ne scu10q.scroller.last}">
				    		    	     <c:if test="${webratio:isTargetAccessible('scu10qLast', pageContext)}">
			 			<a title="<bean:message key="Scroller.Last"/>" id="scu10qLast" onclick="return ajaxRequest('<webratio:Link link="scu10qLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qLast', sourcePage: 'page17q'}))" class=" scroll" href="<webratio:Link link="scu10qLast" position="index"/>">							
						<img title="<bean:message key="Scroller.Last"/>" alt="<bean:message key="Scroller.Last"/>" src="style/img/Scroller.Last.png" border="0"/>
					</a>
		 			<a title="<bean:message key="Scroller.Last"/>" id="scu10qLast" onclick="return ajaxRequest('<webratio:Link link="scu10qLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qLast', sourcePage: 'page17q'}))" class=" scroll" href="<webratio:Link link="scu10qLast" position="index"/>">							
					<bean:message key="Scroller.Last"/></a>
	</c:if>
					                </c:when>
					                <c:otherwise>
						            		<table cellspacing="0" cellpadding="0">
												<tr>
													<td valign="middle">
														<img src="style/img/Scroller.Last.png" border="0"/>
													</td>
													<td>
														<bean:message key="Scroller.Last"/>
													</td>
												</tr>
											</table>
					               </c:otherwise>
					            </c:choose>
						    </td>
				   </tr>
					   <tr>  
						    <td colspan="5" class="scrollText"> 
							    <span><bean:message key="Scroller.Jump"/></span>
							    <c:forEach var="current" varStatus="status" items="${scu10q.scroller.blocks}">
							      <c:set var="index" value="${status.index}"/>
							      <span class="jump">
							      <c:choose>
							        <c:when test="${current ne scu10q.scroller.current}">
							          <a class=" link" href="<webratio:Link escapeXml="true" link="scu10qBlock" position="index"/>" onclick="return ajaxRequest('<webratio:Link link="scu10qBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'scu10qBlock', sourcePage: 'page17q'}))">${current}</a>
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
			</div>
		</div>
</c:when>
<c:when test="${scu10q.dataSize eq 0}">
		<div class="plain ">
			<div class="plain ScrollerUnit">
				<table>
				    <tr>
				      <td><bean:message key="emptyUnitMessage"/></td>
				    </tr>
				</table>
			</div>
		</div>
</c:when>
</c:choose>
</div>
		<div class="wr-ajaxDiv" id="meu1q_0">
	<div class="plain ">
		<div class="plain MultiEntryUnit">
			<table class="maintable" cellspacing="0" cellpadding="0" border="0">
				<tr>
					<td colspan="2" class="error">
						<html:errors property="meu1q"/>
						<html:errors property="meu1qChecked"/>
					</td>
				</tr>
					<tr class="headerRow">
						<th class=" header">
						</th>
								<th align="left" nowrap class=" header">Key</th>
								<th align="left" nowrap class=" header">Message</th>
					</tr>
				<script>multiChoiceMap["meu1q_473348"] = "all";</script>
				<c:forEach var="meu1q" varStatus="status" items="${page17qFormBean.map.meu1q}">
					<c:set var="index" value="${status.index}"/>
					<tr>
						<td>
							<html:hidden property="value(key)" indexed="true" name="meu1q"/>
						</td>
								<td>
									<table cellspacing="0" cellpadding="0">
										<tr>
											<td class=" value">
													<html:text styleId="meu1q[${index}].value(fld28q)" indexed="true"  size="40" styleClass="wr-submitButtons:ln227q  field" name="meu1q" property="value(fld28q)" readonly="true"/>
											</td>
										</tr>
										<tr>
											<td  class=" error"><html:errors property="meu1q[${index}].value(fld28q)"/></td>
										</tr>
									</table>
								</td>
								<td>
									<table cellspacing="0" cellpadding="0">
										<tr>
											<td class=" value">
													<html:text styleId="meu1q[${index}].value(fld29q)" indexed="true"  size="100" styleClass="wr-submitButtons:ln227q  field" name="meu1q" property="value(fld29q)" readonly="false"/>
											</td>
										</tr>
										<tr>
											<td  class=" error"><html:errors property="meu1q[${index}].value(fld29q)"/></td>
										</tr>
									</table>
								</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="2">
						<table>
							<tr>
			<c:if test="${webratio:isTargetAccessible('ln227q', pageContext)}">
											<td> <c:if test="${webratio:isTargetAccessible('ln227q', pageContext)}">
			<input title="Save" onclick="$('page17qFormBean').target='_self'" class="save  button"  style="background-image:url('style/img/Save.png'); background-position: left; background-repeat: no-repeat; padding-left: 20px;" id="button:ln227q" name="button:ln227q" type="submit" value="Save">
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
</div>
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
		<webratio:LinkInfos page="page17q"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page17q" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page17q"/>
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