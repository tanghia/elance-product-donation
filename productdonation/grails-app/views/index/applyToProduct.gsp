<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
</head>
<body>
  <div class="container-fluid">
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