<%@ page import="productdonation.User"%>



<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} form-group ">
	<label for="name"> <g:message code="user.name.label"
			default="Name" />

	</label>
	<g:textField name="name" value="${userInstance?.name}"
		class="form-control" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} form-group">
	<label for="lastName"> <g:message code="user.lastName.label"
			default="Last Name" />

	</label>
	<g:textField name="lastName" value="${userInstance?.lastName}"
		class="form-control" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required form-group">
	<label for="username"> <g:message code="user.username.label"
			default="Username" /> <span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="username" required=""
		value="${userInstance?.username}" class="form-control" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required form-group">
	<label for="password"> <g:message code="user.password.label"
			default="Password" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required=""
		value="${userInstance?.password}" class="form-control" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'phoneNumber', 'error')} form-group">
	<label for="phoneNumber"> <g:message
			code="user.phoneNumber.label" default="Phone Number" />

	</label>
	<g:textField name="phoneNumber" value="${userInstance?.phoneNumber}" class="form-control"/>

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'isNewEmailReciever', 'error')}">
	<label for="isNewEmailReciever"> <g:message
			code="user.isNewEmailReciever.label" default="Is New Email Reciever" />

	</label>
	<g:checkBox name="isNewEmailReciever"
		value="${userInstance?.isNewEmailReciever}" />

</div>

<%--<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'avatar', 'error')} form-group ">
	<label for="avatar"> <g:message code="user.avatar.label"
			default="Avatar" />

	</label> <input type="file" id="avatar" name="avatar" />

</div>

--%><div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'address', 'error')} form-group">
	<label for="address"> <g:message code="user.address.label"
			default="Address" />

	</label>
	<g:textField name="address" value="${userInstance?.address}"
		class="form-control" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'description', 'error')} form-group">
	<label for="description"> <g:message
			code="user.description.label" default="Description" />

	</label>
	<g:textField name="description" value="${userInstance?.description}"
		class="form-control" />

</div>

<%--<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'createdDate', 'error')} form-group">
	<label for="createdDate">
		<g:message code="user.createdDate.label" default="Created Date" />
		
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${userInstance?.createdDate}" default="none" noSelection="['': '']"  class="form-control"/>

</div>

--%>
<%--<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} form-group">
	<label for="accountExpired"> <g:message
			code="user.accountExpired.label" default="Account Expired" />

	</label>
	<g:checkBox name="accountExpired"
		value="${userInstance?.accountExpired}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked"> <g:message
			code="user.accountLocked.label" default="Account Locked" />

	</label>
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled"> <g:message code="user.enabled.label"
			default="Enabled" />

	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired"> <g:message
			code="user.passwordExpired.label" default="Password Expired" />

	</label>
	<g:checkBox name="passwordExpired"
		value="${userInstance?.passwordExpired}" />

</div>
--%>
