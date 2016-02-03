
<%@ page import="Biblioteca.CRUD.Categoria" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
        <title><g:message code="default.categoria.consultar" /></title>
    </head>
    <body>
        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="header item"><asset:image class="ui mini circular image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/categoria/create')}" class="item"><asset:image class="ui mini image" src="add_icon.png" alt="Nueva Categoria"/><g:message code="default.categoria.nuevo"/></a>
            <a href="${createLink(uri: '/categoria/index')}" class="item"><asset:image class="ui mini image" src="list_icon.png" alt="Lista de Categorias"/><g:message code="default.categoria.lista"/></a>
        </div>
        <div id="div-content" class="ui segment conten">
            <div id="form-busqueda-div" class="ui segment container">
                <g:form id="busqueda" class="ui form" action="consulta">
                    <div class="field">
                        <label>Busqueda de categorias:</label>
                        <g:textField name="busqueda" placeholder="Buscar..."/>
                    </div>
                    <g:submitButton name="buscar" class="ui button blue" value="${message(code: 'principal.busqueda', default: 'Buscar')}"/>
                </g:form>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div id="div-tabla" class="ui segment container">
                <div  class="ui medium header">Consulta Categorias</div>
                <table class="ui celled table">
                    <thead>
                        <tr>
                            <g:sortableColumn id="th" property="categoria" title="${message(code: 'categoria.categoria.label', default: 'Categoria')}" />
                            <th id="th"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${categoriaInstanceList}" status="i" var="categoriaInstance">
                            <tr id="${(i % 2) == 1 ? 'td1' : 'o'}">
                                <td>${fieldValue(bean: categoriaInstance, field: "categoria")}</td>
                                <td><g:link action="show" id="${categoriaInstance.id}"><g:message code="default.biblioteca.detalle"/></g:link></td>
                                </tr>
                        </g:each>
                    </tbody>
                </table>
                <div class="pagination">
                    <g:paginate total="${categoriaInstanceCount ?: 0}" />
                </div>
            </div>
        </div>
    </body>
</html>
