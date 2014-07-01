<%@ page import="firsttest.Test" %>



<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'testFirstName', 'error')} ">
	<label for="testFirstName">
		<g:message code="test.testFirstName.label" default="Test First Name" />
		
	</label>
	<g:textField name="testFirstName" value="${testInstance?.testFirstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'testLastName', 'error')} ">
	<label for="testLastName">
		<g:message code="test.testLastName.label" default="Test Last Name" />
		
	</label>
	<g:textField name="testLastName" value="${testInstance?.testLastName}"/>
</div>

