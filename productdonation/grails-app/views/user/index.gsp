
<%@ page import="productdonation.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		
		<g:link class="create btn btn-success" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		
		<div id="list-user" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'user.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'user.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'user.avatar.label', default: 'Avatar')}" />
					
						<g:sortableColumn property="phoneNumber" title="${message(code: 'user.phoneNumber.label', default: 'Phone Number')}" />
					
						<g:sortableColumn property="isNewEmailReciever" title="${message(code: 'user.isNewEmailReciever.label', default: 'Is New Email Reciever')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "username")}</td>
					
						<td><img
									src="data:image/png;base64,${userInstance.avatar?.encodeBase64()}"
									class="img-rounded" alt="${userInstance.username}" width="64" height="64"></td>
					
						<td>${fieldValue(bean: userInstance, field: "phoneNumber")}</td>
					
						<td><g:formatBoolean boolean="${userInstance.isNewEmailReciever}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
