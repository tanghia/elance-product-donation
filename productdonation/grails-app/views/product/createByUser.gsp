<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="create-product" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${productInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${productInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:productInstance, action:'save']"   enctype="multipart/form-data">
				<fieldset class="form">
					<g:render template="formCreateByUser"/>
				</fieldset>
				<fieldset class="form">
				<legend><span class="text-info">Term & Agreement</span></legend>
				<p>To continue the registration, you must agree with the following provision:</p>
				<g:each in="${agreementList}" status="i" var="agreementInstance">
					<textarea cols="50">${agreementInstance?.content}</textarea>
				</g:each>
				<br/>
					<input name="agreement" type="checkbox" onclick="checkAgreement()"/><span style="font-weight: bold; margin-left: 5px">I agree to the Donation Product Terms of Service and Private Policy</span>
				</fieldset>
				<p/>
				<fieldset id="createBtn" class="buttons">
					<g:submitButton name="create" class="save  btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" disabled="true"/>
				</fieldset>
			</g:form>
			<script>
					function checkAgreement()
					{
						var agreement = $("input[name=agreement]").is(":checked");
						if(agreement)
						{
							$("#create").prop('disabled', false);
						}
						else
						{
							$("#create").prop('disabled', true);
						}
					}
			</script>
		</div>
	</body>
</html>
