
<%@ page import="Biblioteca.CRUD.Libro" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'libro.label', default: 'Libro')}" />
        <title><g:message code="default.libro.lista"/></title>
    </head>
    <body>
        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="header item"><asset:image class="ui mini circular image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/libro/create')}" class="item"><asset:image class="ui mini image" src="add_icon.png" alt="Nuevo Libro"/><g:message code="default.libro.nuevo"/></a>
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
                <div class="ui medium header">Todos los libros</div>
                <table class="ui celled table">
                    <thead>
                        <tr>
                            <g:sortableColumn id="th" property="titulo" title="${message(code: 'libro.titulo.label', default: 'Titulo')}" />
                            <g:sortableColumn id="th" property="numPag" title="${message(code: 'libro.numPag.label', default: 'Numero de Paginas')}" />
                            <g:sortableColumn id="th" property="autor" title="${message(code: 'libro.autor.label', default: 'Autor')}"/>
                            <g:sortableColumn id="th" property="categoria" title="${message(code: 'libro.categoria.label', default: 'Categoria')}"/>
                            <g:sortableColumn id="th" property="editorial" title="${message(code: 'libro.editorial.label', default: 'Editorial')}"/>
                            <th id="th"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${libroInstanceList}" status="i" var="libroInstance">
                            <tr id="${(i % 2) == 1 ? 'td1' : 'o'}">
                                <td>${fieldValue(bean: libroInstance, field: "titulo")}</td>
                                <td>${fieldValue(bean: libroInstance, field: "numPag")}</td>
                                <td>${fieldValue(bean: libroInstance, field: "autor")}</td>
                                <td>${fieldValue(bean: libroInstance, field: "categoria")}</td>
                                <td>${fieldValue(bean: libroInstance, field: "editorial")}</td>
                                <td><g:link action="show" id="${libroInstance.id}"><g:message code="default.biblioteca.detalle"/></g:link></td>
                            </tr>
                        </g:each>
                    </tbody>
                </table>
                <div class="pagination">
                    <g:paginate total="${libroInstanceCount ?: 0}" />
                </div>
            </div>
        </div>
    </body>
</html>
