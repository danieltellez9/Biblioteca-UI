<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'editorial.label', default: 'Editorial')}" />
        <title><g:message code="default.editorial.nuevo" /></title>
    </head>
    <body>
        <a href="#create-editorial" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.biblioteca.inicio"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.editorial.lista" /></g:link></li>
                </ul>
            </div>
            <div id="create-editorial" class="content scaffold-create" role="main">
                <h1><g:message code="default.editorial.nuevo" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${editorialInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${editorialInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                </ul>
            </g:hasErrors>
            <g:form url="[resource:editorialInstance, action:'save']" >
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.biblioteca.guardar', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
