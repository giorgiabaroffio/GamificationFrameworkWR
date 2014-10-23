<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page32p"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page32p.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		]]>
		<HiddenFields page="page32p">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page32p"/>
				<input type="hidden" name="ln216p" value="<webratio:Link link="ln216p"/>"/>
				<input type="hidden" name="ln217p" value="<webratio:Link link="ln217p"/>"/>
					<input type="hidden" name="ln217p_sr" value="<webratio:Link link="ln217p" selectiveRefresh="true"/>"/>
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page32p"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('mpage2x_customlocation_0', pageContext)}">
			<ControlData control="mpage2x_customlocation_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="wr-ajaxDiv" id="mpage2x_grid_0"></div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('mpage2x_grid_0,mpage2x_customlocation_0', pageContext)}">
			<ControlData control="mpage2x_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="mpage2x_cell_0"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('mpage2x_cell_0,mpage2x_grid_0,mpage2x_customlocation_0', pageContext)}">
			<ControlData control="mpage2x_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau6x_0"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('dau6x_0,mpage2x_cell_0,mpage2x_grid_0,mpage2x_customlocation_0', pageContext)}">
			<ControlData control="dau6x_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
    </webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page32p_grid_0', pageContext)}">
			<ControlData control="page32p_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page32p_cell_0"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page32p_cell_12"></div>
			</div>
				<div class="clear"></div>
