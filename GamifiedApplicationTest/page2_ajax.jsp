<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page2"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page2.do${wrAjax ? '#!ajax=true' : ''}" styleId="page2FormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page2">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page2"/>
				<input type="hidden" name="ln11" value="<webratio:Link link="ln11"/>">
				<input type="hidden" name="ln22" value="<webratio:Link link="ln22"/>">
				<input type="hidden" name="ln1g" value="<webratio:Link link="ln1g"/>">
					<input type="hidden" name="ln1g_sr" value="<webratio:Link link="ln1g" selectiveRefresh="true"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page2"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page2_grid_0', pageContext)}">
			<ControlData control="page2_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_5 suffix_7 alpha omega agrd_10">
				<div class="wr-ajaxDiv" id="page2_cell_0"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_5 alpha agrd_10">
				<div class="wr-ajaxDiv" id="page2_cell_12"></div>
			</div>
			<div class="grid_7 omega agrd_14">
				<div class="wr-ajaxDiv" id="page2_cell_17"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_5 suffix_7 alpha omega agrd_10">
				<div class="wr-ajaxDiv" id="page2_cell_24"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page2_cell_0,page2_grid_0', pageContext)}">
			<ControlData control="page2_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="mssu2_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('mssu2_0,page2_cell_0,page2_grid_0', pageContext)}">
			<ControlData control="mssu2_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty mssu2) and (mssu2.dataSize gt 0)}">
	<div class="alert alert-info ">
		<c:forEach var="current" varStatus="status" items="${mssu2.data}">
			<c:set var="index" value="${status.index}"/>
			<p>
					<c:out value="${current}"/>
				</p>
		</c:forEach>
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
		<c:if test="${webratio:isLayoutRefreshed('page2_cell_12,page2_grid_0', pageContext)}">
			<ControlData control="page2_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu3_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu3_0,page2_cell_12,page2_grid_0', pageContext)}">
			<ControlData control="enu3_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Create New User
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="">
	    <c:set var="btFieldError"><html:errors property="enu3"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu3"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="fld1"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld1" class="control-label">First Name *</label>
					<div class="controls">
					<html:text   styleId="fld1" styleClass="wr-submitButtons:ln1g  form-control " property="fld1" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld1"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld3"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld3" class="control-label">Last Name *</label>
					<div class="controls">
					<html:text   styleId="fld3" styleClass="wr-submitButtons:ln1g  form-control " property="fld3" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld3"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld6"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld6" class="control-label">Email *</label>
					<div class="controls">
					<html:text   styleId="fld6" styleClass="wr-submitButtons:ln1g  form-control " property="fld6" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld6"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld7_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld7_locale" class="control-label">BirthDate</label>
					<div class="controls">
					<div class="input-calendar input-group">
				<html:text  styleId="fld7_locale" styleClass="wr-submitButtons:ln1g form-control " property="fld7_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld7_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld7_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld7_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld7_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld7_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld7_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld8"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld8" class="control-label">City *</label>
					<div class="controls">
					<html:text   styleId="fld8" styleClass="wr-submitButtons:ln1g  form-control " property="fld8" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld8"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld9"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld9" class="control-label">Country *</label>
					<div class="controls">
					<html:text   styleId="fld9" styleClass="wr-submitButtons:ln1g  form-control " property="fld9" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld9"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld4"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld4" class="control-label">Geographical Area</label>
					<div class="controls">
					<html:select styleId="sfld4" styleClass="wr-submitButtons:ln1g form-control " property="sfld4" disabled="false">
				    <html:options property="sfld4List" labelProperty="sfld4LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld4"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld12_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld12_locale" class="control-label">Public profile *</label>
					<div class="controls">
					<label class="radio-inline" for="bool_fld12_0">
  					<html:radio styleClass="wr-submitButtons:ln1g " styleId="bool_fld12_0" property="fld12_locale" value="true" disabled="false"/>
					<bean:message key="boolean.yes"/>
				</label>
				<label class="radio-inline" for="bool_fld12_1">
  					<html:radio styleClass="wr-submitButtons:ln1g " styleId="bool_fld12_1" property="fld12_locale" value="false" disabled="false"/>
					<bean:message key="boolean.no"/>
				</label>
		<c:if test="false">
			<html:hidden property="fld12_locale"/>
		</c:if>
					<c:set var="btFieldError"><html:errors property="fld12_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld16_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld16_locale" class="control-label">Internal User *</label>
					<div class="controls">
					<label class="radio-inline" for="bool_fld16_0">
  					<html:radio styleClass="wr-submitButtons:ln1g " styleId="bool_fld16_0" property="fld16_locale" value="true" disabled="false"/>
					<bean:message key="boolean.yes"/>
				</label>
				<label class="radio-inline" for="bool_fld16_1">
  					<html:radio styleClass="wr-submitButtons:ln1g " styleId="bool_fld16_1" property="fld16_locale" value="false" disabled="false"/>
					<bean:message key="boolean.no"/>
				</label>
		<c:if test="false">
			<html:hidden property="fld16_locale"/>
		</c:if>
					<c:set var="btFieldError"><html:errors property="fld16_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld3"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld3" class="control-label">Language *</label>
					<div class="controls">
					<html:select styleId="sfld3" styleClass="wr-submitButtons:ln1g form-control " property="sfld3" disabled="false">
				    <html:options property="sfld3List" labelProperty="sfld3LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld3"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld13"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld13" class="control-label">Username *</label>
					<div class="controls">
					<html:text   styleId="fld13" styleClass="wr-submitButtons:ln1g  form-control " property="fld13" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld13"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld14"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld14" class="control-label">Password *</label>
					<div class="controls">
					<input type="password" autocomplete="off" id="fld14" class="wr-submitButtons:ln1g form-control " name="fld14" value="${page2FormBean.map.fld14}"/>
					<c:set var="btFieldError"><html:errors property="fld14"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld10"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld10" class="control-label">Photo</label>
					<div class="controls">
					<html:hidden property="fld10_preload" styleId="fld10_preload"/>
			<html:file styleId="fld10" styleClass="wr-submitButtons:ln1g " property="fld10" accept="image/jpg" disabled="false" />
		<c:if test="${not(empty page2FormBean.map.fld10_preload)}">
			<label class="input-group-addon blob-clear" for="fld10_clear"><html:checkbox styleClass="wr-submitButtons:ln1g " styleId="fld10_clear" property="fld10_clear" disabled="false"/> Clear </label><div class="input-group-btn"><a target="blank" class="btn btn-default" href="<webratio:BLOB value="${page2FormBean.map.fld10_preload}"/>">Preview</a></div>
		</c:if>
					<c:set var="btFieldError"><html:errors property="fld10"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
		<div class="form-group form-btn">
					 <button title="Select Photo" onclick="return ajaxRequest('page2FormBean', $H({isForm: true, pressedLink: 'button:ln1g', selectiveRefresh: true, sourcePage: 'page2'})) " class="btn  btn-default " id="button:ln1g" name="button:ln1g" type="submit" value="Select Photo">
			Select Photo</button>
		</div>
