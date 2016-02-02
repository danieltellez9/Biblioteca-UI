
<%@ page import="Biblioteca.CRUD.Autor" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'autor.label', default: 'Autor')}" />
        <title><g:message code="default.autor.lista" /></title>
    </head>
    <body>
        <a href="#list-autor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.biblioteca.inicio"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.autor.nuevo" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="list-autor" class="content scaffold-list" role="main">
                <h1><g:message code="default.autor.lista" /></h1>
            </br>
            <div class="fieldContain">
                <g:form action="consulta" id="busqueda">
                    <label for="busqueda">
                        <h1><g:message code="principal.busqueda" default="Autor:" /></h1>
                    </label>
                    <g:textField name="busqueda" placeholder="Buscar" default="busqueda"/>
                    <g:submitButton name="buscar" class="save" value="${message(code: 'pincipal.busqueda', default: 'Buscar')}" />
                </g:form>
            </div>
            </br>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                    <tr>

                        <g:sortableColumn property="nombre" title="${message(code: 'autor.nombre.label', default: 'Nombre')}" />

                        <g:sortableColumn property="aPaterno" title="${message(code: 'autor.aPaterno.label', default: 'Apellido Paterno')}" />

                        <g:sortableColumn property="aMaterno" title="${message(code: 'autor.aMaterno.label', default: 'Apellido Materno')}" />

                        <g:sortableColumn property="edad" title="${message(code: 'autor.edad.label', default: 'Edad')}" />

                        <th></th>

                    </tr>
                </thead>
                <tbody>
                    <g:each in="${autorInstanceList}" status="i" var="autorInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                            <td>${fieldValue(bean: autorInstance, field: "nombre")}</td>

                            <td>${fieldValue(bean: autorInstance, field: "aPaterno")}</td>

                            <td>${fieldValue(bean: autorInstance, field: "aMaterno")}</td>

                            <td>${fieldValue(bean: autorInstance, field: "edad")}</td>

                            <td><g:link action="show" id="${autorInstance.id}"><g:message code="default.biblioteca.detalle"/></g:link></td>

                        </tr>
                    </g:each>
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${autorInstanceCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
