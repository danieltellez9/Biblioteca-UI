<%@ page import="Biblioteca.CRUD.Ejemplar" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'ejemplar.label', default: 'Ejemplar')}" />
        <title><g:message code="default.ejemplar.actualizar"/></title>
    </head>
    <body>

        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="header item"><asset:image class="ui mini circular image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/ejemplar/index')}" class="item"><asset:image class="ui mini image" src="list_icon.png" alt="Lista de Ejemplares"/><g:message code="default.ejemplar.lista"/></a>
            <a href="${createLink(uri: '/ejemplar/create')}" class="item"><asset:image class="ui mini image" src="add_icon.png" alt="NuevoEjemplar"/><g:message code="default.ejemplar.nuevo"/></a>
        </div>

        <div id="div-content" class="ui segment container">
            <label id="tit-form" class="ui medium header"><g:message code="default.ejemplar.actualizar"/></label>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${ejemplarInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${ejemplarInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                </ul>
            </g:hasErrors>

            <div class="ui segment container">
                <g:form url="[resource:ejemplarInstance, action:'update']" method="PUT" class="ui form" id="forms">
                    <g:hiddenField name="version" value="${ejemplarInstance?.version}" />
                    <g:render template="form"/>
                    <br>
                    <g:actionSubmit class="ui button green" action="update" value="${message(code: 'default.biblioteca.actualizar', default: 'Update')}" />
                </g:form>
            </div>
        </div>
    </body>
</html>