</div>	
	</div>
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
		<c:if test="${webratio:isLayoutRefreshed('page2_cell_17,page2_grid_0', pageContext)}">
			<ControlData control="page2_cell_17" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu1_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu1_0,page2_cell_17,page2_grid_0', pageContext)}">
			<ControlData control="pwu1_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty pwu1) and (pwu1.dataSize gt 0)}">
<div class="panel panel-default frameOverflow">
	<div class="panel-heading">
		<h2 class="panel-title">
			List Of Users
		</h2>
	</div>
	<div class="panel-body">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<div class="table-responsive">
				<table class="table table-bordered table-hover  table-striped ">
					<thead>
						<tr>
					        <th scope="col" class="">
						             <a title="First Name" id="pwu1att13" onclick="return ajaxRequest('<webratio:Link link="pwu1att13" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1att13', sourcePage: 'page2'}))" class="  sort" href="<webratio:Link link="pwu1att13" position="index"/>">							
			First Name</a>
					        </th>
					        <th scope="col" class="">
						             <a title="Last Name" id="pwu1att14" onclick="return ajaxRequest('<webratio:Link link="pwu1att14" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1att14', sourcePage: 'page2'}))" class="  sort" href="<webratio:Link link="pwu1att14" position="index"/>">							
			Last Name</a>
					        </th>
					        <th scope="col" class="">
						            Username
					        </th>
					        <th scope="col" class="">
						            Email
					        </th>
