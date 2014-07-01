<%@ page import="firsttest.Address" %>



<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="address.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${addressInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="address.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${firsttest.Employee.list()}" optionKey="id" required="" value="${addressInstance?.employee?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'pin', 'error')} ">
	<label for="pin">
		<g:message code="address.pin.label" default="Pin" />
		
	</label>
	<g:textField name="pin" value="${addressInstance?.pin}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="address.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${addressInstance?.state}"/>
</div>

