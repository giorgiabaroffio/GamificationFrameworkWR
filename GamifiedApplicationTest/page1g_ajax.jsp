<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page1g"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page1g.do${wrAjax ? '#!ajax=true' : ''}" styleId="page1gFormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page1g">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page1g"/>
				<input type="hidden" name="ln2g" value="<webratio:Link link="ln2g"/>">
				<input type="hidden" name="ciu3gSelect" value="<webratio:Link link="ciu3gSelect"/>">
					<input type="hidden" name="ciu3gSelect_sr" value="<webratio:Link link="ciu3gSelect" selectiveRefresh="true"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page1g"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page1g_grid_0', pageContext)}">
			<ControlData control="page1g_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page1g_cell_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page1g_cell_0,page1g_grid_0', pageContext)}">
			<ControlData control="page1g_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="ciu3g_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('ciu3g_0,page1g_cell_0,page1g_grid_0', pageContext)}">
			<ControlData control="ciu3g_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="plain ">
    <div class="plain CropImageUnit">
	    <div>
		<table>
			<tr>
			  <td>
			    <script type="text/javascript" language="javascript">
			      function ciu3gPost(){
			           return ajaxRequest('page1gFormBean', $H({isForm: true, pressedLink: 'button:ciu3gSelect', selectiveRefresh: true, sourcePage: 'page1g'}))
			      }
			    </script>
			    <html:file styleId="ciu3gImage" property="ciu3gImage" onchange="return ciu3gPost()"/>
			    <span class=" error"><html:errors property="ciu3gImage"/></span>
			  </td>
			  <c:if test="${not empty(page1gFormBean.map.ciu3gPreload)}">
<td> <button title="Upload" onclick="return ajaxRequest('page1gFormBean', $H({isForm: true, pressedLink: 'button:ln2g', selectiveRefresh: false, sourcePage: 'page1g'})) " class="btn  btn-default  button" id="button:ln2g" name="button:ln2g" type="submit" value="Upload">
			Upload</button>
 </td> 
			  </c:if>
			</tr>
		 </table>
		 </div>		 
	   <c:choose>
		 <c:when test="${not empty(page1gFormBean.map.ciu3gPreload)}">
		   <html:hidden property="ciu3gPreload" styleId="ciu3gPreload"/>
		   <html:hidden property="ciu3g_area" styleId="ciu3g_area"/>
		   <html:hidden property="ciu3g_sw" styleId="ciu3g_sw"/>
		   <html:hidden property="ciu3g_sh" styleId="ciu3g_sh"/>
		   <html:hidden property="ciu3g_tw" styleId="ciu3g_tw"/>
		   <html:hidden property="ciu3g_th" styleId="ciu3g_th"/>
		   <html:hidden property="ciu3g_ar" styleId="ciu3g_ar"/>
		   <c:set var="width" value="${page1gFormBean.map.ciu3g_sw}"/>
		   <c:set var="height" value="${page1gFormBean.map.ciu3g_sh}"/>
		 <div>
		    <img id="ciu3g_crop" border="0" src="<webratio:BLOB value="${page1gFormBean.map.ciu3gPreload}"/>" width="${width}px" height="${height}px">
			<script type="text/javascript" language="javascript">
				jQuery(function(){ 
				    jQuery('#ciu3g_crop').Jcrop({
						onChange: ciu3g_showCoords,
						onSelect: ciu3g_showCoords,
						aspectRatio: ${page1gFormBean.map.ciu3g_ar},
						setSelect: [${page1gFormBean.map.ciu3g_area}]
					});
				});
				function ciu3g_showCoords(c){
					jQuery('#ciu3g_area').val(c.x + "," + c.y + "," + c.x2 + "," + c.y2);
				};	
			</script> 
		 </div>
		 </c:when>
		 <c:otherwise>
		     <div><bean:message key="CropImageUnit.noImage"/></div>
		 </c:otherwise>
	   </c:choose>
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