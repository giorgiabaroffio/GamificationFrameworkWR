<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page16q"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page16q.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		]]>
		<HiddenFields page="page16q">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page16q"/>
				<input type="hidden" name="ln221q" value="<webratio:Link link="ln221q"/>"/>
				<input type="hidden" name="ln222q" value="<webratio:Link link="ln222q"/>"/>
					<input type="hidden" name="ln222q_sr" value="<webratio:Link link="ln222q" selectiveRefresh="true"/>"/>
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page16q"/>]]>
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
		<c:if test="${webratio:isLayoutRefreshed('page16q_grid_0', pageContext)}">
			<ControlData control="page16q_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_4 prefix_8 alpha omega agrd_8">
				<div class="wr-ajaxDiv" id="page16q_cell_8"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page16q_cell_12"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page16q_cell_8,page16q_grid_0', pageContext)}">
			<ControlData control="page16q_cell_8" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu8q_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu8q_0,page16q_cell_8,page16q_grid_0', pageContext)}">
			<ControlData control="enu8q_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		<c:if test="${webratio:isLayoutRefreshed('page16q_cell_12,page16q_grid_0', pageContext)}">
			<ControlData control="page16q_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu6q_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu6q_0,page16q_cell_12,page16q_grid_0', pageContext)}">
			<ControlData control="pwu6q_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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