<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="admin">
<g:set var="entityName"
	value="${message(code: 'question.label', default: 'Question')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>

	<g:link class="list btn btn-success" action="index">
		<g:message code="default.list.label" args="[entityName]" />
	</g:link>
	<div id="create-question" class="content scaffold-create" role="main">
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${questionInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${questionInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<fieldset class="form">
			<g:form controller="question" action="create">
				<g:field name="numberAnswer" type="number"
					class="form-control required" value="${numberAnswer}" />
				<g:submitButton value="submit" class="btn btn-success" name="submit" />
			</g:form>
		</fieldset>
		<g:form url="[resource:questionInstance, action:'save']">

			<fieldset class="form">
				<g:render template="form" />
			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="create" class="save btn btn-success"
					value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
