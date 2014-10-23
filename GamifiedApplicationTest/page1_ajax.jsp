<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page1"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page1.do${wrAjax ? '#!ajax=true' : ''}" styleId="page1FormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page1">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page1"/>
				<input type="hidden" name="ln1" value="<webratio:Link link="ln1"/>">
				<input type="hidden" name="ln6" value="<webratio:Link link="ln6"/>">
					<input type="hidden" name="ln6_sr" value="<webratio:Link link="ln6" selectiveRefresh="true"/>">
				<input type="hidden" name="ln15" value="<webratio:Link link="ln15"/>">
					<input type="hidden" name="ln15_sr" value="<webratio:Link link="ln15" selectiveRefresh="true"/>">
				<input type="hidden" name="ln8g" value="<webratio:Link link="ln8g"/>">
					<input type="hidden" name="ln8g_sr" value="<webratio:Link link="ln8g" selectiveRefresh="true"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page1"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page1_grid_0', pageContext)}">
			<ControlData control="page1_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page1_cell_0"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page1_cell_12"></div>
			</div>
				<div class="clear"></div>
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page1_cell_24"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page1_cell_0,page1_grid_0', pageContext)}">
			<ControlData control="page1_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu1_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu1_0,page1_cell_0,page1_grid_0', pageContext)}">
			<ControlData control="enu1_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			User Action To Perform
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="">
	    <c:set var="btFieldError"><html:errors property="enu1"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu1"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld1"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld1" class="control-label">Thematic Area *</label>
					<div class="controls">
					<html:select styleId="sfld1" styleClass="wr-submitButtons:ln6,ln15 form-control " property="sfld1" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld1List" labelProperty="sfld1LabelList"/>
				</html:select><script type="text/javascript">
			WREventUtils.observe("sfld1", "change", function(event) { WREvent.observe(event, "page1", "ln6", $H({"isForm": true, "pressedLink": 'button:ln6', "selectiveRefresh": true, "sourcePage": 'page1', "indicator": 'sfld1_indicator'})); });
		</script>
		<span id="sfld1_indicator" style="display: none"><img src="WRResources/ajax/jquery-ui/themes/webratio/indicator.gif"></span>
					<c:set var="btFieldError"><html:errors property="sfld1"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="sfld2"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld2" class="control-label">Action *</label>
					<div class="controls">
					<html:select styleId="sfld2" styleClass="wr-submitButtons:ln6,ln15 form-control " property="sfld2" disabled="false">
				  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
				    <html:options property="sfld2List" labelProperty="sfld2LabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld2"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld5"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld5" class="control-label">User Email *</label>
					<div class="controls">
					<html:text   styleId="fld5" styleClass="wr-submitButtons:ln6,ln15  form-control " property="fld5" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld5"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
		<div class="form-group form-btn">
					 <button title="Select User Email" onclick="return ajaxRequest('page1FormBean', $H({isForm: true, pressedLink: 'button:ln15', selectiveRefresh: true, sourcePage: 'page1'})) " class="btn  btn-default " id="button:ln15" name="button:ln15" type="submit" value="Select User Email">
			Select User Email</button>
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
		<c:if test="${webratio:isLayoutRefreshed('page1_cell_12,page1_grid_0', pageContext)}">
			<ControlData control="page1_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu1_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu1_1,page1_cell_12,page1_grid_0', pageContext)}">
			<ControlData control="enu1_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="EntryUnit ">
		<div class="form-group form-btn">
					 <button title="Invoke Gamification Engine" onclick="return ajaxRequest('page1FormBean', $H({isForm: true, pressedLink: 'button:ln1', selectiveRefresh: false, sourcePage: 'page1', waitingWindow: $H({message: '<bean:message key="ajax.computingRequest"/>', width: 200, height: 100, duration: 1000, className: ''})})) " class="btn  btn-default " id="button:ln1" name="button:ln1" type="submit" value="Invoke Gamification Engine">
			Invoke Gamification Engine</button>
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
		<c:if test="${webratio:isLayoutRefreshed('page1_cell_24,page1_grid_0', pageContext)}">
			<ControlData control="page1_cell_24" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu1_2"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu1_2,page1_cell_24,page1_grid_0', pageContext)}">
			<ControlData control="enu1_2" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="panel panel-default ">
	<div class="panel-heading">
		<h2 class="panel-title">
			Simulate User Actions
		</h2>
	</div>
	<div class="panel-body">
<div class="EntryUnit ">
	<div class="">
	    <c:set var="btFieldError"><html:errors property="enu1"/></c:set>
		<c:if test="${not (empty btFieldError)}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<html:errors property="enu1"/>
			</div>
		</c:if>
				<c:set var="btFieldError"><html:errors property="sfld1g"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="sfld1g" class="control-label">Gamified Application To Simulate</label>
					<div class="controls">
					<html:select styleId="sfld1g" styleClass="wr-submitButtons:ln8g form-control " property="sfld1g" disabled="false">
				    <html:options property="sfld1gList" labelProperty="sfld1gLabelList"/>
				</html:select>
					<c:set var="btFieldError"><html:errors property="sfld1g"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
				<c:set var="btFieldError"><html:errors property="fld2g_locale"/></c:set>
				<div class="form-group<c:if test="${not (empty btFieldError)}"> has-error</c:if> ">
					  <label for="fld2g_locale" class="control-label">Number Of Actions To Simulate (default 20)</label>
					<div class="controls">
					<html:text   styleId="fld2g_locale" styleClass="wr-submitButtons:ln8g  form-control " property="fld2g_locale" readonly="false"/>
					<c:set var="btFieldError"><html:errors property="fld2g_locale"/></c:set><c:if test="${not(empty(btFieldError))}"><span class="field-error help-block ">${btFieldError}</span></c:if>
					</div>
				</div>
	</div>
		<div class="form-group form-btn">
					 <button title="Simulate Users Actions" onclick="return ajaxRequest('page1FormBean', $H({isForm: true, pressedLink: 'button:ln8g', selectiveRefresh: true, sourcePage: 'page1', waitingWindow: $H({message: '<bean:message key="ajax.computingRequest"/>', width: 200, height: 100, duration: 1000, className: ''})})) " class="btn  btn-default " id="button:ln8g" name="button:ln8g" type="submit" value="Simulate Users Actions">
			Simulate Users Actions</button>
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
		<![CDATA[
		</html:form>
	]]>
</PageRefresh>