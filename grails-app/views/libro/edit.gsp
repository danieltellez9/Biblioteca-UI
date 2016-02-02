<%@ page import="Biblioteca.CRUD.Libro" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'libro.label', default: 'Libro')}" />
        <title><g:message code="default.libro.actualizar"/></title>
    </head>
    <body>
        <a href="#edit-libro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.biblioteca.inicio"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.libro.lista" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.libro.nuevo" /></g:link></li>
                </ul>
            </div>
            <div id="edit-libro" class="content scaffold-edit" role="main">
                <h1><g:message code="default.libro.actualizar" /></h1>
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
            <g:form url="[resource:libroInstance, action:'update']" method="PUT" >
                <g:hiddenField name="version" value="${libroInstance?.version}" />
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:actionSubmit class="save" action="update" value="${message(code: 'default.biblioteca.actualizar', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
