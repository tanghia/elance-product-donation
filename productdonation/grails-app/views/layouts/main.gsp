<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<asset:stylesheet src="application.css" />
<asset:javascript src="application.js" />
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'bootstrap.min.css')}"
	type="text/css">
<link href="${resource(dir: 'css', file: 'bootstrap-theme.min.css')}"
	rel="stylesheet">
<script type="text/javascript"
	src="${resource(dir: 'js', file: 'jquery-1.11.2.js')}"></script>
<script type="text/javascript"
	src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
<link
	href='http://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<style type="text/css">
body {
	font-family: 'Lato', serif;
}
</style>

<g:layoutHead />
</head>
<body>
	<nav class="navbar  navar-default navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="index.html"> <img alt="Brand" class="navbar-brand"
					src="${resource(dir: 'images', file: 'Business-Donations.jpg')}" /></a>

			</div>
			<div class="navbar-collapse collapse navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="profile.html"><span
							class="glyphicon glyphicon-user"></span> Ta Nghia</a></li>
					<li><a href="history.html"><span
							class="glyphicon  glyphicon-calendar"></span> My Room</a></li>
					<li><a><span class="glyphicon  glyphicon-log-out"></span>
							Logout</a></li>

				</ul>
			</div>
		</div>
	</nav>
	<g:layoutBody />
	<footer class="text-center">
		<span>Copyright@2015 by ProductDonation LLC</span>
	</footer>
</body>
</html>
