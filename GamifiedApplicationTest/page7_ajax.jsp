<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page7"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page7.do${wrAjax ? '#!ajax=true' : ''}" styleId="page7FormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page7">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page7"/>
				<input type="hidden" name="ln30" value="<webratio:Link link="ln30"/>">
				<input type="hidden" name="ln5g" value="<webratio:Link link="ln5g"/>">
					<input type="hidden" name="ln5g_sr" value="<webratio:Link link="ln5g" selectiveRefresh="true"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page7"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page7_grid_0', pageContext)}">
			<ControlData control="page7_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page7_cell_0"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page7_cell_12"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page7_cell_0,page7_grid_0', pageContext)}">
			<ControlData control="page7_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu6_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu6_0,page7_cell_0,page7_grid_0', pageContext)}">
			<ControlData control="enu6_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Modify User
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
		<html:hidden property="fld24" styleId="fld24"/>
		<html:hidden property="fld26" styleId="fld26"/>
	<div class="">
	    <c:set var="btFieldError"><html:errors property="enu6"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu6"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="fld17"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld17" class="control-label">First Name *</label>
					<div class="controls">
					<html:text   styleId="fld17" styleClass="wr-submitButtons:ln5g  form-control " property="fld17" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld17"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld18"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld18" class="control-label">Last Name *</label>
					<div class="controls">
					<html:text   styleId="fld18" styleClass="wr-submitButtons:ln5g  form-control " property="fld18" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld18"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld19"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld19" class="control-label">Email *</label>
					<div class="controls">
					<html:text   styleId="fld19" styleClass="wr-submitButtons:ln5g  form-control " property="fld19" readonly="true"/>
					<c:set var="btFieldError"><html:errors property="fld19"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld20_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld20_locale" class="control-label">BirthDate</label>
					<div class="controls">
					<div class="input-calendar input-group">
				<html:text  styleId="fld20_locale" styleClass="wr-submitButtons:ln5g form-control " property="fld20_locale" readonly="false"/>
				<span class="input-group-btn">
				<c:choose><c:when test="false">
					<button disabled class="btn btn-default" id="fld20_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span></button>
				</c:when><c:otherwise>
					<button class="btn btn-default" id="fld20_locale_calendar" type="button"><span class="glyphicon glyphicon-calendar"></span>
							<script type="text/javascript">
								jQuery(function($) { 								
									var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
									$('#fld20_locale').datepicker({
										showOn: "none",
										showWeek: true,
										showButtonPanel: true,
										dateFormat: pattern.dateFormat,
										firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
									});
									$('#fld20_locale_calendar').on('click', function(e) {
										e.preventDefault();
										$('#fld20_locale').datepicker('show');									
									});
								});
							</script>
					</button>
				</c:otherwise></c:choose>
				</span>
			</div>
					<c:set var="btFieldError"><html:errors property="fld20_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld21"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld21" class="control-label">City *</label>
					<div class="controls">
					<html:text   styleId="fld21" styleClass="wr-submitButtons:ln5g  form-control " property="fld21" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld21"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld22"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld22" class="control-label">Country *</label>
					<div class="controls">
					<html:text   styleId="fld22" styleClass="wr-submitButtons:ln5g  form-control " property="fld22" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld22"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld6"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld6" class="control-label">Geographical Area</label>
					<div class="controls">
					<html:select styleId="sfld6" styleClass="wr-submitButtons:ln5g form-control " property="sfld6" disabled="false">
				    <html:options property="sfld6List" labelProperty="sfld6LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld6"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld23_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld23_locale" class="control-label">Public profile *</label>
					<div class="controls">
					<label class="radio-inline" for="bool_fld23_0">
  					<html:radio styleClass="wr-submitButtons:ln5g " styleId="bool_fld23_0" property="fld23_locale" value="true" disabled="false"/>
					<bean:message key="boolean.yes"/>
				</label>
				<label class="radio-inline" for="bool_fld23_1">
  					<html:radio styleClass="wr-submitButtons:ln5g " styleId="bool_fld23_1" property="fld23_locale" value="false" disabled="false"/>
					<bean:message key="boolean.no"/>
				</label>
		<c:if test="false">
			<html:hidden property="fld23_locale"/>
		</c:if>
					<c:set var="btFieldError"><html:errors property="fld23_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld27_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld27_locale" class="control-label">Internal User *</label>
					<div class="controls">
					<label class="radio-inline" for="bool_fld27_0">
  					<html:radio styleClass="wr-submitButtons:ln5g " styleId="bool_fld27_0" property="fld27_locale" value="true" disabled="false"/>
					<bean:message key="boolean.yes"/>
				</label>
				<label class="radio-inline" for="bool_fld27_1">
  					<html:radio styleClass="wr-submitButtons:ln5g " styleId="bool_fld27_1" property="fld27_locale" value="false" disabled="false"/>
					<bean:message key="boolean.no"/>
				</label>
		<c:if test="false">
			<html:hidden property="fld27_locale"/>
		</c:if>
					<c:set var="btFieldError"><html:errors property="fld27_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld5"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld5" class="control-label">Language *</label>
					<div class="controls">
					<html:select styleId="sfld5" styleClass="wr-submitButtons:ln5g form-control " property="sfld5" disabled="false">
				    <html:options property="sfld5List" labelProperty="sfld5LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld5"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld4"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld4" class="control-label">Password</label>
					<div class="controls">
					<input type="password" autocomplete="off" id="fld4" class="wr-submitButtons:ln5g form-control " name="fld4"/>
					<c:set var="btFieldError"><html:errors property="fld4"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld11"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld11" class="control-label">Photo</label>
					<div class="controls">
					<html:hidden property="fld11_preload" styleId="fld11_preload"/>
			<html:file styleId="fld11" styleClass="wr-submitButtons:ln5g " property="fld11" accept="image/jpg" disabled="false" />
		<c:if test="${not(empty page7FormBean.map.fld11_preload)}">
			<label class="input-group-addon blob-clear" for="fld11_clear"><html:checkbox styleClass="wr-submitButtons:ln5g " styleId="fld11_clear" property="fld11_clear" disabled="false"/> Clear </label><div class="input-group-btn"><a target="blank" class="btn btn-default" href="<webratio:BLOB value="${page7FormBean.map.fld11_preload}"/>">Preview</a></div>
		</c:if>
					<c:set var="btFieldError"><html:errors property="fld11"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
		<div class="form-group form-btn">
					 <button title="Select Photo" onclick="return ajaxRequest('page7FormBean', $H({isForm: true, pressedLink: 'button:ln5g', selectiveRefresh: true, sourcePage: 'page7'})) " class="btn  btn-default " id="button:ln5g" name="button:ln5g" type="submit" value="Select Photo">
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
		<c:if test="${webratio:isLayoutRefreshed('page7_cell_12,page7_grid_0', pageContext)}">
			<ControlData control="page7_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu6_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu6_1,page7_cell_12,page7_grid_0', pageContext)}">
			<ControlData control="enu6_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="EntryUnit ">
		<html:hidden property="fld24" styleId="fld24"/>
		<html:hidden property="fld26" styleId="fld26"/>
		<div class="form-group form-btn">
					 <button title="Save" onclick="return ajaxRequest('page7FormBean', $H({isForm: true, pressedLink: 'button:ln30', selectiveRefresh: false, sourcePage: 'page7', waitingWindow: $H({message: '<bean:message key="ajax.computingRequest"/>', width: 200, height: 100, duration: 1000, className: ''})})) " class="btn  btn-default " id="button:ln30" name="button:ln30" type="submit" value="Save">
			Save</button>
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