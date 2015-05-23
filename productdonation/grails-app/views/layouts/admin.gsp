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
<script type="text/javascript">
	function showRegisterPopup() {
		$('#myModal').modal('show');
	}
</script>
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
				<a href="/index"> <img alt="Brand" class="navbar-brand"
					src="${resource(dir: 'images', file: 'Business-Donations.jpg')}" /></a>

			</div>
			<div class="navbar-collapse collapse navbar-right">
				<ul class="nav navbar-nav">
					<sec:ifLoggedIn>
						<li><a href="#"><span class="glyphicon glyphicon-user"></span>
								<sec:username /> </a></li>
						<li><g:link cotroller="product">
								<span class="glyphicon  glyphicon-calendar"></span>My workspace</g:link></li>
						<li><g:link controller="logout">
								<span class="glyphicon  glyphicon-log-out"></span>
							Logout</g:link></li>
					</sec:ifLoggedIn>
					<sec:ifNotLoggedIn>
						<li><g:link controller="user" action="create">
								<span class="glyphicon glyphicon-registration-mark"></span> Register
						</g:link></li>
						<li><g:link controller="login">
								<span class="glyphicon glyphicon-log-in"></span>Login</g:link></li>
					</sec:ifNotLoggedIn>

				</ul>
			</div>
		</div>
	</nav>
	<div class="row">
		<div class="col-lg-3 col-xd-3 col-sm-3 col-xs-12">
			<ul class="nav nav-pills nav-stacked">
				<li role="presentation" class="active"><a href="#">Navigation</a></li>
				<li role="presentation"><g:link controller="user" action="show">Profile</g:link></li>
				<sec:ifAnyGranted roles="ROLE_ADMIN">
				<li role="presentation"><g:link controller="user">Manage User</g:link></li>
					<li role="presentation"><g:link controller="category">Category</g:link></li>
					<li role="presentation"><g:link controller="category"
							action="create">Create catogory</g:link></li>
					<li role="presentation"><g:link controller="question"
							action="index">Manage Question</g:link></li>
					<li role="presentation"><g:link controller="answer"
							action="index">Manage Answer</g:link></li>
				</sec:ifAnyGranted>
				<li role="presentation"><g:link controller="product">Products</g:link></li>
				<li role="presentation"><g:link controller="product"
						action="create">Create a product</g:link></li>
			</ul>
		</div>
		<div class="col-lg-9 col-xd-9 col-sm-9 col-xs-12">
			<g:layoutBody />
		</div>
	</div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<footer class="text-center">
			<span>Copyright@2015 by ProductDonation LLC</span>
		</footer>
	</div>
</body>
</html>
