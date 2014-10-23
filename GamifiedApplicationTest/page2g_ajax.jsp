<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page2g"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page2g.do${wrAjax ? '#!ajax=true' : ''}" styleId="page2gFormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page2g">
			<![CDATA[
			<html:hidden property="lastURL" styleId="lastURL_page2g"/>
				<input type="hidden" name="ln3g" value="<webratio:Link link="ln3g"/>">
				<input type="hidden" name="ciu4gSelect" value="<webratio:Link link="ciu4gSelect"/>">
					<input type="hidden" name="ciu4gSelect_sr" value="<webratio:Link link="ciu4gSelect" selectiveRefresh="true"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page2g"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('page2g_grid_0', pageContext)}">
			<ControlData control="page2g_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
			<div class="grid_12 alpha omega agrd_24">
				<div class="wr-ajaxDiv" id="page2g_cell_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page2g_cell_0,page2g_grid_0', pageContext)}">
			<ControlData control="page2g_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="ciu4g_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('ciu4g_0,page2g_cell_0,page2g_grid_0', pageContext)}">
			<ControlData control="ciu4g_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="plain ">
    <div class="plain CropImageUnit">
	    <div>
		<table>
			<tr>
			  <td>
			    <script type="text/javascript" language="javascript">
			      function ciu4gPost(){
			           return ajaxRequest('page2gFormBean', $H({isForm: true, pressedLink: 'button:ciu4gSelect', selectiveRefresh: true, sourcePage: 'page2g'}))
			      }
			    </script>
			    <html:file styleId="ciu4gImage" property="ciu4gImage" onchange="return ciu4gPost()"/>
			    <span class=" error"><html:errors property="ciu4gImage"/></span>
			  </td>
			  <c:if test="${not empty(page2gFormBean.map.ciu4gPreload)}">
<td> <button title="Upload" onclick="return ajaxRequest('page2gFormBean', $H({isForm: true, pressedLink: 'button:ln3g', selectiveRefresh: false, sourcePage: 'page2g'})) " class="btn  btn-default  button" id="button:ln3g" name="button:ln3g" type="submit" value="Upload">
			Upload</button>
 </td> 
			  </c:if>
			</tr>
		 </table>
		 </div>		 
	   <c:choose>
		 <c:when test="${not empty(page2gFormBean.map.ciu4gPreload)}">
		   <html:hidden property="ciu4gPreload" styleId="ciu4gPreload"/>
		   <html:hidden property="ciu4g_area" styleId="ciu4g_area"/>
		   <html:hidden property="ciu4g_sw" styleId="ciu4g_sw"/>
		   <html:hidden property="ciu4g_sh" styleId="ciu4g_sh"/>
		   <html:hidden property="ciu4g_tw" styleId="ciu4g_tw"/>
		   <html:hidden property="ciu4g_th" styleId="ciu4g_th"/>
		   <html:hidden property="ciu4g_ar" styleId="ciu4g_ar"/>
		   <c:set var="width" value="${page2gFormBean.map.ciu4g_sw}"/>
		   <c:set var="height" value="${page2gFormBean.map.ciu4g_sh}"/>
		 <div>
		    <img id="ciu4g_crop" border="0" src="<webratio:BLOB value="${page2gFormBean.map.ciu4gPreload}"/>" width="${width}px" height="${height}px">
			<script type="text/javascript" language="javascript">
				jQuery(function(){ 
				    jQuery('#ciu4g_crop').Jcrop({
						onChange: ciu4g_showCoords,
						onSelect: ciu4g_showCoords,
						aspectRatio: ${page2gFormBean.map.ciu4g_ar},
						setSelect: [${page2gFormBean.map.ciu4g_area}]
					});
				});
				function ciu4g_showCoords(c){
					jQuery('#ciu4g_area').val(c.x + "," + c.y + "," + c.x2 + "," + c.y2);
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