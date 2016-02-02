
<%@ page import="Biblioteca.CRUD.Libro" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'libro.label', default: 'Libro')}" />
        <title><g:message code="default.libro.lista"/></title>
    </head>
    <body>
        <a href="#list-libro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.biblioteca.inicio"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.libro.nuevo" /></g:link></li>
                </ul>
            </div>
            <div id="list-libro" class="content scaffold-list" role="main">
                <h1><g:message code="default.libro.lista"/></h1>
            </br>
            <div class="fieldContain">
                <g:form action="consulta" id="busqueda">
                    <label for="busqueda">
                        <h1><g:message code="principal.principal" default="Titulo"/></h1>
                    </label>
                    <g:textField name="busqueda" placeholder="Buscar" default="busqueda"/>
                    <g:submitButton name="Buscar" class="save" value="${message(code: 'principal.busqueda', default: 'Buscar')}"/>
                </g:form>
            </div>
            </br>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                    <tr>

                        <g:sortableColumn property="titulo" title="${message(code: 'libro.titulo.label', default: 'Titulo')}" />

                        <g:sortableColumn property="numPag" title="${message(code: 'libro.numPag.label', default: 'Numero de Paginas')}" />

                        <th><g:message code="libro.autor.label" default="Autor" /></th>

                        <th><g:message code="libro.categoria.label" default="Categoria" /></th>

                        <th><g:message code="libro.editorial.label" default="Editorial" /></th>

                        <th></th>

                    </tr>
                </thead>
                <tbody>
                    <g:each in="${libroInstanceList}" status="i" var="libroInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

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
    </body>
</html>
