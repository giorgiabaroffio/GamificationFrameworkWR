<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page22p"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page22p.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		]]>
		<HiddenFields page="page22p">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page22p"/>
				<input type="hidden" name="ln149p" value="<webratio:Link link="ln149p"/>"/>
				<input type="hidden" name="ln150p" value="<webratio:Link link="ln150p"/>"/>
					<input type="hidden" name="ln150p_sr" value="<webratio:Link link="ln150p" selectiveRefresh="true"/>"/>
				<input type="hidden" name="ln152p" value="<webratio:Link link="ln152p"/>"/>
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page22p"/>]]>
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
		<c:if test="${webratio:isLayoutRefreshed('page22p_grid_0', pageContext)}">
			<ControlData control="page22p_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page22p_cell_0"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page22p_cell_12"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page22p_cell_0,page22p_grid_0', pageContext)}">
			<ControlData control="page22p_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu12p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu12p_0,page22p_cell_0,page22p_grid_0', pageContext)}">
			<ControlData control="enu12p_0" type="text/html">
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
							<html:errors property="enu12p" />
						</td>
					</tr>
			<tr>
				<th valign="middle"  class=" header">
					language
				</th>
				<th valign="middle"  class=" header">
					Availability
				</th>
				<th valign="middle"  class=" header">
					Needed points
				</th>
				<th valign="middle"  class=" header">
					Keyword
				</th>
			</tr>
			<tr>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<html:select styleId="sfld19p" styleClass="wr-submitButtons:ln149p,ln150p  selectionfield" property="sfld19p" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld19pList" labelProperty="sfld19pLabelList"/>
			</html:select><script type="text/javascript">
			WREventUtils.observe("sfld19p", "change", function(event) { WREvent.observe(event, "page22p", "ln150p", $H({"isForm": true, "pressedLink": 'button:ln150p', "selectiveRefresh": true, "sourcePage": 'page22p'})); });
		</script>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<table>
			<c:forEach var="current" varStatus="status" items="${page22pFormBean.map.msfld1pList}">
				<tr>
					<td class=" multiselectionfield">
						<html:multibox styleClass="wr-submitButtons:ln149p,ln150p  multiselectionfield" property="msfld1p" value="${current}" disabled="false" styleId="msfld1p_${status.index}"/>
						   <c:out value="${page22pFormBean.map.msfld1pLabelList[status.index]}"/>
					</td>
				</tr>
			</c:forEach>
		</table>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<html:text  size="25" styleId="fld45p" styleClass="wr-submitButtons:ln149p,ln150p  field" property="fld45p" readonly="false"/>
					</td>
				    <td valign="middle" nowrap="nowrap" class=" value">
							<html:text  size="25" styleId="fld46p" styleClass="wr-submitButtons:ln149p,ln150p  field" property="fld46p" readonly="false"/>
					</td>
			</tr>
				<tr>
						<td class="error"><span class=" error"><html:errors property="sfld19p"/></span></td>
						<td class="error"><span class=" error"><html:errors property="msfld1p"/></span></td>
						<td class="error"><span class=" error"><html:errors property="fld45p"/></span></td>
						<td class="error"><span class=" error"><html:errors property="fld46p"/></span></td>
				</tr>
					</table>
						</td>
						<td valign="bottom">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('ln149p', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln149p', pageContext)}">
			<input title="Search" onclick="$('page22pFormBean').target='_self'" class="search  button"  id="button:ln149p" name="button:ln149p" type="submit" value="Search">
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
		<c:if test="${webratio:isLayoutRefreshed('page22p_cell_12,page22p_grid_0', pageContext)}">
			<ControlData control="page22p_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu7p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu7p_0,page22p_cell_12,page22p_grid_0', pageContext)}">
			<ControlData control="pwu7p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu7p) and (pwu7p.dataSize gt 0)}">
<div class="light">
	<h2 class="">Rewards</h2>
		<div class=" ">
			<div class=" PowerIndexUnit">
					<c:if test="${pwu7p.scroller.of gt 20}">
						<table class="scrolling" border="0" cellspacing="0" cellpadding="0">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu7p.scroller.current ne pwu7p.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu7pFirst', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu7pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu7pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pFirst', sourcePage: 'page22p'}))" class=" scroll" href="<webratio:Link link="pwu7pFirst" position="index"/>">							
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
							                <c:when test="${pwu7p.scroller.current ne pwu7p.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu7pPrevious', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu7pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu7pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pPrevious', sourcePage: 'page22p'}))" class=" scroll" href="<webratio:Link link="pwu7pPrevious" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu7p.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu7p.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu7p.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu7p.scroller.current ne pwu7p.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu7pNext', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu7pNext" onclick="return ajaxRequest('<webratio:Link link="pwu7pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pNext', sourcePage: 'page22p'}))" class=" scroll" href="<webratio:Link link="pwu7pNext" position="index"/>">							
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
					    		            <c:when test="${pwu7p.scroller.current ne pwu7p.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu7pLast', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu7pLast" onclick="return ajaxRequest('<webratio:Link link="pwu7pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pLast', sourcePage: 'page22p'}))" class=" scroll" href="<webratio:Link link="pwu7pLast" position="index"/>">							
					<bean:message key="PowerIndex.Last"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Last"/></span>
							               </c:otherwise>
							            </c:choose>
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
						     	Description
					        </th>
					        <th nowrap="nowrap" class=" header">
						     	Needed Points
					        </th>
					        <th nowrap="nowrap" class=" header">
						     	Available
					        </th>
					    	<th class=" header"></th>
						</tr>
						</thead>
						<!-- end header -->
				<!-- instances -->
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu7p.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu7p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								   <td class=" value<c:if test="${pwu7p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.title}"/>
								   </td>
								   <td class=" value<c:if test="${pwu7p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> text">				
										<c:out value="${current.description}" escapeXml="false"/>
								   </td>
								   <td class=" value<c:if test="${pwu7p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> decimal">				
										<fmt:formatNumber value="${current.neededPoints}" pattern="${decimalPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu7p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> boolean">				
										<c:if test="${not(empty current.available)}">
  <c:choose>
    <c:when test="${current.available}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								   </td>
						    	<td class=" linkCell link<c:if test="${pwu7p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
						    		<div class="link-menu"><a href="#" class="arrow" title="Menu"><bean:message key="Menu"/></a>
						    		<ul>
			<c:if test="${webratio:isTargetAccessible('ln70p', pageContext)}">
									   		<li class="modify"> <c:if test="${webratio:isTargetAccessible('ln70p', pageContext)}">
		 			<a title="Modify" id="ln70p" class=" link" href="<webratio:Link link="ln70p" position="index"/>">
					Modify</a>
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
					<c:if test="${pwu7p.scroller.of gt 20}">
						<table class="scrolling" border="0" cellspacing="0" cellpadding="0">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu7p.scroller.current ne pwu7p.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu7pFirst', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu7pFirst" onclick="return ajaxRequest('<webratio:Link link="pwu7pFirst" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pFirst', sourcePage: 'page22p'}))" class=" scroll" href="<webratio:Link link="pwu7pFirst" position="index"/>">							
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
							                <c:when test="${pwu7p.scroller.current ne pwu7p.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu7pPrevious', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu7pPrevious" onclick="return ajaxRequest('<webratio:Link link="pwu7pPrevious" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pPrevious', sourcePage: 'page22p'}))" class=" scroll" href="<webratio:Link link="pwu7pPrevious" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu7p.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu7p.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu7p.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu7p.scroller.current ne pwu7p.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu7pNext', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu7pNext" onclick="return ajaxRequest('<webratio:Link link="pwu7pNext" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pNext', sourcePage: 'page22p'}))" class=" scroll" href="<webratio:Link link="pwu7pNext" position="index"/>">							
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
					    		            <c:when test="${pwu7p.scroller.current ne pwu7p.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu7pLast', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu7pLast" onclick="return ajaxRequest('<webratio:Link link="pwu7pLast" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7pLast', sourcePage: 'page22p'}))" class=" scroll" href="<webratio:Link link="pwu7pLast" position="index"/>">							
					<bean:message key="PowerIndex.Last"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Last"/></span>
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
<div class="light">
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