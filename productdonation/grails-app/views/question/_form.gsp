<%@ page import="productdonation.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'name', 'error')} required form-group">
	<label for="name">
		<g:message code="question.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${questionInstance?.name}" class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'type', 'error')} required form-group">
	<label for="type">
		<g:message code="question.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${questionInstance.constraints.type.inList}" required="" value="${questionInstance?.type}" class="from-control" valueMessagePrefix="question.type"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'answers', 'error')} ">
	<label for="answers">
		<g:message code="question.answers.label" default="Answers" />
		
	</label>
	

<g:each in="${answerInstancesList}" var="answerInstance" status="i">
<hr/>
<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'answer', 'error')} required form-group">
	<label for="answer">
		<g:message code="answer.answer.label" default="Answer" /> ${i+1}
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="answer${i}" required="" value="${answerInstance?.answer}" class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'score', 'error')} required form-group">
	<label for="score">
		<g:message code="answer.score.label" default="Score" /> ${i+1}
		<span class="required-indicator">*</span>
	</label>
	<g:field name="score${i}" type="number" value="${answerInstance.score}" required="" class="form-control"/>

</div>
</g:each>
<input hidden="hidden" name="numberofanswer" value="${numberAnswer}" />

