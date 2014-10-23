<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html; charset=UTF-8"%> 
	<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<webratio:Page page="page37p"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<html:xhtml/>
<head>
  <base href="<%=wrBaseURI%>"/> 
  <title>Notification Events</title>
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
			<c:if test="${not(empty webratio:expandLayoutResourceContent('BUILTIN/jquery-ui-datepicker-lang', 'WRResources/ajax/jquery-ui/i18n/', pageContext))}">
	<script src="<webratio:Resource path="${webratio:expandLayoutResourceContent('BUILTIN/jquery-ui-datepicker-lang', 'WRResources/ajax/jquery-ui/i18n/', pageContext)}"/>" type="text/javascript"></script><!--[data] {"wr-resname": "jquery-ui-datepicker-lang", "wr-resver": "1.9.2"}-->
			</c:if>
	<link href="<webratio:Resource path="style/css/style.css"/>" type="text/css" rel="stylesheet"></link><!--[data] {"wr-resname": "style"}-->
	<script src="<webratio:Resource path="WRResources/ajax/webratio/calendar-utils.js"/>" type="text/javascript"></script><!--[data] {"wr-resname": "wr-calendar-utils", "wr-resver": "7.2.6"}-->
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
			<html:form action="form_page37p.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		<div class="wr-ajaxDiv" id="page37pHiddenFields">
			<html:hidden property="lastURL" styleId="lastURL_page37p"/>
				<input type="hidden" name="ln136p" value="<webratio:Link link="ln136p"/>"/>
				<input type="hidden" name="ln143p" value="<webratio:Link link="ln143p"/>"/>
					<input type="hidden" name="ln143p_sr" value="<webratio:Link link="ln143p" selectiveRefresh="true"/>"/>
				<input type="hidden" name="ln148p" value="<webratio:Link link="ln148p"/>"/>
					<input type="hidden" name="ln148p_sr" value="<webratio:Link link="ln148p" selectiveRefresh="true"/>"/>
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
				<li class="current"><c:if test="${webratio:isTargetAccessible('page36p.link', pageContext)}">	
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
					<li class="current"><c:if test="${webratio:isTargetAccessible('page37p.link', pageContext)}">	
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
			<h1>Notification Events
			</h1>
			<ul class="page-links">
			</ul>
		</div>
		<div class="wr-ajaxDiv" id="page37p_grid_0">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page37p_cell_0">
	<div class="wr-ajaxDiv" id="enu19p_0">
