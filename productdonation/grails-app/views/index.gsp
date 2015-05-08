<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		
	</head>
	<body>
	<!-- Modal -->
	<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog  modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"></h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-6 col-xd-6 col-sm-6 col-xs-12"
							style="overflow: scroll;" id="url"></div>
						<div class="col-lg-6 col-xd-6 col-sm-6 col-xs-12">
							<div class="row">
								<div class="thumbnail">
									<img id="breaktime_image" alt="...">
									<div class="caption">
										<h3 id="title"></h3>
										<p id="description"></p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	</body>
</html>
