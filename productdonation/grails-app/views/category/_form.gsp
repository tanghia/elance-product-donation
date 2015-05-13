<%@ page import="productdonation.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="category.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="50" required="" value="${categoryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="category.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${categoryInstance?.createdDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="category.status.label" default="Status" />
		
	</label>
	<g:checkBox name="status" value="${categoryInstance?.status}" />

</div>

