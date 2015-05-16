<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<sec:ifAllGranted roles="ROLE_ADMIN">
		<div id="create-product" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${productInstance}" >
			<ul class="errors alert alert-warning" role="alert">
				<g:eachError bean="${productInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:productInstance, action:'save']"   enctype="multipart/form-data">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
		</sec:ifAllGranted>
		<sec:ifAnyGranted roles="ROLE_USER">
		<g:form url="[resource:productInstance, action:'createByUser']"  enctype="multipart/form-data">
			<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'isDonation', 'error')} ">
				<label for="isDonation">
					<g:message code="product.isDonation.label" default="Is Donation" />
					
				</label>
				<g:checkBox name="isDonation" value="${productInstance?.isDonation}" />
			</div>
			
			<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.submit.label', default: 'Submit')}" />
				</fieldset>
		</g:form>
		</sec:ifAnyGranted>
	</body>
</html>
