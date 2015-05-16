
<%@ page import="productdonation.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-product" class="content scaffold-list row" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>

					<%--<g:sortableColumn property="tag" title="${message(code: 'product.tag.label', default: 'Tag')}" />
					
						--%>
					<th>Photo</th>
					<g:sortableColumn property="productName" title="${message(code: 'product.productName.label', default: 'Product Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'product.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="summary" title="${message(code: 'product.summary.label', default: 'Summary')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'product.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'product.address.label', default: 'Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productInstanceList}" status="i" var="productInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td> <img
									src="data:image/png;base64,${productInstance.photo?.encodeBase64()}"
									class="img-rounded" alt="${productInstance.productName}" style="height: 50px;width:50px"></td>
						<td><g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "productName")}</g:link></td>
					
						<td>${fieldValue(bean: productInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "summary")}</td>
					
						<td><g:formatBoolean boolean="${productInstance.status}" /></td>
					
						<td>${fieldValue(bean: productInstance, field: "address")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
