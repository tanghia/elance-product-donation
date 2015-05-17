<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Welcome to Grails</title>

</head>
<body>
	<div class="container-fluid">
		<div class=" col-lg-9 col-md-9 col-sm-12 col-xs-12 hidden-xs ">
			<div id="introduce" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<g:each in="${(0..< hotProducts.size()) }" var="i">
						<g:if test="${i==0}">
							<li data-target="#carousel-example-generic" data-slide-to="${i}"
								class="active"></li>
						</g:if>
						<g:else>
							<li data-target="#carousel-example-generic" data-slide-to="${i}"></li>
						</g:else>

					</g:each>

				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<g:each in="${hotProducts}" var="product" status="i">
						<g:if test="${i==0}">

							<div class="item active">
								<img
									src="data:image/png;base64,${product.photo?.encodeBase64()}"
									class="img-rounded" alt="${product.productName}">

								<div class="carousel-caption">
									<h3>
										${product.productName }
									</h3>

									<p>
										${product.description}
									</p>
								</div>
							</div>
						</g:if>
						<g:else>
							<div class="item">
								<img
									src="data:image/png;base64,${product.photo?.encodeBase64()}"
									class="img-rounded" alt="${product.productName}">

								<div class="carousel-caption">
									<h3>
										${product.productName }
									</h3>

									<p>
										${product.description}
									</p>
								</div>
							</div>
						</g:else>
					</g:each>



				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#introduce" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#introduce" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class="list-group col-lg-3 col-md-3 col-xs-12 col-sm-12">
			<a href="#" class="list-group-item active"> <span
				class="list-group-item-heading">New Products</span>
			</a>
			<g:each in="${newProducts}" var="product" status="i">
				<div class="media">
					<div class="media-left">
						<a href="#"> <img
							src="data:image/png;base64,${product.photo?.encodeBase64()}"
							class="img-rounded " width="100" height="100"
							alt="${product.productName}">
						</a>
					</div>
					<div class="media-body">
						<h4 class="media-heading">
							${product.productName}
						</h4>
						${product.description}
					</div>
				</div>


			</g:each>

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
									<span class="text-info">
										${product.productName}
									</span>
									<br/>
									<span>
										${product.description}
									</span>
									
									<p>
										<g:link action="viewPostedUser" params="[uid:product.user.id]" class="btn btn-primary" role="button">Apply</g:link>
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
									<span class="text-info">
										${product.productName}
									</span>
									<br/>
									<span>
										${product.description}
									</span>
									<p>
										<g:link action="viewPostedUser" params="[uid:product.user.id]" class="btn btn-primary" role="button">Apply</g:link>
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
