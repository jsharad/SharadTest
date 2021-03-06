
<%@ page import="firsttest.Test" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'test.label', default: 'Test')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-test" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-test" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list test">
			
				<g:if test="${testInstance?.testFirstName}">
				<li class="fieldcontain">
					<span id="testFirstName-label" class="property-label"><g:message code="test.testFirstName.label" default="Test First Name" /></span>
					
						<span class="property-value" aria-labelledby="testFirstName-label"><g:fieldValue bean="${testInstance}" field="testFirstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.testLastName}">
				<li class="fieldcontain">
					<span id="testLastName-label" class="property-label"><g:message code="test.testLastName.label" default="Test Last Name" /></span>
					
						<span class="property-value" aria-labelledby="testLastName-label"><g:fieldValue bean="${testInstance}" field="testLastName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:testInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${testInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
