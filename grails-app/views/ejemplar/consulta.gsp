
<%@ page import="Biblioteca.CRUD.Ejemplar" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'ejemplar.label', default: 'Ejemplar')}" />
        <title><g:message code="default.ejemplar.consultar"/></title>
    </head>
    <body>
        <a href="#list-ejemplar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.biblioteca.inicio"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.ejemplar.nuevo" /></g:link></li>
                <li><g:link class="list" action="index"><g:message code="default.ejemplar.lista"/></g:link></li>
            </ul>
            </div>
            <div id="list-ejemplar" class="content scaffold-list" role="main">
                <h1><g:message code="default.ejemplar.consultar"/></h1>
            </br>
            <div class="fieldContain">
                <g:form action="consulta" id="busqueda">
                    <label for="busqueda">
                        <h1><g:message code="principla.principal" default="Ejemplar"/></h1>
                    </label>
                    <g:textField name="busqueda" placeholder="Buscar" default="busqueda"/>
                    <g:submitButton name="Buscar" class="save" value="${message(code: 'principal.busqueda', default: 'Buscar')}" />
                </g:form>
            </div>
            </br>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                    <tr>

                        <g:sortableColumn property="clave" title="${message(code: 'ejemplar.clave.label', default: 'Clave')}" />

                        <g:sortableColumn property="localizacion" title="${message(code: 'ejemplar.localizacion.label', default: 'Localizacion')}" />

                        <th><g:message code="ejemplar.libro.label" default="Libro" /></th>
                        
                        <th></th>

                    </tr>
                </thead>
                <tbody>
                    <g:each in="${ejemplarInstanceList}" status="i" var="ejemplarInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                            <td>${fieldValue(bean: ejemplarInstance, field: "clave")}</td>

                            <td>${fieldValue(bean: ejemplarInstance, field: "localizacion")}</td>

                            <td>${fieldValue(bean: ejemplarInstance, field: "libro")}</td>
                            
                            <td><g:link action="show" id="${ejemplarInstance.id}"><g:message code="default.biblioteca.detalle" /></g:link></td>

                        </tr>
                    </g:each>
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${ejemplarInstanceCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
