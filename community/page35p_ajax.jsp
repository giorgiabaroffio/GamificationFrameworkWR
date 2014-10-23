<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page35p"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page35p.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		]]>
		<HiddenFields page="page35p">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page35p"/>
				<input type="hidden" name="ln144p" value="<webratio:Link link="ln144p"/>"/>
					<input type="hidden" name="ln144p_sr" value="<webratio:Link link="ln144p" selectiveRefresh="true"/>"/>
				<input type="hidden" name="ln146p" value="<webratio:Link link="ln146p"/>"/>
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page35p"/>]]>
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
		<c:if test="${webratio:isLayoutRefreshed('page35p_grid_0', pageContext)}">
			<ControlData control="page35p_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_4 prefix_8 alpha omega agrd_8">
				<div class="wr-ajaxDiv" id="page35p_cell_8"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page35p_cell_12"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page35p_cell_8,page35p_grid_0', pageContext)}">
			<ControlData control="page35p_cell_8" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu18p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu18p_0,page35p_cell_8,page35p_grid_0', pageContext)}">
			<ControlData control="enu18p_0" type="text/html">
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
							<html:errors property="enu18p" />
						</td>
					</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								language
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld12p" styleClass="wr-submitButtons:ln144p  selectionfield" property="sfld12p" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld12pList" labelProperty="sfld12pLabelList"/>
			</html:select><script type="text/javascript">
			WREventUtils.observe("sfld12p", "change", function(event) { WREvent.observe(event, "page35p", "ln144p", $H({"isForm": true, "pressedLink": 'button:ln144p', "selectiveRefresh": true, "sourcePage": 'page35p'})); });
		</script>
						</td>
						    </tr>
							<tr><td></td>
								<td class="error"><span class=" error"><html:errors property="sfld12p"/></span></td>
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
		<c:if test="${webratio:isLayoutRefreshed('page35p_cell_12,page35p_grid_0', pageContext)}">
			<ControlData control="page35p_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu16p_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu16p_0,page35p_cell_12,page35p_grid_0', pageContext)}">
			<ControlData control="pwu16p_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu16p) and (pwu16p.dataSize gt 0)}">
<div class="left-bar">
	<h2 class="">Containers</h2>
		<div class=" ">
			<div class=" PowerIndexUnit">
				<table class="maintable" border="0" cellspacing="0" cellpadding="0">
						<!-- begin header -->
						<thead>
						<tr class="headerRow">
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu16patt81x', pageContext)}">
		 			<a title="Alias" id="pwu16patt81x" onclick="return ajaxRequest('<webratio:Link link="pwu16patt81x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu16patt81x', sourcePage: 'page35p'}))" class=" sort" href="<webratio:Link link="pwu16patt81x" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu16p.sortMask.att81x eq 'A'}">
         				<img title="Alias" alt="Alias" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Alias" alt="Alias" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Alias" id="pwu16patt81x" onclick="return ajaxRequest('<webratio:Link link="pwu16patt81x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu16patt81x', sourcePage: 'page35p'}))" class=" sort" href="<webratio:Link link="pwu16patt81x" position="index"/>">							
					Alias</a>
	</c:if>
					        </th>
					    	<th class=" header"></th>
						</tr>
						</thead>
						<!-- end header -->
				<!-- instances -->
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu16p.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu16p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								   <td class=" value<c:if test="${pwu16p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.alias}"/>
								   </td>
						    	<td class=" linkCell link<c:if test="${pwu16p.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
						    		<div class="link-menu"><a href="#" class="arrow" title="Menu"><bean:message key="Menu"/></a>
						    		<ul>
			<c:if test="${webratio:isTargetAccessible('ln130p', pageContext)}">
									   		<li class="modify"> <c:if test="${webratio:isTargetAccessible('ln130p', pageContext)}">
		 			<a title="Modify" id="ln130p" class=" link" href="<webratio:Link link="ln130p" position="index"/>">
					Modify</a>
	</c:if>
 </li>										
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln126p', pageContext)}">
									   		<li class="delete"> <c:if test="${webratio:isTargetAccessible('ln126p', pageContext)}">
		 			<a title="Delete" id="ln126p" onclick="return ajaxRequest('<webratio:Link link="ln126p" position="index"/>', $H({pressedLink: 'ln126p', sourcePage: 'page35p'}))" class=" link" href="<webratio:Link link="ln126p" position="index"/>">							
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
			</div>
		</div>
</div>
</c:when>
<c:otherwise>
<div class="left-bar">
	<h2 class="">Containers</h2>
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