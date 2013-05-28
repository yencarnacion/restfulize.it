
<%@ page import="it.restfulize.RestfulizeitDatabase" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'restfulizeitDatabase.label', default: 'RestfulizeitDatabase')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-restfulizeitDatabase" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-restfulizeitDatabase" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nickname" title="${message(code: 'restfulizeitDatabase.nickname.label', default: 'Nickname')}" />
					
						<g:sortableColumn property="databaseUrl" title="${message(code: 'restfulizeitDatabase.databaseUrl.label', default: 'Database Url')}" />
					
						<g:sortableColumn property="databaseDriverClassname" title="${message(code: 'restfulizeitDatabase.databaseDriverClassname.label', default: 'Database Driver Classname')}" />
					
						<g:sortableColumn property="pathOnServer" title="${message(code: 'restfulizeitDatabase.pathOnServer.label', default: 'Path On Server')}" />
					
						<g:sortableColumn property="secured" title="${message(code: 'restfulizeitDatabase.secured.label', default: 'Secured')}" />
					
						<th><g:message code="restfulizeitDatabase.securedCredentials.label" default="Secured Credentials" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${restfulizeitDatabaseInstanceList}" status="i" var="restfulizeitDatabaseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${restfulizeitDatabaseInstance.id}">${fieldValue(bean: restfulizeitDatabaseInstance, field: "nickname")}</g:link></td>
					
						<td>${fieldValue(bean: restfulizeitDatabaseInstance, field: "databaseUrl")}</td>
					
						<td>${fieldValue(bean: restfulizeitDatabaseInstance, field: "databaseDriverClassname")}</td>
					
						<td>${fieldValue(bean: restfulizeitDatabaseInstance, field: "pathOnServer")}</td>
					
						<td><g:formatBoolean boolean="${restfulizeitDatabaseInstance.secured}" /></td>
					
						<td>${fieldValue(bean: restfulizeitDatabaseInstance, field: "securedCredentials")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${restfulizeitDatabaseInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
