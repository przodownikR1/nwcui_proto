<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@include file="/WEB-INF/base.jsp"%>

<div id="main_page" class="page_body_content">
	<div class="row page_body_content dashboard">
		<div id="dashboard_nav" class="col-lg-3 page_body_content">
			<div id="dashboard_nav_contents" class="well page_body_content">
				<ul class="nav nav-pills">
					<c:forEach var="workflow" items="${workflows}" varStatus="index">
						<li><a href="${context}${workflow.URI}" class="nav_item">${workflow.name}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div id="dashboard_container" class="col-lg-9 page_body_content">
			<div class="dashboard_contents page_body_content">
				<div class="row">
					<div id="workflow_${index}" class="col-lg-6 dashboard_div_slot" style="padding-right: 7px;">
						<div class="row">
							<div class="col-lg-12">
								<img src="${context}/img/workflow/originals/acquaticBiodata.png" class="dashboard_div_image"/>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<a href="${context}/ang/aquaticbiology/#/aquaticbiology/value1/value2">
									Aquatic Biology
								</a>
							</div>
						</div>
					</div>
					<div id="workflow_${index}" class="col-lg-6 dashboard_div_slot" style="padding-left: 7px;">
						<div class="row">
							<div class="col-lg-12">
								<img src="${context}/img/workflow/originals/streamflowStatistics.png" class="dashboard_div_image"/>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<a href="${context}/ang/streamflowstats/#/streamflowstats/value1/value2">
									Streamflow Statistics
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div id="workflow_${index}" class="col-lg-6 dashboard_div_slot" style="padding-right: 7px;">
						<div class="row">
							<div class="col-lg-12">
								<img src="${context}/img/workflow/originals/waterBudget.png" class="dashboard_div_image" />
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<a href="${context}/ang/waterbudget/#/waterbudgety/value1/value2">
									Water Budget
								</a>
							</div>
						</div>
					</div>
					<div id="workflow_${index}" class="col-lg-6 dashboard_div_slot" style="padding-left: 7px;">
						<div class="row">
							<div class="col-lg-12">
								<img src="${context}/img/workflow/originals/acquaticBiodata.png" class="dashboard_div_image" />
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<a href="${context}/ang/datadiscovery/#/datadiscovery/value1/value2">
									Data Discovery
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</div>
</div>
<span id="hideNav" class="glyphicon glyphicon-chevron-left"></span>

<script type="text/javascript">
	$(document).ready(function() {
		$('#hideNav').click(function() {
			//$('#dashboard_nav').animate({width: 'toggle'}).promise().done(function(){$('#dashboard_nav').toggle();});
			//$('#dashboard_nav').toggleClass("col-lg-3");
			//$('#dashboard_nav').toggleClass("col-lg-0");
			//$('#dashboard_content').toggleClass("col-lg-9");
			//$('#dashboard_content').toggleClass("col-lg-12");
			
			$('#dashboard_nav').toggleClass("col-lg-3 col-lg-0");
			$('#dashboard_container').toggleClass("col-lg-9 col-lg-12");
			$('#dashboard_nav *').children().toggleClass("col-lg-0");
			$('#hideNav').toggleClass("glyphicon-chevron-left glyphicon-chevron-right");
		});
	});
</script>

