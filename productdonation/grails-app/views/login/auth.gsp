<html>
<head>
<meta name='layout' content='main' />
<title><g:message code="springSecurity.login.title" /></title>
<style type='text/css' media='screen'>
.container {
	margin: 80px auto;
	width: 50%;
}

.container .login {
	position: relative;
	margin-left:auto;
	margin-right:auto;
	padding: 20px 20px 20px;
	width: 310px;
	background: white;
	border-radius: 3px;
	-webkit-box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px
		rgba(0, 0, 0, 0.3);
	box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px
		rgba(0, 0, 0, 0.3);
}

.container .login:before {
	content: '';
	position: absolute;
	top: -8px;
	right: -8px;
	bottom: -8px;
	left: -8px;
	z-index: -1;
	background: rgba(0, 0, 0, 0.08);
	border-radius: 4px;
}

.container .login h1 {
	margin: -20px -20px 21px;
	line-height: 40px;
	font-size: 15px;
	font-weight: bold;
	color: #555;
	text-align: center;
	text-shadow: 0 1px white;
	background: #f3f3f3;
	border-bottom: 1px solid #cfcfcf;
	border-radius: 3px 3px 0 0;
	background-image: -webkit-linear-gradient(top, whiteffd, #eef2f5);
	background-image: -moz-linear-gradient(top, whiteffd, #eef2f5);
	background-image: -o-linear-gradient(top, whiteffd, #eef2f5);
	background-image: linear-gradient(to bottom, whiteffd, #eef2f5);
	-webkit-box-shadow: 0 1px whitesmoke;
	box-shadow: 0 1px whitesmoke;
}

.container .login p {
	margin: 20px 0 0;
}

.container .login p:first-child {
	margin-top: 0;
}

.container .login input[type=text],.login input[type=password] {
	width: 278px;
}

.container .login p.remember_me {
	float: left;
	line-height: 31px;
}

.container .login p.remember_me label {
	font-size: 12px;
	color: #777;
	cursor: pointer;
}

.container .login p.remember_me input {
	position: relative;
	bottom: 1px;
	margin-right: 4px;
	vertical-align: middle;
}

.container .login p.submit {
	text-align: right;
}

.container .login-help {
	margin: 20px 0;
	font-size: 11px;
	color: white;
	text-align: center;
	text-shadow: 0 1px #2a85a1;
}

.container .login-help a {
	color: #cce7fa;
	text-decoration: none;
}

.container .login-help a:hover {
	text-decoration: underline;
}

.container :-moz-placeholder {
	color: #c9c9c9 !important;
	font-size: 13px;
}

.container ::-webkit-input-placeholder {
	color: #ccc;
	font-size: 13px;
}

.container input {
	font-family: 'Lucida Grande', Tahoma, Verdana, sans-serif;
	font-size: 14px;
}

.container input[type=text],input[type=password] {
	margin: 5px;
	padding: 0 10px;
	width: 200px;
	height: 34px;
	color: #404040;
	background: white;
	border: 1px solid;
	border-color: #c4c4c4 #d1d1d1 #d4d4d4;
	border-radius: 2px;
	outline: 5px solid #eff4f7;
	-moz-outline-radius: 3px;
	-webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
	box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
}

.container input[type=text]:focus,input[type=password]:focus {
	border-color: #7dc9e2;
	outline-color: #dceefc;
	outline-offset: 0;
}

.container input[type=submit] {
	padding: 0 18px;
	height: 29px;
	font-size: 12px;
	font-weight: bold;
	color: #527881;
	text-shadow: 0 1px #e3f1f1;
	background: #cde5ef;
	border: 1px solid;
	border-color: #b4ccce #b3c0c8 #9eb9c2;
	border-radius: 16px;
	outline: 0;
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	background-image: -webkit-linear-gradient(top, #edf5f8, #cde5ef);
	background-image: -moz-linear-gradient(top, #edf5f8, #cde5ef);
	background-image: -o-linear-gradient(top, #edf5f8, #cde5ef);
	background-image: linear-gradient(to bottom, #edf5f8, #cde5ef);
	-webkit-box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
	box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
}

.container input[type=submit]:active {
	background: #cde5ef;
	border-color: #9eb9c2 #b3c0c8 #b4ccce;
	-webkit-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.2);
	box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.2);
}

.lt-ie9 input[type=text],.lt-ie9 input[type=password] {
	line-height: 34px;
}
</style>
</head>

<body>

	<section class="container">

		<div class="login">
			<div class='inner'>
				<g:if test='${flash.message}'>
					<div class='login_message'>
						${flash.message}
					</div>
				</g:if>
			</div>
			<h1>Login to CMS</h1>
			<form action='${postUrl}' method='POST' id='loginForm'
				class='cssform' autocomplete='off'>
				<p>
					<input type="text" name="j_username" value=""
						placeholder="Username">
				</p>
				<p>
					<input type="password" name="j_password" value=""
						placeholder="Password">
				</p>
				<p class="remember_me">
					<label> <input type="checkbox"
						name='${rememberMeParameter}' id='remember_me'
						<g:if test='${hasCookie}'>checked='checked'</g:if> /> <label
						for='remember_me'> <g:message
								code="springSecurity.login.remember.me.label" />
					</label>
					</label>
				</p>
				<p class="submit">
					<input type='submit' id="submit"
						value='${message(code: "springSecurity.login.button")}' />
				</p>
			</form>


		</div>
	</section>


	<script type='text/javascript'>
	<!--
		(function() {
			document.forms['loginForm'].elements['j_username'].focus();
		})();
	// -->
	</script>
</body>
</html>