<div class="left-bar">
	<h2 class="">Search</h2>
	 <div class="plain ">
		<div class="plain EntryUnit">
		   		<table border="0" cellpadding="0" cellspacing="0">
		   			<tr>
		   				<td>
				<table>
					<tr>
						<td colspan="10" class="error">
							<html:errors property="enu19p" />
						</td>
					</tr>
			<tr>
				<th valign="middle"  class=" header">
					Event
				</th>
				<th valign="middle"  class=" header">
					Status
				</th>
				<th valign="middle"  class=" header">
					Creation date
				</th>
				<th valign="middle"  class=" header">
					Delivery date
				</th>
				<th valign="middle"  class=" header">
					email
				</th>
			</tr>
			<tr>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<html:select styleId="sfld18p" styleClass="wr-submitButtons:ln136p,ln143p,ln148p  selectionfield" property="sfld18p" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld18pList" labelProperty="sfld18pLabelList"/>
			</html:select><script type="text/javascript">
			WREventUtils.observe("sfld18p", "change", function(event) { WREvent.observe(event, "page37p", "ln143p", $H({"isForm": true, "pressedLink": 'button:ln143p', "selectiveRefresh": true, "sourcePage": 'page37p'})); });
		</script>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<html:select styleId="sfld8p" styleClass="wr-submitButtons:ln136p,ln143p,ln148p  selectionfield" property="sfld8p" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld8pList" labelProperty="sfld8pLabelList"/>
			</html:select><script type="text/javascript">
			WREventUtils.observe("sfld8p", "change", function(event) { WREvent.observe(event, "page37p", "ln148p", $H({"isForm": true, "pressedLink": 'button:ln148p', "selectiveRefresh": true, "sourcePage": 'page37p'})); });
		</script>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<div>
				<div style="padding-right: 24px; white-space: nowrap">
					<html:text  size="25" styleId="fld41p_locale" styleClass="wr-submitButtons:ln136p,ln143p,ln148p  field" property="fld41p_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld41p_locale').datepicker({
									showOn: "button",
									showWeek: true,
									buttonImage: "Resources/calendar.gif",
									buttonImageOnly: true,
									showButtonPanel: true,
									dateFormat: pattern.dateFormat,
									firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
								});
							});
						</script>
					</c:otherwise></c:choose>
				</div>
			</div>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<div>
				<div style="padding-right: 24px; white-space: nowrap">
					<html:text  size="25" styleId="fld42p_locale" styleClass="wr-submitButtons:ln136p,ln143p,ln148p  field" property="fld42p_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld42p_locale').datepicker({
									showOn: "button",
									showWeek: true,
									buttonImage: "Resources/calendar.gif",
									buttonImageOnly: true,
									showButtonPanel: true,
									dateFormat: pattern.dateFormat,
									firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
								});
							});
						</script>
					</c:otherwise></c:choose>
				</div>
			</div>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<html:text  size="25" styleId="fld40p" styleClass="wr-submitButtons:ln136p,ln143p,ln148p  field" property="fld40p" readonly="false"/>
					</td>
			</tr>
				<tr>
						<td class="error"><span class=" error"><html:errors property="sfld18p"/></span></td>
						<td class="error"><span class=" error"><html:errors property="sfld8p"/></span></td>
						<td class="error"><span class=" error"><html:errors property="fld41p_locale"/></span></td>
						<td class="error"><span class=" error"><html:errors property="fld42p_locale"/></span></td>
						<td class="error"><span class=" error"><html:errors property="fld40p"/></span></td>
				</tr>
					</table>
						</td>
						<td valign="bottom">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('ln136p', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln136p', pageContext)}">
			<input title="Search" onclick="$('page37pFormBean').target='_self'" class="search  button"  id="button:ln136p" name="button:ln136p" type="submit" value="Search">
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
				<div class="wr-ajaxDiv" id="page37p_cell_12">
	<div class="wr-ajaxDiv" id="pwu12p_0">
<c:choose>
<c:when test="${not(empty pwu12p) and (pwu12p.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">Events</h2>
		<div class=" ">
			<div class=" PowerIndexUnit">
					<c:if test="${pwu12p.scroller.of gt 10}">
						<table class="scrolling" border="0" cellspacing="0" cellpadding="0">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu12p.scroller.current ne pwu12p.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu12pFirst', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu12pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu12pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pFirst', sourcePage: 'page37p'}))" class=" scroll" href="<webratio:Link link="pwu12pFirst" position="index"/>">							
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
							                <c:when test="${pwu12p.scroller.current ne pwu12p.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu12pPrevious', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu12pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu12pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pPrevious', sourcePage: 'page37p'}))" class=" scroll" href="<webratio:Link link="pwu12pPrevious" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu12p.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu12p.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu12p.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu12p.scroller.current ne pwu12p.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu12pNext', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu12pNext" onclick="return ajaxRequest('<webratio:Link link="pwu12pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pNext', sourcePage: 'page37p'}))" class=" scroll" href="<webratio:Link link="pwu12pNext" position="index"/>">							
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
					    		            <c:when test="${pwu12p.scroller.current ne pwu12p.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu12pLast', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu12pLast" onclick="return ajaxRequest('<webratio:Link link="pwu12pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pLast', sourcePage: 'page37p'}))" class=" scroll" href="<webratio:Link link="pwu12pLast" position="index"/>">							
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
									    <c:forEach var="current" varStatus="status" items="${pwu12p.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu12p.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu12pBlock" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu12pBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pBlock', sourcePage: 'page37p'}))">${current}</a>
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
				<table class="maintable" border="0" cellspacing="0" cellpadding="0">
						<!-- begin header -->
						<thead>
						<tr class="headerRow">
					        <th nowrap="nowrap" class=" header">
						            Email
					        </th>
					        <th nowrap="nowrap" class=" header">
						            Description
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu12patt84x', pageContext)}">
		 			<a title="Creation Date" id="pwu12patt84x" onclick="return ajaxRequest('<webratio:Link link="pwu12patt84x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12patt84x', sourcePage: 'page37p'}))" class=" sort" href="<webratio:Link link="pwu12patt84x" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu12p.sortMask.att84x eq 'A'}">
         				<img title="Creation Date" alt="Creation Date" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Creation Date" alt="Creation Date" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Creation Date" id="pwu12patt84x" onclick="return ajaxRequest('<webratio:Link link="pwu12patt84x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12patt84x', sourcePage: 'page37p'}))" class=" sort" href="<webratio:Link link="pwu12patt84x" position="index"/>">							
					Creation Date</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu12patt89x', pageContext)}">
		 			<a title="Delivery Date" id="pwu12patt89x" onclick="return ajaxRequest('<webratio:Link link="pwu12patt89x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12patt89x', sourcePage: 'page37p'}))" class=" sort" href="<webratio:Link link="pwu12patt89x" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu12p.sortMask.att89x eq 'A'}">
         				<img title="Delivery Date" alt="Delivery Date" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Delivery Date" alt="Delivery Date" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Delivery Date" id="pwu12patt89x" onclick="return ajaxRequest('<webratio:Link link="pwu12patt89x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12patt89x', sourcePage: 'page37p'}))" class=" sort" href="<webratio:Link link="pwu12patt89x" position="index"/>">							
					Delivery Date</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						            Status
					        </th>
						</tr>
						</thead>
						<!-- end header -->
				<!-- instances -->
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu12p.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu12p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								   <td class=" value<c:if test="${pwu12p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.notificationToCommunityUser_email}"/>
								   </td>
								   <td class=" value<c:if test="${pwu12p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.notificationToTextMail_description}"/>
								   </td>
								   <td class=" value<c:if test="${pwu12p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">				
										<fmt:formatDate value="${current.creationDate}" pattern="${timestampPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu12p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">				
										<fmt:formatDate value="${current.deliveryDate}" pattern="${timestampPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu12p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.status}"/>
								   </td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
					<c:if test="${pwu12p.scroller.of gt 10}">
						<table class="scrolling" border="0" cellspacing="0" cellpadding="0">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu12p.scroller.current ne pwu12p.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu12pFirst', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu12pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu12pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pFirst', sourcePage: 'page37p'}))" class=" scroll" href="<webratio:Link link="pwu12pFirst" position="index"/>">							
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
							                <c:when test="${pwu12p.scroller.current ne pwu12p.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu12pPrevious', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu12pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu12pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pPrevious', sourcePage: 'page37p'}))" class=" scroll" href="<webratio:Link link="pwu12pPrevious" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu12p.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu12p.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu12p.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu12p.scroller.current ne pwu12p.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu12pNext', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu12pNext" onclick="return ajaxRequest('<webratio:Link link="pwu12pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pNext', sourcePage: 'page37p'}))" class=" scroll" href="<webratio:Link link="pwu12pNext" position="index"/>">							
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
					    		            <c:when test="${pwu12p.scroller.current ne pwu12p.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu12pLast', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu12pLast" onclick="return ajaxRequest('<webratio:Link link="pwu12pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pLast', sourcePage: 'page37p'}))" class=" scroll" href="<webratio:Link link="pwu12pLast" position="index"/>">							
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
									    <c:forEach var="current" varStatus="status" items="${pwu12p.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu12p.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu12pBlock" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu12pBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu12pBlock', sourcePage: 'page37p'}))">${current}</a>
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
	<h2 class="">Events</h2>
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
		<webratio:LinkInfos page="page37p"/>
	</script>
		<script type="application/json" class="wr-linkInfosSelective">
			<webratio:LinkInfos page="page37p" selectiveRefresh="true"/>
		</script>
	<script type="application/json" class="wr-linkData">
		<webratio:LinkData page="page37p"/>
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