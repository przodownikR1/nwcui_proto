<!DOCTYPE HTML>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<html>
	<head>
		<tiles:insertAttribute name="meta" />
	</head>
	<body>
		<div class="container site_body_content">
			<div class="row">
				<div id="site_header" class="col-lg-12">
					<tiles:insertAttribute name="header" />
				</div>
			</div>
			<div class="row">
				<div id="site_nav" class="col-lg-12">
					<tiles:insertAttribute name="nav" />
				</div>
			</div>
			<div class="row site_body_content">
				<div id="site_content" class="col-lg-12 site_body_content">
					<tiles:insertAttribute name="body" />
				</div>
			</div>
		</div>
		
		<div id="site_footer" class="navbar-fixed-bottom">
			<tiles:insertAttribute name="footer" />
 		</div>
	</body>
</html>
