
<%@ page import="Biblioteca.CRUD.Categoria" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
        <title><g:message code="default.categoria.lista" /></title>
    </head>
    <body>
        <a href="#list-categoria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.biblioteca.inicio"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.categoria.nuevo"/></g:link></li>
                </ul>
            </div>
            <div id="list-categoria" class="content scaffold-list" role="main">
                <h1><g:message code="default.categoria.lista"/></h1>
            </br>
            <div class="fieldContain">
                <g:form action="consulta" id="busqueda">
                    <label for="busqueda">
                        <h1><g:message code="principal.busqueda" default="Categoria:"/></h1>
                    </label>
                    <g:textField name="busqueda" placeholder="Buscar" default="busqueda"/>
                    <g:submitButton name="buscar" class="save" value="${message(code: 'principal.busqueda', default: 'Buscar')}"/>
                </g:form>
            </div>
            </br>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                    <tr>

                        <g:sortableColumn property="categoria" title="${message(code: 'categoria.categoria.label', default: 'Categoria')}" />
                        
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${categoriaInstanceList}" status="i" var="categoriaInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

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
    </body>
</html>
