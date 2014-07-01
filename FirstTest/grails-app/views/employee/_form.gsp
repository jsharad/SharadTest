<%@ page import="firsttest.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'addresses', 'error')} ">
	<label for="addresses">
		<g:message code="employee.addresses.label" default="Addresses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${employeeInstance?.addresses?}" var="a">
    <li><g:link controller="address" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="address" action="create" params="['employee.id': employeeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'address.label', default: 'Address')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="employee.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${employeeInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="employee.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${employeeInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'salery', 'error')} required">
	<label for="salery">
		<g:message code="employee.salery.label" default="Salery" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salery" value="${fieldValue(bean: employeeInstance, field: 'salery')}" required=""/>
</div>

