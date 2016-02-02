
<%@ page import="Biblioteca.CRUD.Editorial" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'editorial.label', default: 'Editorial')}" />
        <title><g:message code="default.editorial.mostrar" /></title>
    </head>
    <body>
        <a href="#show-editorial" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.biblioteca.inicio"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.editorial.lista" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.editorial.nuevo" /></g:link></li>
                </ul>
            </div>
            <div id="show-editorial" class="content scaffold-show" role="main">
                <h1><g:message code="default.editorial.mostrar"/></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ol class="property-list editorial">

                <g:if test="${editorialInstance?.editorial}">
                    <li class="fieldcontain">
                        <span id="editorial-label" class="property-label"><g:message code="editorial.editorial.label" default="Editorial" /></span>

                        <span class="property-value" aria-labelledby="editorial-label"><g:fieldValue bean="${editorialInstance}" field="editorial"/></span>

                    </li>
                </g:if>

            </ol>
            <g:form url="[resource:editorialInstance, action:'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${editorialInstance}"><g:message code="default.biblioteca.actualizar" default="Edit" /></g:link>
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.biblioteca.eliminar', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
