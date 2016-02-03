<%@ page import="Biblioteca.CRUD.Libro" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'libro.label', default: 'Libro')}" />
        <title><g:message code="default.libro.actualizar"/></title>
    </head>
    <body>

        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="header item"><asset:image class="ui mini circular image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/libro/index')}" class="item"><asset:image class="ui mini image" src="list_icon.png" alt="Lista de Libros"/><g:message code="default.libro.lista"/></a>
            <a href="${createLink(uri: '/libro/create')}" class="item"><asset:image class="ui mini image" src="add_icon.png" alt="Nuevo Libro"/><g:message code="default.libro.nuevo"/></a>
        </div>

        <div id="div-content" class="ui segment container">
            <label id="tit-form" class="ui medium header"><g:message code="default.libro.actualizar"/></label>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${libroInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${libroInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                </ul>
            </g:hasErrors>

            <div class="ui segment container">
                <g:form url="[resource:libroInstance, action:'update']" method="PUT" class="ui form" id="forms">
                    <g:hiddenField name="version" value="${libroInstance?.version}" />
                    <g:render template="form"/>
                    <br>
                    <g:actionSubmit class="ui button green" action="update" value="${message(code: 'default.biblioteca.actualizar', default: 'Update')}" />
                </g:form>
            </div>
        </div>
    </body>
</html>
