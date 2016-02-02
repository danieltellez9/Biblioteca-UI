
<%@ page import="Biblioteca.CRUD.Autor" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'autor.label', default: 'Autor')}" />
        <title><g:message code="default.autor.mostrar" args="[entityName]" /></title>
    </head>
    <body>

        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="item header"><asset:image class="ui circular mini image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/autor/index')}" class="item"><asset:image class="ui mini image" src="list_icon.png" alt="Lista de autores"/><g:message code="default.autor.lista"/></a>
            <a href="${createLink(uri: '/autor/create')}" class="item"><asset:image class="ui mini image" src="add_icon.png" alt="Nuevo autor"/><g:message code="default.autor.nuevo"/></a>
        </div>


        <div id="div-content" class="ui segment container">
            <label id="tit-form" class="ui medium header"><g:message code="default.autor.mostrar" args="[entityName]" /></label>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <ol class="property-list autor">

                <g:if test="${autorInstance?.nombre}">
                    <li class="fieldcontain">
                        <span id="nombre-label" class="property-label"><g:message code="autor.nombre.label" default="Nombre" /></span>

                        <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${autorInstance}" field="nombre"/></span>

                    </li>
                </g:if>

                <g:if test="${autorInstance?.aPaterno}">
                    <li class="fieldcontain">
                        <span id="aPaterno-label" class="property-label"><g:message code="autor.aPaterno.label" default="Apellido Paterno" /></span>

                        <span class="property-value" aria-labelledby="aPaterno-label"><g:fieldValue bean="${autorInstance}" field="aPaterno"/></span>

                    </li>
                </g:if>

                <g:if test="${autorInstance?.aMaterno}">
                    <li class="fieldcontain">
                        <span id="aMaterno-label" class="property-label"><g:message code="autor.aMaterno.label" default="Apellido Materno" /></span>

                        <span class="property-value" aria-labelledby="aMaterno-label"><g:fieldValue bean="${autorInstance}" field="aMaterno"/></span>

                    </li>
                </g:if>

                <g:if test="${autorInstance?.edad}">
                    <li class="fieldcontain">
                        <span id="edad-label" class="property-label"><g:message code="autor.edad.label" default="Edad" /></span>

                        <span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${autorInstance}" field="edad"/></span>

                    </li>
                </g:if>

                <g:if test="${autorInstance?.libros}">
                    <li class="fieldcontain">
                        <span id="libros-label" class="property-label"><g:message code="autor.libros.label" default="Libros" /></span>

                        <g:each in="${autorInstance.libros}" var="l">
                            <span class="property-value" aria-labelledby="libros-label"><g:link controller="libro" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
                        </g:each>

                    </li>
                </g:if>

            </ol>
            <g:form url="[resource:autorInstance, action:'delete']" method="DELETE" class="ui form" id="forms">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${autorInstance}"><g:message code="default.biblioteca.actualizar" default="Edit" /></g:link>
                    <g:actionSubmit class="ui button" action="delete" value="${message(code: 'default.biblioteca.eliminar', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>

        <div id="show-autor" class="content scaffold-show" role="main">
            <h1><g:message code="default.autor.mostrar" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ol class="property-list autor">

                <g:if test="${autorInstance?.nombre}">
                    <li class="fieldcontain">
                        <span id="nombre-label" class="property-label"><g:message code="autor.nombre.label" default="Nombre" /></span>

                        <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${autorInstance}" field="nombre"/></span>

                    </li>
                </g:if>

                <g:if test="${autorInstance?.aPaterno}">
                    <li class="fieldcontain">
                        <span id="aPaterno-label" class="property-label"><g:message code="autor.aPaterno.label" default="Apellido Paterno" /></span>

                        <span class="property-value" aria-labelledby="aPaterno-label"><g:fieldValue bean="${autorInstance}" field="aPaterno"/></span>

                    </li>
                </g:if>

                <g:if test="${autorInstance?.aMaterno}">
                    <li class="fieldcontain">
                        <span id="aMaterno-label" class="property-label"><g:message code="autor.aMaterno.label" default="Apellido Materno" /></span>

                        <span class="property-value" aria-labelledby="aMaterno-label"><g:fieldValue bean="${autorInstance}" field="aMaterno"/></span>

                    </li>
                </g:if>

                <g:if test="${autorInstance?.edad}">
                    <li class="fieldcontain">
                        <span id="edad-label" class="property-label"><g:message code="autor.edad.label" default="Edad" /></span>

                        <span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${autorInstance}" field="edad"/></span>

                    </li>
                </g:if>

                <g:if test="${autorInstance?.libros}">
                    <li class="fieldcontain">
                        <span id="libros-label" class="property-label"><g:message code="autor.libros.label" default="Libros" /></span>

                        <g:each in="${autorInstance.libros}" var="l">
                            <span class="property-value" aria-labelledby="libros-label"><g:link controller="libro" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
                        </g:each>

                    </li>
                </g:if>

            </ol>
            <g:form url="[resource:autorInstance, action:'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${autorInstance}"><g:message code="default.biblioteca.actualizar" default="Edit" /></g:link>
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.biblioteca.eliminar', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