</div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page32p_cell_0,page32p_grid_0', pageContext)}">
			<ControlData control="page32p_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu25p_0"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('enu25p_0,page32p_cell_0,page32p_grid_0', pageContext)}">
			<ControlData control="enu25p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="left-bar">
	<h2 class="">Search</h2>
	 <div class="plain ">
		<div class="plain EntryUnit">
		   		<table border="0" cellpadding="0" cellspacing="0">
		   			<tr>
		   				<td>
				<table>
					<tr>
						<td colspan="8" class="error">
							<html:errors property="enu25p" />
						</td>
					</tr>
			<tr>
				<th valign="middle"  class=" header">
					Language
				</th>
				<th valign="middle"  class=" header">
					Name
				</th>
				<th valign="middle"  class=" header">
					From
				</th>
				<th valign="middle"  class=" header">
					To
				</th>
			</tr>
			<tr>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<c:if test="${webratio:evaluateCondition('cexpr7p', null, pageContext)}"><html:hidden property="sfld30p"/></c:if>
			<html:select styleId="sfld30p" styleClass="wr-submitButtons:ln216p,ln217p  selectionfield" property="sfld30p" disabled="${webratio:evaluateCondition('cexpr7p', null, pageContext)}">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld30pList" labelProperty="sfld30pLabelList"/>
			</html:select>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<html:select styleId="sfld29p" styleClass="wr-submitButtons:ln216p,ln217p  selectionfield" property="sfld29p" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld29pList" labelProperty="sfld29pLabelList"/>
			</html:select><script type="text/javascript">
			WREventUtils.observe("sfld29p", "change", function(event) { WREvent.observe(event, "page32p", "ln217p", $H({"isForm": true, "pressedLink": 'button:ln217p', "selectiveRefresh": true, "sourcePage": 'page32p'})); });
		</script>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<div>
				<div style="padding-right: 24px; white-space: nowrap">
					<html:text  size="25" styleId="fld58p_locale" styleClass="wr-submitButtons:ln216p,ln217p  field" property="fld58p_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld58p_locale').datepicker({
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
					<html:text  size="25" styleId="fld57p_locale" styleClass="wr-submitButtons:ln216p,ln217p  field" property="fld57p_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld57p_locale').datepicker({
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
			</tr>
				<tr>
						<td class="error"><span class=" error"><html:errors property="sfld30p"/></span></td>
						<td class="error"><span class=" error"><html:errors property="sfld29p"/></span></td>
						<td class="error"><span class=" error"><html:errors property="fld58p_locale"/></span></td>
						<td class="error"><span class=" error"><html:errors property="fld57p_locale"/></span></td>
				</tr>
					</table>
						</td>
						<td valign="bottom">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('ln216p', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln216p', pageContext)}">
			<input title="Search" onclick="$('page32pFormBean').target='_self'" class="search  button"  style="background-image:url('style/img/Search.png'); background-position: left; background-repeat: no-repeat; padding-left: 20px;" id="button:ln216p" name="button:ln216p" type="submit" value="Search">
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
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page32p_cell_12,page32p_grid_0', pageContext)}">
			<ControlData control="page32p_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu13p_0"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('pwu13p_0,page32p_cell_12,page32p_grid_0', pageContext)}">
			<ControlData control="pwu13p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu13p) and (pwu13p.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">Rewards</h2>
		<div class=" ">
			<div class=" PowerIndexUnit">
					<c:if test="${pwu13p.scroller.of gt 20}">
						<table class="scrolling" border="0" cellspacing="0" cellpadding="0">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu13p.scroller.current ne pwu13p.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu13pFirst', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu13pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu13pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pFirst', sourcePage: 'page32p'}))" class=" scroll" href="<webratio:Link link="pwu13pFirst" position="index"/>">							
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
							                <c:when test="${pwu13p.scroller.current ne pwu13p.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu13pPrevious', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu13pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu13pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pPrevious', sourcePage: 'page32p'}))" class=" scroll" href="<webratio:Link link="pwu13pPrevious" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu13p.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu13p.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu13p.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu13p.scroller.current ne pwu13p.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu13pNext', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu13pNext" onclick="return ajaxRequest('<webratio:Link link="pwu13pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pNext', sourcePage: 'page32p'}))" class=" scroll" href="<webratio:Link link="pwu13pNext" position="index"/>">							
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
					    		            <c:when test="${pwu13p.scroller.current ne pwu13p.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu13pLast', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu13pLast" onclick="return ajaxRequest('<webratio:Link link="pwu13pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pLast', sourcePage: 'page32p'}))" class=" scroll" href="<webratio:Link link="pwu13pLast" position="index"/>">							
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
									    <c:forEach var="current" varStatus="status" items="${pwu13p.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu13p.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu13pBlock" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu13pBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pBlock', sourcePage: 'page32p'}))">${current}</a>
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
						            Title
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu13patt102p', pageContext)}">
		 			<a title="Date" id="pwu13patt102p" onclick="return ajaxRequest('<webratio:Link link="pwu13patt102p" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13patt102p', sourcePage: 'page32p'}))" class=" sort" href="<webratio:Link link="pwu13patt102p" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu13p.sortMask.att102p eq 'A'}">
         				<img title="Date" alt="Date" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Date" alt="Date" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Date" id="pwu13patt102p" onclick="return ajaxRequest('<webratio:Link link="pwu13patt102p" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13patt102p', sourcePage: 'page32p'}))" class=" sort" href="<webratio:Link link="pwu13patt102p" position="index"/>">							
					Date</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						            Score
					        </th>
						</tr>
						</thead>
						<!-- end header -->
				<!-- instances -->
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu13p.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu13p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								   <td class=" value<c:if test="${pwu13p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.rewardInstanceToRewardType_title}"/>
								   </td>
								   <td class=" value<c:if test="${pwu13p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">				
										<fmt:formatDate value="${current.date}" pattern="${timestampPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu13p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> decimal">				
										<fmt:formatNumber value="${current.score}" pattern="${decimalPattern}"/>
								   </td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
					<c:if test="${pwu13p.scroller.of gt 20}">
						<table class="scrolling" border="0" cellspacing="0" cellpadding="0">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu13p.scroller.current ne pwu13p.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu13pFirst', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu13pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu13pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pFirst', sourcePage: 'page32p'}))" class=" scroll" href="<webratio:Link link="pwu13pFirst" position="index"/>">							
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
							                <c:when test="${pwu13p.scroller.current ne pwu13p.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu13pPrevious', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu13pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu13pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pPrevious', sourcePage: 'page32p'}))" class=" scroll" href="<webratio:Link link="pwu13pPrevious" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu13p.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu13p.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu13p.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu13p.scroller.current ne pwu13p.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu13pNext', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu13pNext" onclick="return ajaxRequest('<webratio:Link link="pwu13pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pNext', sourcePage: 'page32p'}))" class=" scroll" href="<webratio:Link link="pwu13pNext" position="index"/>">							
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
					    		            <c:when test="${pwu13p.scroller.current ne pwu13p.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu13pLast', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu13pLast" onclick="return ajaxRequest('<webratio:Link link="pwu13pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pLast', sourcePage: 'page32p'}))" class=" scroll" href="<webratio:Link link="pwu13pLast" position="index"/>">							
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
									    <c:forEach var="current" varStatus="status" items="${pwu13p.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu13p.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu13pBlock" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu13pBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu13pBlock', sourcePage: 'page32p'}))">${current}</a>
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
	<h2 class="">Rewards</h2>
		<div class=" ">
			<div class=" PowerIndexUnit">
				<bean:message key="No results"/>
			</div>
		</div>
</div>
</c:otherwise>
</c:choose>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<![CDATA[
		</html:form>
	]]>
</PageRefresh>