<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
			<div class="col-lg-8 col-md-8 col-xs-12 col-sm-8">
				<img src="data:image/png;base64,${product.photo?.encodeBase64()}"
					class="img-rounded img-responsive" alt="${product.productName}">

			</div>
			<div id="show-user"
				class="content scaffold-show  col-lg-4 col-md-4 col-xs-12 col-sm-4">
				<div class="row"><img src="data:image/png;base64,${user.avatar?.encodeBase64()}"
					class="img-rounded img-responsive" alt="${user.name}"></div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<span class="text-success"> Name: </span>
				</div>
				<div class="col-lg-8 col-md-4 col-sm-4 col-xs-12">
					<span>
						${user.name}
					</span>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<span class="text-success"> About me: </span>
				</div>
				<div class="col-lg-8 col-md-4 col-sm-4 col-xs-12">
					<span>
						${user.description}
					</span>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<span class="text-success"> Email: </span>
				</div>
				<div class="col-lg-8 col-md-4 col-sm-4 col-xs-12">
					<span>
						${user.username}
					</span>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<span class="text-success"> Phone Number: </span>
				</div>
				<div class="col-lg-8 col-md-4 col-sm-4 col-xs-12">
					<span>
						${user.phoneNumber}
					</span>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<span class="text-success"> Address: </span>
				</div>
				<div class="col-lg-8 col-md-4 col-sm-4 col-xs-12">
					<span>
						${user.address}
					</span>
				</div>
				
			</div>
			<g:link action="viewPostedUser" params="[uid:user.id,pid:product.id]"
				class="btn btn-primary" role="button">Apply</g:link>
		</div>

	</div>


	<div class="container col-lg-12 col-md-12 col-xs-12 col-sm-12">
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#user"> <span>Userio</span></a></li>
			<li><a data-toggle="tab" href="#admin"> <span>Hoy por
						ti</span></a></li>
		</ul>
		<div class="tab-content">
			<div id="user" class="tab-pane fade in active">
				<g:each in="${userPostedProducts}" var="product" status="i">
					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
						<div class="thumbnail">
							<img src="data:image/png;base64,${product.photo?.encodeBase64()}"
								class="img-rounded" alt="${product.productName}">
							<div class="caption">
								<h3>
									${product.productName}
								</h3>
								<p>
									${product.description}
								</p>
								<p>
									<g:link action="viewPostedUser"
										params="[uid:user.id,pid:product.id]" class="btn btn-primary"
										role="button">Apply</g:link>
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
							<img src="data:image/png;base64,${product.photo?.encodeBase64()}"
								class="img-rounded" alt="${product.productName}">
							<div class="caption">
								<h3>
									${product.productName}
								</h3>
								<p>
									${product.description}
								</p>
								<p>
									<g:link action="viewPostedUser"
										params="[uid:user.id,pid:product.id]" class="btn btn-primary"
										role="button">Apply</g:link>
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