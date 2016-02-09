<%@ page import="todo.grails.TodoItem" %>



<div class="fieldcontain ${hasErrors(bean: todoItemInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="todoItem.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${todoItemInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: todoItemInstance, field: 'isDone', 'error')} ">
	<label for="isDone">
		<g:message code="todoItem.isDone.label" default="Is Done" />
		
	</label>
	<g:checkBox name="isDone" value="${todoItemInstance?.isDone}" />

</div>

