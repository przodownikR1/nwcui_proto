<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@include file="/WEB-INF/base.jsp"%>

<div id="main_page" class="page_body_content">
	<div class="row dashboard" style="margin-right: 0px;">
		<div id="dashboard_nav" class="col-xs-3" style="min-width: 220px; margin-right: -15px;">
			<div id="dashboard_nav_contents" class="navContents">
				<div class="panel panel-default">
					<div class="panel-heading" style="text-align: center;">
						Workflows
					</div>
					<div class="panel-body" style="font-size: 12px;">
						<ul class="nav nav-pills">
							<c:forEach var="workflow" items="${workflows}" varStatus="index">
								<li>
									<a href="${context}${workflow.URI}" style="white-space: nowrap;">${workflow.name}</a>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="dashboard_container" class="col-xs-9" style="min-width: 355px;  margin-left: 15px; padding: 10px; margin-bottom: -10px; padding-bottom: 0px;">
			<div class="row" style="margin-right: -30px;">
				<div class="col-xs-6" style="min-width: 364px; margin-right: -15px;">
					<div class="panel panel-default">
						<div class="panel-body">
							<img src="${context}/img/workflow/originals/acquaticBiodata.png" style="width: 400px; margin-left: auto; margin-right: auto;" class="img-responsive" />
						</div>
						<div class="panel-heading" style="text-align: center;">
							<a href="${context}/ang/aquaticbiology/#/aquaticbiology/value1/value2">
								Aquatic Biology
							</a>
						</div>
					</div>
				</div>
				<div class="col-xs-6" style="min-width: 364px;">
					<div class="panel panel-default">
						<div class="panel-body">
							<img src="${context}/img/workflow/originals/streamflowStatistics.png" style="width: 400px; margin-left: auto; margin-right: auto;" class="img-responsive" />
						</div>
						<div class="panel-heading" style="text-align: center;">
							<a href="${context}/ang/streamflowstats/#/streamflowstats/value1/value2">
							Streamflow Statistics
						</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row" style="margin-right: -30px; margin-bottom: -10px;">
				<div class="col-xs-6" style="min-width: 364px; margin-right: -15px;">
					<div class="panel panel-default">
						<div class="panel-body">
							<img src="${context}/img/workflow/originals/waterBudget.png" style="width: 400px; margin-left: auto; margin-right: auto;" class="img-responsive" />
						</div>
						<div class="panel-heading" style="text-align: center;">
							<a href="${context}/ang/waterbudget/#/waterbudgety/value1/value2">
								Water Budget
							</a>
						</div>
					</div>
				</div>
				<div class="col-xs-6" style="min-width: 364px;">
					<div class="panel panel-default">
						<div class="panel-body">
							<img src="${context}/img/workflow/originals/acquaticBiodata.png" style="width: 400px; margin-left: auto; margin-right: auto;" class="img-responsive" />
						</div>
						<div class="panel-heading" style="text-align: center;">
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
<span id="hideNav" class="glyphicon glyphicon-chevron-right" style="position: absolute; top: 30px; left: 16px; font-size: 10px;"></span>

<script type="text/javascript">
	$(document).ready(function() {
		$('#hideNav').click(function() {
			//$('#dashboard_nav').animate({width: 'toggle'}).promise().done(function(){$('#dashboard_nav').toggle();});
			//$('#dashboard_nav').toggleClass("col-xs-3");
			//$('#dashboard_nav').toggleClass("col-xs-0");
			//$('#dashboard_content').toggleClass("col-xs-9");
			//$('#dashboard_content').toggleClass("col-xs-12");
			
			$('#dashboard_nav').toggleClass("col-xs-3 col-xs-0");
			$('#dashboard_container').toggleClass("col-xs-9 col-xs-12");
			$('#dashboard_nav *').children().toggleClass("col-xs-0");
			$('#hideNav').toggleClass("glyphicon-chevron-left glyphicon-chevron-right");
		});
	});
</script>

