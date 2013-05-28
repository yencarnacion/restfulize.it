
<%@ page import="it.restfulize.RestfulizeitDatabase" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'restfulizeitDatabase.label', default: 'RestfulizeitDatabase')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-restfulizeitDatabase" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-restfulizeitDatabase" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list restfulizeitDatabase">
			
				<g:if test="${restfulizeitDatabaseInstance?.nickname}">
				<li class="fieldcontain">
					<span id="nickname-label" class="property-label"><g:message code="restfulizeitDatabase.nickname.label" default="Nickname" /></span>
					
						<span class="property-value" aria-labelledby="nickname-label"><g:fieldValue bean="${restfulizeitDatabaseInstance}" field="nickname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restfulizeitDatabaseInstance?.databaseUrl}">
				<li class="fieldcontain">
					<span id="databaseUrl-label" class="property-label"><g:message code="restfulizeitDatabase.databaseUrl.label" default="Database Url" /></span>
					
						<span class="property-value" aria-labelledby="databaseUrl-label"><g:fieldValue bean="${restfulizeitDatabaseInstance}" field="databaseUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restfulizeitDatabaseInstance?.databaseDriverClassname}">
				<li class="fieldcontain">
					<span id="databaseDriverClassname-label" class="property-label"><g:message code="restfulizeitDatabase.databaseDriverClassname.label" default="Database Driver Classname" /></span>
					
						<span class="property-value" aria-labelledby="databaseDriverClassname-label"><g:fieldValue bean="${restfulizeitDatabaseInstance}" field="databaseDriverClassname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restfulizeitDatabaseInstance?.pathOnServer}">
				<li class="fieldcontain">
					<span id="pathOnServer-label" class="property-label"><g:message code="restfulizeitDatabase.pathOnServer.label" default="Path On Server" /></span>
					
						<span class="property-value" aria-labelledby="pathOnServer-label"><g:fieldValue bean="${restfulizeitDatabaseInstance}" field="pathOnServer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restfulizeitDatabaseInstance?.secured}">
				<li class="fieldcontain">
					<span id="secured-label" class="property-label"><g:message code="restfulizeitDatabase.secured.label" default="Secured" /></span>
					
						<span class="property-value" aria-labelledby="secured-label"><g:formatBoolean boolean="${restfulizeitDatabaseInstance?.secured}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${restfulizeitDatabaseInstance?.securedCredentials}">
				<li class="fieldcontain">
					<span id="securedCredentials-label" class="property-label"><g:message code="restfulizeitDatabase.securedCredentials.label" default="Secured Credentials" /></span>
					
						<span class="property-value" aria-labelledby="securedCredentials-label"><g:fieldValue bean="${restfulizeitDatabaseInstance}" field="securedCredentials"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restfulizeitDatabaseInstance?.databaseCredentials}">
				<li class="fieldcontain">
					<span id="databaseCredentials-label" class="property-label"><g:message code="restfulizeitDatabase.databaseCredentials.label" default="Database Credentials" /></span>
					
						<span class="property-value" aria-labelledby="databaseCredentials-label"><g:fieldValue bean="${restfulizeitDatabaseInstance}" field="databaseCredentials"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${restfulizeitDatabaseInstance?.id}" />
					<g:link class="edit" action="edit" id="${restfulizeitDatabaseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
