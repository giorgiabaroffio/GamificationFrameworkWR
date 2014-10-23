<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page20x"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page20x.do${wrAjax ? '#!ajax=true' : ''}"  enctype="multipart/form-data">
		]]>
		<HiddenFields page="page20x">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page20x"/>
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page20x"/>]]>
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
		<c:if test="${webratio:isLayoutRefreshed('page20x_grid_0', pageContext)}">
			<ControlData control="page20x_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<table     width="100%" >
<tr>
<td  valign="top" align="left" ><div class="wr-ajaxDiv" id="page20x_cell_0"></div></td>
</tr>
<tr>
<td  valign="top" align="left" ><div class="wr-ajaxDiv" id="page20x_cell_1"></div></td>
</tr>
</table></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page20x_cell_0,page20x_grid_0', pageContext)}">
			<ControlData control="page20x_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="tab">
<ul >
<c:forEach var="current" varStatus="status" items="${inu3x.data}">
<c:set var="index" value="${status.index}"/>
<li>
<a href="<webratio:Link escapeXml="true" link="ln13x" position="index"/>" id="ln13x" title="${current.areaName}">
${current.areaName}
</a>
</li>
</c:forEach>
</ul>
</div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page20x_cell_1,page20x_grid_0', pageContext)}">
			<ControlData control="page20x_cell_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu7x_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu7x_0,page20x_cell_1,page20x_grid_0', pageContext)}">
			<ControlData control="pwu7x_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu7x) and (pwu7x.dataSize gt 0)}">
