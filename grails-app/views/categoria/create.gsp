<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
        <title><g:message code="default.categoria.nuevo" args="[entityName]" /></title>
    </head>
    <body>
        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="header item"><asset:image class="ui circular mini image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/categoria/index')}" class="item"><asset:image class="ui mini image" src="list_icon.png" alt="Lista de Categorias"/><g:message code="default.categoria.lista"/></a>
        </div>
        <div id="div-content" class="ui segment container">
            <label id="tit-form" class="ui medium header"><g:message code="default.autor.nuevo"/></label>
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
                <g:form url="[resource:categoriaInstance, action:'save']" class="ui form" id="forms">
                    <g:render template="form"/>
                    <br>
                    <g:submitButton name="create" class="ui button green" value="${message(code: 'default.biblioteca.guardar', default: 'Create')}" />
                </g:form>
            </div>
        </div>
    </body>
</html>
