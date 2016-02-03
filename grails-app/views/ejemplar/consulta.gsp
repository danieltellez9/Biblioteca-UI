
<%@ page import="Biblioteca.CRUD.Ejemplar" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'ejemplar.label', default: 'Ejemplar')}" />
        <title><g:message code="default.ejemplar.consultar"/></title>
    </head>
    <body>
        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="header item"><asset:image class="ui mini circular image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/ejemplar/create')}" class="item"><asset:image class="ui mini image" src="add_icon.png" alt="Nuevo Ejemplar"/><g:message code="default.ejemplar.nuevo"/></a>
            <a href="${createLink(uri: '/ejemplar/index')}" class="item"><asset:image class="ui mini image" src="list_icon.png" alt="Lista de Ejemplares"/><g:message code="default.ejemplar.lista"/></a>
        </div>
        <div id="div-content" class="ui segment container">
            <div id="form-busqueda-div" class="ui segment container">
                <g:form id="busqueda" class="ui form" action="consulta">
                    <div class="field">
                        <label>Busqueda de libros:</label>
                        <g:textField name="busqueda" placeholder="Buscar..."/>
                    </div>
                    <g:submitButton name="buscar" class="ui button blue" value="${message(code: 'principal.busqueda', default: 'Buscar')}"/>
                </g:form>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div id="div-tabla" class="ui segment container">
                <div class="ui medium header">Consulta de ejemplares</div>
                <table class="ui celled table">
                    <thead>
                        <tr>
                            <g:sortableColumn id="th" property="clave" title="${message(code: 'ejemplar.clave.label', default: 'Clave')}" />
                            <g:sortableColumn id="th" property="localizacion" title="${message(code: 'ejemplar.localizacion.label', default: 'Localizacion')}" />
                            <g:sortableColumn id="th" property="libro" title="${message(code: 'ejemplar.libro.label', default: 'Libro')}" />
                            <th id="th"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${ejemplarInstanceList}" status="i" var="ejemplarInstance">
                            <tr id="${(i % 2) == 1 ? 'td1' : 'o'}">
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
        </div>
    </body>
</html>
