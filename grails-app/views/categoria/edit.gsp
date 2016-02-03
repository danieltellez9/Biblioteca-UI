<%@ page import="Biblioteca.CRUD.Categoria" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
        <title><g:message code="default.categoria.actualizar"/></title>
    </head>
    <body>
        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="item header"><asset:image src="logo_biblioteca.png" class="ui circular mini image" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/categoria/index')}" class="item"><asset:image src="list_icon.png" class="ui mini image" alt="Lista de Categorias"/><g:message code="default.categoria.lista"/></a>
            <a href="${createLink(uri: '/categoria/create')}" class="item"><asset:image src="add_icon.png" class="ui mini image" alt="Nueva Categoria"/><g:message code="default.categoria.nuevo"/></a>
        </div>
        <div id="div-content" class="ui segment container">
            <label id="tit-form" class="ui medium header"><g:message code="default.categoria.actualizar"/></label>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${categoriaInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${categoriaInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                </ul>
            </g:hasErrors>
            <div class="ui segment container">
                <g:form url="[resource:categoriaInstance, action:'update']" method="PUT" class="ui form" id="forms">
                    <g:hiddenField name="version" value="${categoriaInstance?.version}" />
                    <g:render template="form"/>
                    <br>
                    <g:actionSubmit class="ui button green" action="update" value="${message(code: 'default.biblioteca.actualizar', default: 'Update')}" />
                </g:form>
            </div>
        </div>
    </body>
</html>
