<%@ page import="it.restfulize.RestfulizeitDatabase" %>



<div class="fieldcontain ${hasErrors(bean: restfulizeitDatabaseInstance, field: 'nickname', 'error')} ">
	<label for="nickname">
		<g:message code="restfulizeitDatabase.nickname.label" default="Nickname" />
		
	</label>
	<g:textField name="nickname" value="${restfulizeitDatabaseInstance?.nickname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restfulizeitDatabaseInstance, field: 'databaseUrl', 'error')} ">
	<label for="databaseUrl">
		<g:message code="restfulizeitDatabase.databaseUrl.label" default="Database Url" />
		
	</label>
	<g:textField name="databaseUrl" value="${restfulizeitDatabaseInstance?.databaseUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restfulizeitDatabaseInstance, field: 'databaseDriverClassname', 'error')} ">
	<label for="databaseDriverClassname">
		<g:message code="restfulizeitDatabase.databaseDriverClassname.label" default="Database Driver Classname" />
		
	</label>
	<g:textField name="databaseDriverClassname" value="${restfulizeitDatabaseInstance?.databaseDriverClassname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restfulizeitDatabaseInstance, field: 'pathOnServer', 'error')} ">
	<label for="pathOnServer">
		<g:message code="restfulizeitDatabase.pathOnServer.label" default="Path On Server" />
		
	</label>
	<g:textField name="pathOnServer" value="${restfulizeitDatabaseInstance?.pathOnServer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restfulizeitDatabaseInstance, field: 'secured', 'error')} ">
	<label for="secured">
		<g:message code="restfulizeitDatabase.secured.label" default="Secured" />
		
	</label>
	<g:checkBox name="secured" value="${restfulizeitDatabaseInstance?.secured}" />
</div>
<fieldset class="embedded"><legend><g:message code="restfulizeitDatabase.securedCredentials.label" default="Secured Credentials" /></legend>
<div class="fieldcontain ${hasErrors(bean: restfulizeitDatabaseInstance, field: 'securedCredentials.credPassword', 'error')} ">
	<label for="securedCredentials.credPassword">
		<g:message code="restfulizeitDatabase.securedCredentials.credPassword.label" default="Cred Password" />
		
	</label>
	<g:textField name="credPassword" value="${credentialsInstance?.credPassword}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restfulizeitDatabaseInstance, field: 'securedCredentials.credUsername', 'error')} ">
	<label for="securedCredentials.credUsername">
		<g:message code="restfulizeitDatabase.securedCredentials.credUsername.label" default="Cred Username" />
		
	</label>
	<g:textField name="credUsername" value="${credentialsInstance?.credUsername}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="restfulizeitDatabase.databaseCredentials.label" default="Database Credentials" /></legend>
<div class="fieldcontain ${hasErrors(bean: restfulizeitDatabaseInstance, field: 'databaseCredentials.credPassword', 'error')} ">
	<label for="databaseCredentials.credPassword">
		<g:message code="restfulizeitDatabase.databaseCredentials.credPassword.label" default="Cred Password" />
		
	</label>
	<g:textField name="credPassword" value="${credentialsInstance?.credPassword}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: restfulizeitDatabaseInstance, field: 'databaseCredentials.credUsername', 'error')} ">
	<label for="databaseCredentials.credUsername">
		<g:message code="restfulizeitDatabase.databaseCredentials.credUsername.label" default="Cred Username" />
		
	</label>
	<g:textField name="credUsername" value="${credentialsInstance?.credUsername}"/>
</div>
</fieldset>
