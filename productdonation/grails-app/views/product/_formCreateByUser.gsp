<%@ page import="productdonation.Product" %>
<%@ page import="productdonation.Agreement" %>


<div hidden="hidden" class="fieldcontain ${hasErrors(bean: productInstance, field: 'tag', 'error')} required form-group">
	<label for="tag">
		<g:message code="product.tag.label" default="Tag" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tag" from="${productInstance.constraints.tag.inList}" required="" value="${productInstance?.tag}" valueMessagePrefix="product.tag"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productName', 'error')} required form-group">
	<label for="productName">
		<g:message code="product.productName.label" default="Product Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="productName" required="" value="${productInstance?.productName}" class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'photo', 'error')} required form-group">
	<label for="photo">
		<g:message code="product.photo.label" default="Photo" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="photo" name="photo" class="form-control" />

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required form-group">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${productInstance?.description}" class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'summary', 'error')} required form-group">
	<label for="summary">
		<g:message code="product.summary.label" default="Summary" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="summary" required="" value="${productInstance?.summary}" class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'status', 'error')} " hidden="hidden">
	<label for="status">
		<g:message code="product.status.label" default="Status" />
		
	</label>
	<g:if test="${productInstance?.isDonation == false}">
	<g:checkBox name="status" value="false" />
	</g:if>
	<g:else>
	<g:checkBox name="status" value="true"/>
	</g:else>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'address', 'error')} form-group">
	<label for="address">
		<g:message code="product.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${productInstance?.address}" class="form-control"/>

</div>

<g:if test="${productInstance?.isDonation == false}">
<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'contactDetail', 'error')} form-group ">
	<label for="contactDetail">
		<g:message code="product.contactDetail.label" default="Contact Detail" />
		
	</label>
	<g:textArea name="contactDetail" value="${productInstance?.contactDetail}" class="form-control"/>

</div>
</g:if>

<div hidden="hidden" class="fieldcontain ${hasErrors(bean: productInstance, field: 'activeDate', 'error')} required form-group">
	<label for="activeDate">
		<g:message code="product.activeDate.label" default="Active Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="activeDate" precision="day"  value="${productInstance?.activeDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'category', 'error')} required form-group">
	<label for="category">
		<g:message code="product.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${productdonation.Category.list()}" optionKey="id" required="" value="${productInstance?.category?.id}" class="many-to-one form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'isDonation', 'error')}" hidden="hidden">
	<label for="isDonation">
		<g:message code="product.isDonation.label" default="Is Donation" />
		
	</label>
	<g:checkBox name="isDonation" value="${productInstance?.isDonation}" />

</div>

<%--<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'isHot', 'error')} ">
	<label for="isHot">
		<g:message code="product.isHot.label" default="Is Hot" />
		
	</label>
	<g:checkBox name="isHot" value="${productInstance?.isHot}" />

</div>

--%><div class="fieldcontain ${hasErrors(bean: productInstance, field: 'user', 'error')} required" style="display: none;" hidden="hidden">
	<label for="user">
		<g:message code="product.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${productdonation.User.list()}" optionKey="id" required="" value="${productInstance?.user?.id}" class="many-to-one"/>

</div>

<%--<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'views', 'error')} required" style="display: none;">
	<label for="views">
		<g:message code="product.views.label" default="Views" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="views" type="number" value="${productInstance.views}" required=""/>

</div>

--%>