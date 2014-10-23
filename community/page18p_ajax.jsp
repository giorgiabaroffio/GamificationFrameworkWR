<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page18p"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page18p.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		]]>
		<HiddenFields page="page18p">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page18p"/>
				<input type="hidden" name="ln116p" value="<webratio:Link link="ln116p"/>"/>
				<input type="hidden" name="ln120p" value="<webratio:Link link="ln120p"/>"/>
					<input type="hidden" name="ln120p_sr" value="<webratio:Link link="ln120p" selectiveRefresh="true"/>"/>
				<input type="hidden" name="ln122p" value="<webratio:Link link="ln122p"/>"/>
					<input type="hidden" name="ln122p_sr" value="<webratio:Link link="ln122p" selectiveRefresh="true"/>"/>
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page18p"/>]]>
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
		<c:if test="${webratio:isLayoutRefreshed('page18p_grid_0', pageContext)}">
			<ControlData control="page18p_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_6 suffix_6 alpha omega agrd_12">
				<div class="wr-ajaxDiv" id="page18p_cell_0"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page18p_cell_12"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page18p_cell_24"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page18p_cell_0,page18p_grid_0', pageContext)}">
			<ControlData control="page18p_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau2x_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('dau2x_0,page18p_cell_0,page18p_grid_0', pageContext)}">
			<ControlData control="dau2x_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty dau2x) and (dau2x.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">User</h2>
		<div class="plain ">
			<div class="plain DataUnit">
			    <table>
			            <tr>
			        		  	<td class=" value integer">    
<fmt:formatNumber value="${dau2x.data.OID}" pattern="${integerPattern}"/> 
  </td>
			        		  	<td class=" value string">    
<c:out value="${dau2x.data.firstName}"/> 
  </td>
			        		  	<td class=" value string">    
