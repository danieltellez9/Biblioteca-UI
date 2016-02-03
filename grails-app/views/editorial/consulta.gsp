
<%@ page import="Biblioteca.CRUD.Editorial" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'editorial.label', default: 'Editorial')}" />
        <title><g:message code="default.editorial.consultar" /></title>
    </head>
    <body>
        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="header item"><asset:image class="ui mini circular image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/editorial/create')}" class="item"><asset:image class="ui mini image" src="add_icon.png" alt="Nueva Editorial"/><g:message code="default.editorial.nuevo"/></a>
            <a href="${createLink(uri: '/editorial/index')}" class="item"><asset:image class="ui mini image" src="list_icon.png" alt="Lista de Editoriales"/><g:message code="default.editorial.lista"/></a>
        </div>
        <div id="div-content" class="ui segment container">
            <div id="form-busqueda-div" class="ui segment container">
                <g:form id="busqueda" class="ui form" action="consulta">
                    <div class="field">
                        <label>Busqueda de editoriales:</label>
                        <g:textField name="busqueda" placeholder="Buscar..."/>
                    </div>
                    <g:submitButton name="buscar" class="ui button blue" value="${message(code: 'principal.busqueda', default: 'Buscar')}"/>
                </g:form>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div id="div-tabla" class="ui segment container">
                <div class="ui medium header">Consulta de editoriales</div>
                <table class="ui celled table">
                    <thead>
                        <tr>
                            <g:sortableColumn id="th" property="editorial" title="${message(code: 'editorial.editorial.label', default: 'Editorial')}" />
                            <th id="th"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${editorialInstanceList}" status="i" var="editorialInstance">
                            <tr id="${(i % 2) == 1 ? 'td1' : 'o'}">
                                <td>${fieldValue(bean: editorialInstance, field: "editorial")}</td>
                                <td><g:link action="show" id="${editorialInstance.id}"><g:message code="default.biblioteca.detalle"/></g:link></td>
                            </tr>
                        </g:each>
                    </tbody>
                </table>
                <div class="pagination">
                    <g:paginate total="${editorialInstanceCount ?: 0}" />
                </div>
            </div>
        </div>
</body>
</html>
