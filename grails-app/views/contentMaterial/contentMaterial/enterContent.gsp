<%@ page import="it.restfulize.ContentMaterial" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contentMaterialInstance.label', default: 'ContentMaterial')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-contentMaterial" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-contentMaterial" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${contentMaterialInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${contentMaterialInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="contentMaterial" >
				<fieldset class="form">
            		<g:render template="contentForm"/>
        		</fieldset>
				<fieldset class="buttons">
                    %{--<g:submitButton name="back" value="${message(code: 'default.button.back.label', default: 'Back')}"></g:submitButton>--}%
                    <g:submitButton name="next" value="${message(code: 'default.button.next.label', default: 'Next')}"></g:submitButton>
                    <span class="alignRight"><g:submitButton class="save" name="save" value="${message(code: 'default.button.save.label', default: 'Save')}"></g:submitButton></span>

				</fieldset>
			</g:form>
		</div>
	</body>
</html>