<c:out value="${dau2x.data.lastName}"/> 
  </td>
								</tr>
								<tr class="row">
			                   	</tr>
				  <tr>
				  <td colspan="3">
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
		<c:if test="${webratio:isLayoutRefreshed('page18p_cell_12,page18p_grid_0', pageContext)}">
			<ControlData control="page18p_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu7p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu7p_0,page18p_cell_12,page18p_grid_0', pageContext)}">
			<ControlData control="enu7p_0" type="text/html">
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
							<html:errors property="enu7p" />
						</td>
					</tr>
			<tr>
				<th valign="middle"  class=" header">
					Area
				</th>
				<th valign="middle"  class=" header">
					Name
				</th>
				<th valign="middle"  class=" header">
					Description
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
							<html:select styleId="sfld4p" styleClass="wr-submitButtons:ln116p,ln120p,ln122p  selectionfield" property="sfld4p" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld4pList" labelProperty="sfld4pLabelList"/>
			</html:select><script type="text/javascript">
			WREventUtils.observe("sfld4p", "change", function(event) { WREvent.observe(event, "page18p", "ln120p", $H({"isForm": true, "pressedLink": 'button:ln120p', "selectiveRefresh": true, "sourcePage": 'page18p'})); });
		</script>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<html:select styleId="sfld6p" styleClass="wr-submitButtons:ln116p,ln120p,ln122p  selectionfield" property="sfld6p" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld6pList" labelProperty="sfld6pLabelList"/>
			</html:select><script type="text/javascript">
			WREventUtils.observe("sfld6p", "change", function(event) { WREvent.observe(event, "page18p", "ln122p", $H({"isForm": true, "pressedLink": 'button:ln122p', "selectiveRefresh": true, "sourcePage": 'page18p'})); });
		</script>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<html:text  size="25" styleId="fld13p" styleClass="wr-submitButtons:ln116p,ln120p,ln122p  field" property="fld13p" readonly="false"/>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<div>
				<div style="padding-right: 24px; white-space: nowrap">
					<html:text  size="25" styleId="fld14p_locale" styleClass="wr-submitButtons:ln116p,ln120p,ln122p  field" property="fld14p_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld14p_locale').datepicker({
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
					<html:text  size="25" styleId="fld15p_locale" styleClass="wr-submitButtons:ln116p,ln120p,ln122p  field" property="fld15p_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld15p_locale').datepicker({
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
						<td class="error"><span class=" error"><html:errors property="sfld4p"/></span></td>
						<td class="error"><span class=" error"><html:errors property="sfld6p"/></span></td>
						<td class="error"><span class=" error"><html:errors property="fld13p"/></span></td>
						<td class="error"><span class=" error"><html:errors property="fld14p_locale"/></span></td>
						<td class="error"><span class=" error"><html:errors property="fld15p_locale"/></span></td>
				</tr>
					</table>
						</td>
						<td valign="bottom">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('ln116p', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln116p', pageContext)}">
			<input title="Search" onclick="$('page18pFormBean').target='_self'" class="search  button"  style="background-image:url('style/img/Search.png'); background-position: left; background-repeat: no-repeat; padding-left: 20px;" id="button:ln116p" name="button:ln116p" type="submit" value="Search">
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
		<c:if test="${webratio:isLayoutRefreshed('page18p_cell_24,page18p_grid_0', pageContext)}">
			<ControlData control="page18p_cell_24" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu8p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu8p_0,page18p_cell_24,page18p_grid_0', pageContext)}">
			<ControlData control="pwu8p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu8p) and (pwu8p.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">Actions</h2>
		<div class=" ">
			<div class=" PowerIndexUnit">
					<c:if test="${pwu8p.scroller.of gt 20}">
						<table class="scrolling" border="0" cellspacing="0" cellpadding="0">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu8p.scroller.current ne pwu8p.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu8pFirst', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu8pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu8pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pFirst', sourcePage: 'page18p'}))" class=" scroll" href="<webratio:Link link="pwu8pFirst" position="index"/>">							
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
							                <c:when test="${pwu8p.scroller.current ne pwu8p.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu8pPrevious', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu8pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu8pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pPrevious', sourcePage: 'page18p'}))" class=" scroll" href="<webratio:Link link="pwu8pPrevious" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu8p.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu8p.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu8p.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu8p.scroller.current ne pwu8p.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu8pNext', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu8pNext" onclick="return ajaxRequest('<webratio:Link link="pwu8pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pNext', sourcePage: 'page18p'}))" class=" scroll" href="<webratio:Link link="pwu8pNext" position="index"/>">							
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
					    		            <c:when test="${pwu8p.scroller.current ne pwu8p.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu8pLast', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu8pLast" onclick="return ajaxRequest('<webratio:Link link="pwu8pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pLast', sourcePage: 'page18p'}))" class=" scroll" href="<webratio:Link link="pwu8pLast" position="index"/>">							
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
									    <c:forEach var="current" varStatus="status" items="${pwu8p.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu8p.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu8pBlock" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu8pBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pBlock', sourcePage: 'page18p'}))">${current}</a>
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
						            Action Area
					        </th>
					        <th nowrap="nowrap" class=" header">
						            Name
					        </th>
					        <th nowrap="nowrap" class=" header">
						            Description
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu8patt51x', pageContext)}">
		 			<a title="Date" id="pwu8patt51x" onclick="return ajaxRequest('<webratio:Link link="pwu8patt51x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8patt51x', sourcePage: 'page18p'}))" class=" sort" href="<webratio:Link link="pwu8patt51x" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu8p.sortMask.att51x eq 'A'}">
         				<img title="Date" alt="Date" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Date" alt="Date" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Date" id="pwu8patt51x" onclick="return ajaxRequest('<webratio:Link link="pwu8patt51x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8patt51x', sourcePage: 'page18p'}))" class=" sort" href="<webratio:Link link="pwu8patt51x" position="index"/>">							
					Date</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						            Score
					        </th>
					    	<th class=" header"></th>
						</tr>
						</thead>
						<!-- end header -->
				<!-- instances -->
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu8p.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu8p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								   <td class=" value<c:if test="${pwu8p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.actionArea}"/>
								   </td>
								   <td class=" value<c:if test="${pwu8p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.name}"/>
								   </td>
								   <td class=" value<c:if test="${pwu8p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.description}"/>
								   </td>
								   <td class=" value<c:if test="${pwu8p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">				
										<fmt:formatDate value="${current.date}" pattern="${timestampPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu8p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> decimal">				
										<fmt:formatNumber value="${current.score}" pattern="${decimalPattern}"/>
								   </td>
						    	<td class=" linkCell link<c:if test="${pwu8p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
						    		<div class="link-menu"><a href="#" class="arrow" title="Menu"><bean:message key="Menu"/></a>
						    		<ul>
			<c:if test="${webratio:isTargetAccessible('ln94q', pageContext)}">
									   		<li class="delete"> <c:set var="_wr_message"><bean:message key="linkConfirmMessage"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('ln94q', pageContext)}">
		 			<a title="Delete" id="ln94q" class=" link" href="<webratio:Link link="ln94q" position="index"/>" onclick="return confirm('<c:out value="${_wr_message}"/>')">
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
					<c:if test="${pwu8p.scroller.of gt 20}">
						<table class="scrolling" border="0" cellspacing="0" cellpadding="0">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu8p.scroller.current ne pwu8p.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu8pFirst', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu8pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu8pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pFirst', sourcePage: 'page18p'}))" class=" scroll" href="<webratio:Link link="pwu8pFirst" position="index"/>">							
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
							                <c:when test="${pwu8p.scroller.current ne pwu8p.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu8pPrevious', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu8pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu8pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pPrevious', sourcePage: 'page18p'}))" class=" scroll" href="<webratio:Link link="pwu8pPrevious" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu8p.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu8p.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu8p.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu8p.scroller.current ne pwu8p.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu8pNext', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu8pNext" onclick="return ajaxRequest('<webratio:Link link="pwu8pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pNext', sourcePage: 'page18p'}))" class=" scroll" href="<webratio:Link link="pwu8pNext" position="index"/>">							
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
					    		            <c:when test="${pwu8p.scroller.current ne pwu8p.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu8pLast', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu8pLast" onclick="return ajaxRequest('<webratio:Link link="pwu8pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pLast', sourcePage: 'page18p'}))" class=" scroll" href="<webratio:Link link="pwu8pLast" position="index"/>">							
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
									    <c:forEach var="current" varStatus="status" items="${pwu8p.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu8p.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu8pBlock" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu8pBlock" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8pBlock', sourcePage: 'page18p'}))">${current}</a>
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
	<h2 class="">Actions</h2>
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