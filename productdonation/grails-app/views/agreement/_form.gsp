<%@ page import="productdonation.Agreement" %>



<div class="fieldcontain ${hasErrors(bean: agreementInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="agreement.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="content" required="" value="${agreementInstance?.content}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: agreementInstance, field: 'tag', 'error')} required">
	<label for="tag">
		<g:message code="agreement.tag.label" default="Tag" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tag" from="${agreementInstance.constraints.tag.inList}" required="" value="${agreementInstance?.tag}" valueMessagePrefix="agreement.tag"/>

</div>

