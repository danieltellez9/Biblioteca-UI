
<%@ page import="Biblioteca.CRUD.Autor" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'autor.label', default: 'Autor')}" />
        <title><g:message code="default.autor.lista" /></title>
    </head>
    <body>
        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="header item"><asset:image class="ui mini circular image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/autor/create')}" class="item"><asset:image class="ui mini image" src="add_icon.png" alt="Nuevo Autor"/><g:message code="default.autor.nuevo"/></a>
        </div>

        <div id="div-content" class="ui segment conten">
            <div id="form-busqueda-div" class="ui segment container">
                <g:form id="busqueda" class="ui form" action="consulta">
                    <div class="field">
                        <label>Busqueda de autores:</label>
                        <g:textField name="busqueda" placeholder="Buscar..."/>
                    </div>
                    <g:submitButton name="buscar" class="ui button blue" value="${message(code: 'principal.busqueda', default: 'Buscar')}"/>
                </g:form>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div id="div-tabla" class="ui segment container">
                <div id="div-tit-tabla" class="ui medium header">Todos lo autores</div>

                <table class="ui celled table">
                    <thead>
                        <tr>

                            <g:sortableColumn id="th" property="nombre" title="${message(code: 'autor.nombre.label', default: 'Nombre')}" />

                            <g:sortableColumn id="th" property="aPaterno" title="${message(code: 'autor.aPaterno.label', default: 'Apellido Paterno')}" />

                            <g:sortableColumn id="th" property="aMaterno" title="${message(code: 'autor.aMaterno.label', default: 'Apellido Materno')}" />

                            <g:sortableColumn id="th" property="edad" title="${message(code: 'autor.edad.label', default: 'Edad')}" />

                            <th id="th"></th>

                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${autorInstanceList}" status="i" var="autorInstance">
                            <tr id="${(i % 2) == 1 ? 'td1' : 'o'}">

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

        </div>
    </body>
</html>
