
<%@ page import="Biblioteca.CRUD.Libro" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'libro.label', default: 'Libro')}" />
        <title><g:message code="default.libro.mostrar" /></title>
    </head>
    <body>
        <a href="#show-libro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.biblioteca.inicio"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.libro.lista"/></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.libro.nuevo" /></g:link></li>
                </ul>
            </div>
            <div id="show-libro" class="content scaffold-show" role="main">
                <h1><g:message code="default.libro.mostrar" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ol class="property-list libro">

                <g:if test="${libroInstance?.titulo}">
                    <li class="fieldcontain">
                        <span id="titulo-label" class="property-label"><g:message code="libro.titulo.label" default="Titulo" /></span>

                        <span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${libroInstance}" field="titulo"/></span>

                    </li>
                </g:if>

                <g:if test="${libroInstance?.numPag}">
                    <li class="fieldcontain">
                        <span id="numPag-label" class="property-label"><g:message code="libro.numPag.label" default="Numero de Paginas" /></span>

                        <span class="property-value" aria-labelledby="numPag-label"><g:fieldValue bean="${libroInstance}" field="numPag"/></span>

                    </li>
                </g:if>

                <g:if test="${libroInstance?.autor}">
                    <li class="fieldcontain">
                        <span id="autor-label" class="property-label"><g:message code="libro.autor.label" default="Autor" /></span>

                        <span class="property-value" aria-labelledby="autor-label"><g:link controller="autor" action="show" id="${libroInstance?.autor?.id}">${libroInstance?.autor?.encodeAsHTML()}</g:link></span>

                    </li>
                </g:if>

                <g:if test="${libroInstance?.categoria}">
                    <li class="fieldcontain">
                        <span id="categoria-label" class="property-label"><g:message code="libro.categoria.label" default="Categoria" /></span>

                        <span class="property-value" aria-labelledby="categoria-label"><g:link controller="categoria" action="show" id="${libroInstance?.categoria?.id}">${libroInstance?.categoria?.encodeAsHTML()}</g:link></span>

                    </li>
                </g:if>

                <g:if test="${libroInstance?.editorial}">
                    <li class="fieldcontain">
                        <span id="editorial-label" class="property-label"><g:message code="libro.editorial.label" default="Editorial" /></span>

                        <span class="property-value" aria-labelledby="editorial-label"><g:link controller="editorial" action="show" id="${libroInstance?.editorial?.id}">${libroInstance?.editorial?.encodeAsHTML()}</g:link></span>

                    </li>
                </g:if>

            </ol>
            <g:form url="[resource:libroInstance, action:'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${libroInstance}"><g:message code="default.biblioteca.actualizar" default="Edit" /></g:link>
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.biblioteca.eliminar', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
