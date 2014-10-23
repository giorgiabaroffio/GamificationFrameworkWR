<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page37p"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page37p.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		]]>
		<HiddenFields page="page37p">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page37p"/>
				<input type="hidden" name="ln136p" value="<webratio:Link link="ln136p"/>"/>
				<input type="hidden" name="ln143p" value="<webratio:Link link="ln143p"/>"/>
					<input type="hidden" name="ln143p_sr" value="<webratio:Link link="ln143p" selectiveRefresh="true"/>"/>
				<input type="hidden" name="ln148p" value="<webratio:Link link="ln148p"/>"/>
					<input type="hidden" name="ln148p_sr" value="<webratio:Link link="ln148p" selectiveRefresh="true"/>"/>
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page37p"/>]]>
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
		<c:if test="${webratio:isLayoutRefreshed('page37p_grid_0', pageContext)}">
			<ControlData control="page37p_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page37p_cell_0"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page37p_cell_12"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page37p_cell_0,page37p_grid_0', pageContext)}">
			<ControlData control="page37p_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu19p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu19p_0,page37p_cell_0,page37p_grid_0', pageContext)}">
			<ControlData control="enu19p_0" type="text/html">
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
		<c:if test="${webratio:isLayoutRefreshed('page37p_cell_12,page37p_grid_0', pageContext)}">
			<ControlData control="page37p_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu12p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu12p_0,page37p_cell_12,page37p_grid_0', pageContext)}">
			<ControlData control="pwu12p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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