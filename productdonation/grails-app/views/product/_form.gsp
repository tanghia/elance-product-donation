<%@ page import="productdonation.Product"%>



<div hidden="hidden"
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'tag', 'error')} required form-group">
	<label for="tag"> <g:message code="product.tag.label"
			default="Tag" /> <span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" name="tag"
		from="${productInstance.constraints.tag.inList}" required=""
		value="${productInstance?.tag}" valueMessagePrefix="product.tag" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'productName', 'error')} required form-group">
	<label for="productName"> <g:message
			code="product.productName.label" default="Product Name" /> <span
		class="required-indicator">*</span>
	</label>
	<g:textField name="productName" required=""
		value="${productInstance?.productName}" class="form-control" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'photo', 'error')} required form-group">
	<label for="photo"> <g:message code="product.photo.label"
			default="Photo" /> <span class="required-indicator">*</span>
	</label> 
	<br/>
	<img src="data:image/png;base64,${productInstance.photo?.encodeBase64()}"class="img-rounded" alt="${productInstance.productName}" style="height: 50px;width:50px">
	<input type="file" id="photo" name="photo"
		value="${productInstance?.photo}" class="form-control" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required form-group">
	<label for="description"> <g:message
			code="product.description.label" default="Description" /> <span
		class="required-indicator">*</span>
	</label>
	<g:textArea name="description" required=""
		value="${productInstance?.description}" class="form-control" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'summary', 'error')} required form-group">
	<label for="summary"> <g:message code="product.summary.label"
			default="Summary" /> <span class="required-indicator">*</span>
	</label>
	<g:textArea name="summary" required=""
		value="${productInstance?.summary}" class="form-control" />

</div>
<sec:ifAnyGranted roles="ROLE_ADMIN">
	<div
		class="fieldcontain ${hasErrors(bean: productInstance, field: 'status', 'error')} form-group">
		<label for="status"> <g:message code="product.status.label"
				default="Status" />

		</label>
		<g:checkBox name="status" value="${productInstance?.status}"
			class="form-control" />
	</div>
</sec:ifAnyGranted>
<%----%>
<%--<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'address', 'error')} ">--%>
<%--	<label for="address">--%>
<%--		<g:message code="product.address.label" default="Address" />--%>
<%--		--%>
<%--	</label>--%>
<%--	<g:textField name="address" value="${productInstance?.address}"/>--%>
<%----%>
<%--</div>--%>
<%----%>
<%--<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'createdDate', 'error')} required">--%>
<%--	<label for="createdDate">--%>
<%--		<g:message code="product.createdDate.label" default="Created Date" />--%>
<%--		<span class="required-indicator">*</span>--%>
<%--	</label>--%>
<%--	<g:datePicker name="createdDate" precision="day"  value="${productInstance?.createdDate}"  />--%>
<%----%>
<%--</div>--%>
<sec:ifAnyGranted roles="ROLE_ADMIN">
	<div
		class="fieldcontain ${hasErrors(bean: productInstance, field: 'activeDate', 'error')} required form-group">
		<label for="activeDate"> <g:message
				code="product.activeDate.label" default="Active Date" /> <span
			class="required-indicator">*</span>
		</label>
		<g:datePicker name="activeDate" precision="day"
			value="${productInstance?.activeDate}" class="form-control" />

	</div>
</sec:ifAnyGranted>
<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'category', 'error')} required form-group">
	<label for="category"> <g:message code="product.category.label"
			default="Category" /> <span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="category" name="category.id"
		from="${productdonation.Category.list()}" optionKey="id" required=""
		value="${productInstance?.category?.id}"
		class="many-to-one form-control" />

</div>

<%--<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'isDonation', 'error')} ">--%>
<%--	<label for="isDonation">--%>
<%--		<g:message code="product.isDonation.label" default="Is Donation" />--%>
<%--		--%>
<%--	</label>--%>
<%--	<g:checkBox name="isDonation" value="${productInstance?.isDonation}" />--%>
<%----%>
<%--</div>--%>
<%----%>
<%--<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'isHot', 'error')} ">--%>
<%--	<label for="isHot">--%>
<%--		<g:message code="product.isHot.label" default="Is Hot" />--%>
<%--		--%>
<%--	</label>--%>
<%--	<g:checkBox name="isHot" value="${productInstance?.isHot}" />--%>
<%----%>
<%--</div>--%>

<div hidden="hidden"
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'user', 'error')} required">
	<label for="user"> <g:message code="product.user.label"
			default="User" /> <span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id"
		from="${productdonation.User.list()}" optionKey="id" required=""
		value="${productInstance?.user?.id}" class="many-to-one form-control" />

</div>
<sec:ifAnyGranted roles="ROLE_ADMIN">
	<div
		class="fieldcontain ${hasErrors(bean: productInstance, field: 'isHot', 'error')} form-group">
		<label for="isHot"> <g:message code="product.isHot.label"
				default="Is Hot" />
		</label>
		<g:checkBox name="isHot" value="${productInstance?.isHot}" />
	</div>
</sec:ifAnyGranted>
<%----%>
<%--<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'views', 'error')} required">--%>
<%--	<label for="views">--%>
<%--		<g:message code="product.views.label" default="Views" />--%>
<%--		<span class="required-indicator">*</span>--%>
<%--	</label>--%>
<%--	<g:field name="views" type="number" value="${productInstance.views}" required=""/>--%>
<%----%>
<%--</div>--%>

