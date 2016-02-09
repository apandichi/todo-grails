
<%@ page import="todo.grails.TodoItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'todoItem.label', default: 'TodoItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-todoItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-todoItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list todoItem">
			
				<g:if test="${todoItemInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="todoItem.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${todoItemInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${todoItemInstance?.isDone}">
				<li class="fieldcontain">
					<span id="isDone-label" class="property-label"><g:message code="todoItem.isDone.label" default="Is Done" /></span>
					
						<span class="property-value" aria-labelledby="isDone-label"><g:formatBoolean boolean="${todoItemInstance?.isDone}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:todoItemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${todoItemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
