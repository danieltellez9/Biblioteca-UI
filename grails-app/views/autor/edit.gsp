<%@ page import="Biblioteca.CRUD.Autor" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'autor.label', default: 'Autor')}" />
        <title><g:message code="default.autor.actualizar"/></title>
    </head>
    <body>
        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="item header"><asset:image src="logo_biblioteca.png" class="ui circular mini image" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/autor/index')}" class="item"><asset:image src="list_icon.png" class="ui mini image" alt="Lista de autores"/><g:message code="default.autor.lista"/></a>
            <a href="${createLink(uri: '/autor/create')}" class="item"><asset:image src="add_icon.png" class="ui mini image" alt="Nuevo autor"/><g:message code="default.autor.nuevo"/></a>
        </div>
        <div id="div-content" class="ui segment container">
            <label id="tit-form" class="ui medium header"><g:message code="default.autor.actualizar"/></label>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${autorInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${autorInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                </ul>
            </g:hasErrors>
            <div class="ui segment container">
                <g:form url="[resource:autorInstance, action:'update']" method="PUT" class="ui form" id="forms">
                    <g:hiddenField name="version" value="${autorInstance?.version}" />

                    <g:render template="form"/>
                    <br>
                    <g:actionSubmit class="ui button green" action="update" value="${message(code: 'default.biblioteca.actualizar', default: 'Update')}" />
                </g:form>
            </div>
        </div>
    </body>
</html>
