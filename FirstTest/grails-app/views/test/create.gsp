<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'test.label', default: 'Test')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<r:require module="jquery"/>
		
		<script>
		$(document).ready(function(){
			 // $("#btnId").click(function(){
			    //alert($("#textId").val());
				 
				//  checkDataInDb();
			 // });
			});
		function checkDataInDb(){
			var flag=true;
			 var searchVal=$("#testFirstName").val();
			  var request = $.ajax({
				  url: "checkForFirstName",
				  type: "POST",
				  async:false,
				  data: { firstName : searchVal,
						lastName : "noVal"
					   },
				 // dataType: "application/json",
				 // contentType: "application/json"
				});
				 
				request.done(function( msg ) {
				//  alert(msg.ndata);
				  if(msg.ndata =='ndata'){
					  $("#existId").text("");
					  }
				  else{
					  $("#existId").text("Name already exist");
					  flag=false;
					  }
				});
				 
				request.fail(function( jqXHR, textStatus ) {
				  alert( "Request failed: " + textStatus );
				});
				return flag;
			} 
		
		</script>
	</head>
	<body>
		<a href="#create-test" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-test" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${testInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${testInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:testInstance, action:'save']" onsubmit="return checkDataInDb()" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
		<div>
		<font id="existId" color="red"></font>
		<%--<input type="button" id="btnId" value="search"/>
		--%></div>
	</body>
</html>
