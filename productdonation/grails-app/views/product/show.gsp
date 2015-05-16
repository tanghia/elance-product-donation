
<%@ page import="productdonation.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-product" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list product">
			
				<g:if test="${productInstance?.tag}">
				<li class="fieldcontain">
					<span id="tag-label" class="property-label"><g:message code="product.tag.label" default="Tag" /></span>
					
						<span class="property-value" aria-labelledby="tag-label"><g:fieldValue bean="${productInstance}" field="tag"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.productName}">
				<li class="fieldcontain">
					<span id="productName-label" class="property-label"><g:message code="product.productName.label" default="Product Name" /></span>
					
						<span class="property-value" aria-labelledby="productName-label"><g:fieldValue bean="${productInstance}" field="productName"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${productInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="product.photo.label" default="Photo" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="product.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${productInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.summary}">
				<li class="fieldcontain">
					<span id="summary-label" class="property-label"><g:message code="product.summary.label" default="Summary" /></span>
					
						<span class="property-value" aria-labelledby="summary-label"><g:fieldValue bean="${productInstance}" field="summary"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="product.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:formatBoolean boolean="${productInstance?.status}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="product.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${productInstance}" field="address"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${productInstance?.contactDetail != ""}">
				<li class="fieldcontain">
					<span id="contactDetail-label" class="property-label"><g:message code="product.contactDetail.label" default="Contact Detail" /></span>
					
						<span class="property-value" aria-labelledby="contactDetail-label"><g:fieldValue bean="${productInstance}" field="contactDetail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="product.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${productInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.activeDate}">
				<li class="fieldcontain">
					<span id="activeDate-label" class="property-label"><g:message code="product.activeDate.label" default="Active Date" /></span>
					
						<span class="property-value" aria-labelledby="activeDate-label"><g:formatDate date="${productInstance?.activeDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="product.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="category" action="show" id="${productInstance?.category?.id}">${productInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.isDonation}">
				<li class="fieldcontain">
					<span id="isDonation-label" class="property-label"><g:message code="product.isDonation.label" default="Is Donation" /></span>
					
						<span class="property-value" aria-labelledby="isDonation-label"><g:formatBoolean boolean="${productInstance?.isDonation}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.isHot}">
				<li class="fieldcontain">
					<span id="isHot-label" class="property-label"><g:message code="product.isHot.label" default="Is Hot" /></span>
					
						<span class="property-value" aria-labelledby="isHot-label"><g:formatBoolean boolean="${productInstance?.isHot}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="product.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${productInstance?.user?.id}">${productInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.views}">
				<li class="fieldcontain">
					<span id="views-label" class="property-label"><g:message code="product.views.label" default="Views" /></span>
					
						<span class="property-value" aria-labelledby="views-label"><g:fieldValue bean="${productInstance}" field="views"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
