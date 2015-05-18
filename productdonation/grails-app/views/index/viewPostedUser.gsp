<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div id="show-user" class="content scaffold-show alert-info"
			role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
			<ol class="property-list user"  style="list-style-type:none">
				<g:if test="${user?.avatar}">
					<li class="fieldcontain"><img
						src="data:image/png;base64,${user.avatar?.encodeBase64()}"
						class="img-rounded" alt="${user.name}"
						style="height: 50px; width: 50px"></li>
				</g:if>
				<g:if test="${user?.name}">
					<li class="fieldcontain"><span id="name-label"
						class="property-label"><g:message code="user.name.label"
								default="Name" /></span> <span class="property-value"
						aria-labelledby="name-label">: <g:fieldValue bean="${user}"
								field="name" /></span></li>
				</g:if>

				<g:if test="${user?.lastName}">
					<li class="fieldcontain"><span id="lastName-label"
						class="property-label"><g:message
								code="user.lastName.label" default="Last Name" /></span> <span
						class="property-value" aria-labelledby="lastName-label">: <g:fieldValue
								bean="${user}" field="lastName" /></span></li>
				</g:if>

				<g:if test="${user?.username}">
					<li class="fieldcontain"><span id="username-label"
						class="property-label"><g:message
								code="user.username.label" default="Username" /></span> <span
						class="property-value" aria-labelledby="username-label">: <g:fieldValue
								bean="${user}" field="username" /></span></li>
				</g:if>



				<g:if test="${user?.phoneNumber}">
					<li class="fieldcontain"><span id="phoneNumber-label"
						class="property-label"><g:message
								code="user.phoneNumber.label" default="Phone Number" /></span> <span
						class="property-value" aria-labelledby="phoneNumber-label">: <g:fieldValue
								bean="${user}" field="phoneNumber" /></span></li>
				</g:if>





				<g:if test="${user?.address}">
					<li class="fieldcontain"><span id="address-label"
						class="property-label"><g:message code="user.address.label"
								default="Address" /></span> <span class="property-value"
						aria-labelledby="address-label">: <g:fieldValue
								bean="${user}" field="address" /></span></li>
				</g:if>

				<g:if test="${user?.description}">
					<li class="fieldcontain"><span id="description-label"
						class="property-label"><g:message
								code="user.description.label" default="Description" /></span> <span
						class="property-value" aria-labelledby="description-label">: <g:fieldValue
								bean="${user}" field="description" /></span></li>
				</g:if>


			</ol>
		</div>

		<div class="container col-lg-12 col-md-12 col-xs-12 col-sm-12">
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#user"> <span>Userio</span></a></li>
				<li><a data-toggle="tab" href="#admin"> <span>Hoy
							por ti</span></a></li>
			</ul>
			<div class="tab-content">
				<div id="user" class="tab-pane fade in active">
					<g:each in="${userPostedProducts}" var="product" status="i">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="thumbnail">
								<img
									src="data:image/png;base64,${product.photo?.encodeBase64()}"
									class="img-rounded" alt="${product.productName}">
								<div class="caption">
									<h3>
										${product.productName}
									</h3>
									<p>...</p>
									<p>
										<a href="#" class="btn btn-primary" role="button">Button</a> <a
											href="#" class="btn btn-default" role="button">Button</a>
									</p>
								</div>
							</div>
						</div>

					</g:each>

				</div>
				<div id="admin" class="tab-pane fade in">
					<g:each in="${adminPostedProducts}" var="product" status="i">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="thumbnail">
								<img
									src="data:image/png;base64,${product.photo?.encodeBase64()}"
									class="img-rounded" alt="${product.productName}">
								<div class="caption">
									<h3>
										${product.productName}
									</h3>
									<p>...</p>
									<p>
										<a href="#" class="btn btn-primary" role="button">Apply</a>
									</p>
								</div>
							</div>
						</div>

					</g:each>

				</div>

			</div>


		</div>
	</div>
</body>
</html>