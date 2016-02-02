
<%@ page import="Biblioteca.CRUD.Ejemplar" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'ejemplar.label', default: 'Ejemplar')}" />
        <title><g:message code="default.ejemplar.mostrar"/></title>
    </head>
    <body>
        <a href="#show-ejemplar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.biblioteca.inicio"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.ejemplar.lista" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.ejemplar.nuevo" /></g:link></li>
            </ul>
            </div>
            <div id="show-ejemplar" class="content scaffold-show" role="main">
                <h1><g:message code="default.ejemplar.mostrar" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ol class="property-list ejemplar">

                <g:if test="${ejemplarInstance?.clave}">
                    <li class="fieldcontain">
                        <span id="clave-label" class="property-label"><g:message code="ejemplar.clave.label" default="Clave" /></span>

                        <span class="property-value" aria-labelledby="clave-label"><g:fieldValue bean="${ejemplarInstance}" field="clave"/></span>

                    </li>
                </g:if>

                <g:if test="${ejemplarInstance?.localizacion}">
                    <li class="fieldcontain">
                        <span id="localizacion-label" class="property-label"><g:message code="ejemplar.localizacion.label" default="Localizacion" /></span>

                        <span class="property-value" aria-labelledby="localizacion-label"><g:fieldValue bean="${ejemplarInstance}" field="localizacion"/></span>

                    </li>
                </g:if>

                <g:if test="${ejemplarInstance?.libro}">
                    <li class="fieldcontain">
                        <span id="libro-label" class="property-label"><g:message code="ejemplar.libro.label" default="Libro" /></span>

                        <span class="property-value" aria-labelledby="libro-label"><g:link controller="libro" action="show" id="${ejemplarInstance?.libro?.id}">${ejemplarInstance?.libro?.encodeAsHTML()}</g:link></span>

                    </li>
                </g:if>

            </ol>
            <g:form url="[resource:ejemplarInstance, action:'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${ejemplarInstance}"><g:message code="default.biblioteca.actualizar" default="Edit" /></g:link>
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.biblioteca.eliminar', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
