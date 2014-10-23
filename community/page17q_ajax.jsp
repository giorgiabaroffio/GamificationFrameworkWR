<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page17q"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page17q.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		]]>
		<HiddenFields page="page17q">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page17q"/>
				<input type="hidden" name="ln224q" value="<webratio:Link link="ln224q"/>"/>
				<input type="hidden" name="ln225q" value="<webratio:Link link="ln225q"/>"/>
					<input type="hidden" name="ln225q_sr" value="<webratio:Link link="ln225q" selectiveRefresh="true"/>"/>
				<input type="hidden" name="ln227q" value="<webratio:Link link="ln227q"/>"/>
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page17q"/>]]>
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
		<c:if test="${webratio:isLayoutRefreshed('page17q_grid_0', pageContext)}">
			<ControlData control="page17q_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_4 prefix_8 alpha omega agrd_8">
				<div class="wr-ajaxDiv" id="page17q_cell_8"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page17q_cell_12"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page17q_cell_8,page17q_grid_0', pageContext)}">
			<ControlData control="page17q_cell_8" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu10q_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu10q_0,page17q_cell_8,page17q_grid_0', pageContext)}">
			<ControlData control="enu10q_0" type="text/html">
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
		<c:if test="${webratio:isLayoutRefreshed('page17q_cell_12,page17q_grid_0', pageContext)}">
			<ControlData control="page17q_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="page17q_grid_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page17q_grid_1,page17q_cell_12,page17q_grid_0', pageContext)}">
			<ControlData control="page17q_grid_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="page17q_cell_13"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page17q_cell_13,page17q_grid_1,page17q_cell_12,page17q_grid_0', pageContext)}">
			<ControlData control="page17q_cell_13" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="left-bar">
	<h2 class="">Labels</h2>
		<div class="wr-ajaxDiv" id="scu10q_0"></div>
		<div class="wr-ajaxDiv" id="meu1q_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('scu10q_0,page17q_cell_13,page17q_grid_1,page17q_cell_12,page17q_grid_0', pageContext)}">
			<ControlData control="scu10q_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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
		<c:if test="${webratio:isLayoutRefreshed('meu1q_0,page17q_cell_13,page17q_grid_1,page17q_cell_12,page17q_grid_0', pageContext)}">
			<ControlData control="meu1q_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
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