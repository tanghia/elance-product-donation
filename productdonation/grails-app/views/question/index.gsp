
<%@ page import="productdonation.Question"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="admin">
<g:set var="entityName"
	value="${message(code: 'question.label', default: 'Question')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<g:link class="create btn btn-success" action="create">
		<g:message code="default.new.label" args="[entityName]" />
	</g:link>

	<div id="list-question" class="content scaffold-list" role="main">
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table class="table">
			<thead>
				<tr>

					<g:sortableColumn property="name"
						title="${message(code: 'question.name.label', default: 'Name')}" />

					<g:sortableColumn property="type"
						title="${message(code: 'question.type.label', default: 'Type')}" />

				</tr>
			</thead>
			<tbody>
				<g:each in="${questionInstanceList}" status="i"
					var="questionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${questionInstance.id}">
								${fieldValue(bean: questionInstance, field: "name")}
							</g:link></td>

						<td>
							${fieldValue(bean: questionInstance, field: "type")}
						</td>

					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${questionInstanceCount ?: 0}" />
		</div>
	</div>
</body>
</html>
