<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div id="main_page" class="container page_body_content">
	<div class="row page_body_content">
		<div id="workflow_menu" class="col-lg-3 page_body_content">
			<div class="well page_body_content">
				<ul class="nav nav-pills">
					<c:forEach var="workflow" items="${workflows}" varStatus="index">
						<li><a href="#">${workflow}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div id="workflow_content page_body_content" class="col-lg-9">
			<div class="well page_body_content">
				<div class="container">
					<div class="row">
						<c:forEach var="workflow" items="${workflows}" varStatus="index">
							<c:choose>
								<c:when test="${index.index % 2 == 0}">
									<% out.println("</div><div class=\"row\">");  %>
								</c:when>
							</c:choose>
							
							<div class="col-lg-6" style="margin-top: 20px">
								<div id="workflow_${index}" class="workflow_div_contents">
									
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>	
	</div>
</div>