<th scope="col" class=" smallcol"></th> 
<th scope="col" class=" smallcol"></th> 
						</tr>
					</thead>
				<tbody>
				<c:forEach var="current" varStatus="status" items="${pwu1.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr <c:if test="${pwu1.currentIndex eq index}">class="info"</c:if>>	
								<td class=" string">
										<c:out value="${current.firstName}"/>
								</td>
								<td class=" string">
										<c:out value="${current.lastName}"/>
								</td>
								<td class=" string">
										<c:out value="${current.username}"/>
								</td>
								<td class=" string">
										<c:out value="${current.email}"/>
								</td>
									<td class=" smallcol">
										 <a title="Modify" id="ln32" onclick="return ajaxRequest('<webratio:Link link="ln32" position="index"/>', $H({pressedLink: 'ln32', sourcePage: 'page2'}))" class=" " href="<webratio:Link link="ln32" position="index"/>">							
			Modify</a>
									</td>
									<td class=" smallcol">
										 <c:set var="_wr_message"><bean:message key="linkConfirmMessage"/></c:set>
	<% pageContext.setAttribute("_wr_message", org.apache.commons.lang.StringEscapeUtils.escapeJavaScript((String) pageContext.getAttribute("_wr_message")));%>
	 		<a title="Delete" id="ln33" class=" " href="<webratio:Link link="ln33" position="index"/>"  onclick="return confirm('<c:out value="${_wr_message}"/>')">
			Delete</a>
									</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</div>
	<c:if test="${pwu1.scroller.of gt 20}">
	   <div class="text-center">
	   <ul class="pagination">
		        <c:choose>
		            <c:when test="${pwu1.scroller.current ne pwu1.scroller.first}">
	     	            <li> <a title="<bean:message key="PowerIndex.First"/>" id="pwu1First" onclick="return ajaxRequest('<webratio:Link link="pwu1First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1First', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
 </li>
		            </c:when>
		            <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.First"/>" id="pwu1First" onclick="return ajaxRequest('<webratio:Link link="pwu1First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1First', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1First" position="index"/>">							
			<bean:message key="PowerIndex.First"/></a>
 </li>
	           		</c:otherwise>
		        </c:choose>
		        <c:choose>
	                <c:when test="${pwu1.scroller.current ne pwu1.scroller.previous}">
	     	            <li> <a title="<bean:message key="PowerIndex.Previous"/>" id="pwu1Previous" onclick="return ajaxRequest('<webratio:Link link="pwu1Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Previous', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.Previous"/>" id="pwu1Previous" onclick="return ajaxRequest('<webratio:Link link="pwu1Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Previous', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1Previous" position="index"/>">							
			<bean:message key="PowerIndex.Previous"/></a>
 </li>
		           	</c:otherwise>
	            </c:choose>
		    <c:forEach var="current" varStatus="status" items="${pwu1.scroller.blocks}">
		      <c:set var="index" value="${status.index}"/>
		      <c:choose>
		        <c:when test="${current ne pwu1.scroller.current}">
     	            <li><a class=" link" href="<webratio:Link escapeXml="true" link="pwu1Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu1Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Block', sourcePage: 'page2'}))">${current}</a></li>
		        </c:when>
		        <c:otherwise>
     	            <li class="active" ><span class=" link">${current} <span class="sr-only">(current)</span></span></li>
		        </c:otherwise>
		      </c:choose>
	    	</c:forEach> 
		        <c:choose>
	                <c:when test="${pwu1.scroller.current ne pwu1.scroller.next}">
	     	            <li> <a title="<bean:message key="PowerIndex.Next"/>" id="pwu1Next" onclick="return ajaxRequest('<webratio:Link link="pwu1Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Next', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
 </li>
		            </c:when>
    	            <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.Next"/>" id="pwu1Next" onclick="return ajaxRequest('<webratio:Link link="pwu1Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Next', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1Next" position="index"/>">							
			<bean:message key="PowerIndex.Next"/></a>
 </li>
    	            </c:otherwise>
    	        </c:choose>
		    	<c:choose>
		            <c:when test="${pwu1.scroller.current ne pwu1.scroller.last}">
	     	            <li> <a title="<bean:message key="PowerIndex.Last"/>" id="pwu1Last" onclick="return ajaxRequest('<webratio:Link link="pwu1Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Last', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1Last" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
 </li>
	                </c:when>
	                <c:otherwise>
	     	            <li class="disabled" > <a title="<bean:message key="PowerIndex.Last"/>" id="pwu1Last" onclick="return ajaxRequest('<webratio:Link link="pwu1Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu1Last', sourcePage: 'page2'}))" class="  scroll" href="<webratio:Link link="pwu1Last" position="index"/>">							
			<bean:message key="PowerIndex.Last"/></a>
 </li>
	               </c:otherwise>
	            </c:choose>
	    </ul>
	    </div>
	</c:if>
			</div>
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
		<c:if test="${webratio:isLayoutRefreshed('page2_cell_24,page2_grid_0', pageContext)}">
			<ControlData control="page2_cell_24" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu3_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu3_1,page2_cell_24,page2_grid_0', pageContext)}">
			<ControlData control="enu3_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="EntryUnit ">
		<div class="form-group form-btn">
					 <button title="Save" onclick="return ajaxRequest('page2FormBean', $H({isForm: true, pressedLink: 'button:ln11', selectiveRefresh: false, sourcePage: 'page2', waitingWindow: $H({message: '<bean:message key="ajax.computingRequest"/>', width: 200, height: 100, duration: 1000, className: ''})})) " class="btn  btn-default " id="button:ln11" name="button:ln11" type="submit" value="Save">
			Save</button>
					 <button title="Reset" onclick="$('#page2FormBean')[0].target='_self'" class="btn  btn-default " id="button:ln22" name="button:ln22" type="submit" value="Reset">
			Reset</button>
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