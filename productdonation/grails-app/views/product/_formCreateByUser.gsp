<%@ page import="productdonation.Product" %>
<%@ page import="productdonation.Agreement" %>


<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'tag', 'error')} required">
	<label for="tag">
		<g:message code="product.tag.label" default="Tag" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tag" from="${productInstance.constraints.tag.inList}" required="" value="${productInstance?.tag}" valueMessagePrefix="product.tag"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productName', 'error')} required">
	<label for="productName">
		<g:message code="product.productName.label" default="Product Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="productName" required="" value="${productInstance?.productName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'photo', 'error')} required">
	<label for="photo">
		<g:message code="product.photo.label" default="Photo" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="photo" name="photo" />

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${productInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'summary', 'error')} required">
	<label for="summary">
		<g:message code="product.summary.label" default="Summary" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="summary" required="" value="${productInstance?.summary}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'status', 'error')} " style="display: none;">
	<label for="status">
		<g:message code="product.status.label" default="Status" />
		
	</label>
	<g:checkBox name="status" value="${productInstance?.status}" />

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="product.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${productInstance?.address}"/>

</div>

<g:if test="${productInstance?.isDonation == false}">
<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'contactDetail', 'error')} ">
	<label for="contactDetail">
		<g:message code="product.contactDetail.label" default="Contact Detail" />
		
	</label>
	<g:textField name="contactDetail" value="${productInstance?.contactDetail}"/>

</div>
</g:if>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'activeDate', 'error')} required">
	<label for="activeDate">
		<g:message code="product.activeDate.label" default="Active Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="activeDate" precision="day"  value="${productInstance?.activeDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="product.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${productdonation.Category.list()}" optionKey="id" required="" value="${productInstance?.category?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'isDonation', 'error')}" style="display: none;">
	<label for="isDonation">
		<g:message code="product.isDonation.label" default="Is Donation" />
		
	</label>
	<g:checkBox name="isDonation" value="${productInstance?.isDonation}" />

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'isHot', 'error')} ">
	<label for="isHot">
		<g:message code="product.isHot.label" default="Is Hot" />
		
	</label>
	<g:checkBox name="isHot" value="${productInstance?.isHot}" />

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'user', 'error')} required" style="display: none;">
	<label for="user">
		<g:message code="product.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${productdonation.User.list()}" optionKey="id" required="" value="${productInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'views', 'error')} required" style="display: none;">
	<label for="views">
		<g:message code="product.views.label" default="Views" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="views" type="number" value="${productInstance.views}" required=""/>

</div>