<div class="light">
	<h2 class="">List of Actions</h2>
		<div class=" ">
			<div class=" PowerIndexUnit">
				<table class="maintable" border="0" cellspacing="0" cellpadding="0">
						<!-- begin header -->
						<thead>
						<tr class="headerRow">
					        <th nowrap="nowrap" class=" header">
						            Area
					        </th>
					        <th nowrap="nowrap" class=" header">
						            Name
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt71x', pageContext)}">
		 			<a title="Description" id="pwu7xatt71x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt71x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt71x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt71x" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att71x eq 'A'}">
         				<img title="Description" alt="Description" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Description" alt="Description" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Description" id="pwu7xatt71x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt71x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt71x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt71x" position="index"/>">							
					Description</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt41x', pageContext)}">
		 			<a title="Score" id="pwu7xatt41x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt41x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt41x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt41x" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att41x eq 'A'}">
         				<img title="Score" alt="Score" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Score" alt="Score" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Score" id="pwu7xatt41x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt41x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt41x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt41x" position="index"/>">							
					Score</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt60x', pageContext)}">
		 			<a title="Participation" id="pwu7xatt60x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt60x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt60x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt60x" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att60x eq 'A'}">
         				<img title="Participation" alt="Participation" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Participation" alt="Participation" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Participation" id="pwu7xatt60x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt60x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt60x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt60x" position="index"/>">							
					Participation</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt50x', pageContext)}">
		 			<a title="Reputation" id="pwu7xatt50x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt50x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt50x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt50x" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att50x eq 'A'}">
         				<img title="Reputation" alt="Reputation" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Reputation" alt="Reputation" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Reputation" id="pwu7xatt50x" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt50x" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt50x', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt50x" position="index"/>">							
					Reputation</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt3q', pageContext)}">
		 			<a title="Repeatable" id="pwu7xatt3q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt3q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt3q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt3q" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att3q eq 'A'}">
         				<img title="Repeatable" alt="Repeatable" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Repeatable" alt="Repeatable" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Repeatable" id="pwu7xatt3q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt3q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt3q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt3q" position="index"/>">							
					Repeatable</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt1q', pageContext)}">
		 			<a title="Check Time Elapsed" id="pwu7xatt1q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt1q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt1q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt1q" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att1q eq 'A'}">
         				<img title="Check Time Elapsed" alt="Check Time Elapsed" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Check Time Elapsed" alt="Check Time Elapsed" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Check Time Elapsed" id="pwu7xatt1q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt1q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt1q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt1q" position="index"/>">							
					Check Time Elapsed</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt2q', pageContext)}">
		 			<a title="Time Elapsed" id="pwu7xatt2q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt2q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt2q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt2q" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att2q eq 'A'}">
         				<img title="Time Elapsed" alt="Time Elapsed" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Time Elapsed" alt="Time Elapsed" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Time Elapsed" id="pwu7xatt2q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt2q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt2q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt2q" position="index"/>">							
					Time Elapsed</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7xatt9q', pageContext)}">
		 			<a title="Active" id="pwu7xatt9q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt9q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt9q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt9q" position="index"/>">							
				<c:choose>
         			<c:when test="${pwu7x.sortMask.att9q eq 'A'}">
         				<img title="Active" alt="Active" src="WRResources/spacer.gif" border="0" class="sortAscending" />
         			</c:when>
         			<c:otherwise>
         				<img title="Active" alt="Active" src="WRResources/spacer.gif" border="0" class="sortDescending" />
         			</c:otherwise>
         		</c:choose>
         		</a>
		 			<a title="Active" id="pwu7xatt9q" onclick="return ajaxRequest('<webratio:Link link="pwu7xatt9q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7xatt9q', sourcePage: 'page20x'}))" class=" sort" href="<webratio:Link link="pwu7xatt9q" position="index"/>">							
					Active</a>
	</c:if>
					        </th>
					    	<th class=" header"></th>
						</tr>
						</thead>
						<!-- end header -->
				<!-- instances -->
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu7x.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.area}"/>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.name}"/>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.description}"/>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> decimal">				
										<fmt:formatNumber value="${current.score}" pattern="${decimalPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> boolean">				
										<c:if test="${not(empty current.participation)}">
  <c:choose>
    <c:when test="${current.participation}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> boolean">				
										<c:if test="${not(empty current.reputation)}">
  <c:choose>
    <c:when test="${current.reputation}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> boolean">				
										<c:if test="${not(empty current.repeatable)}">
  <c:choose>
    <c:when test="${current.repeatable}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> boolean">				
										<c:if test="${not(empty current.checkTimeElapsed)}">
  <c:choose>
    <c:when test="${current.checkTimeElapsed}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> integer">				
										<fmt:formatNumber value="${current.timeElapsed}" pattern="${integerPattern}"/>
								   </td>
								   <td class=" value<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> boolean">				
										<c:if test="${not(empty current.active)}">
  <c:choose>
    <c:when test="${current.active}">
      <bean:message key="boolean.yes"/>
    </c:when>
    <c:otherwise>
      <bean:message key="boolean.no"/>
    </c:otherwise>
  </c:choose>
</c:if>
								   </td>
						    	<td class=" linkCell link<c:if test="${pwu7x.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
						    		<div class="link-menu"><a href="#" class="arrow" title="Menu"><bean:message key="Menu"/></a>
						    		<ul>
			<c:if test="${webratio:isTargetAccessible('ln12x', pageContext)}">
									   		<li class="modify"> <c:if test="${webratio:isTargetAccessible('ln12x', pageContext)}">
		 			<a title="Modify" id="ln12x" class=" link" href="<webratio:Link link="ln12x" position="index"/>">
					Modify</a>
	</c:if>
 </li>										
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln61q', pageContext)}">
									   		<li class="delete"> <c:set var="_wr_message"><bean:message key="linkConfirmMessage"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
		<c:if test="${webratio:isTargetAccessible('ln61q', pageContext)}">
		 			<a title="Delete" id="ln61q" onclick=" var c = confirm('<c:out value="${_wr_message}"/>'); if (c) { return ajaxRequest('<webratio:Link link="ln61q" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln61q', sourcePage: 'page20x'})) }  return c; " class=" link" href="<webratio:Link link="ln61q" position="index"/>">							
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
<div class="light">
	<h2 class="">List of Actions</h2>
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