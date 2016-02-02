
<%@ page import="Biblioteca.CRUD.Editorial" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'editorial.label', default: 'Editorial')}" />
        <title><g:message code="default.editorial.consultar" /></title>
    </head>
    <body>
        <a href="#list-editorial" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.biblioteca.inicio"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.editorial.nuevo" /></g:link></li>
                <li><g:link class="list" action="index"><g:message code="default.editorial.lista"/></g:link></li>
                </ul>
            </div>
            <div id="list-editorial" class="content scaffold-list" role="main">
                <h1><g:message code="default.editorial.lista" /></h1>
            </br>
            <div class="fieldContain">
                <g:form action="consulta" id="busqueda">
                    <label for="busqueda">
                        <h1><g:message code="principal.busqueda" default="Editorial:"/></h1>
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

                        <g:sortableColumn property="editorial" title="${message(code: 'editorial.editorial.label', default: 'Editorial')}" />
                        
                        <th></th>

                    </tr>
                </thead>
                <tbody>
                    <g:each in="${editorialInstanceList}" status="i" var="editorialInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

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
    </body>
</html>
