<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-product" class="content scaffold-create" role="main">
			<h1><g:message code="default.createByUser.label" args="[entityName]" /></h1>
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
			<g:form url="[resource:productInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="formCreateByUser"/>
				</fieldset>
				<fieldset class="form">
				<p>To continue the registration, you must agree with the following provision:</p>
				<g:each in="${agreementList}" status="i" var="agreementInstance">
					<textarea cols="50">${agreementInstance?.content}</textarea>
				</g:each>
				<br/>
					<input name="agreement" type="checkbox" onclick="checkAgreement()"/><span style="font-weight: bold; margin-left: 5px">I agree to the Donation Product Terms of Service and Private Policy</span>
				</fieldset>
				<fieldset id="createBtn" class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" disabled="true"/>
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
