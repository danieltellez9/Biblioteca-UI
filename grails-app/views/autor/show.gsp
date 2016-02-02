
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
            <label id="tit-form" class="ui medium header"><g:message code="default.autor.mostrar"/></label>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <fieldset>
                <div class="ui form" id="forms">
                    <g:if test="${autorInstance?.nombre}">
                        <div class="field">
                            <label><g:message code="autor.nombre.label" default="Nombre"/></label>
                            <g:textField name="nombre" readonly="" id="nombre-label" value="${fieldValue(bean: autorInstance, field: 'nombre')}"/>
                        </div>
                    </g:if>

                    <g:if test="${autorInstance?.aPaterno}">
                        <div class="field">
                            <label><g:message code="autor.aPaterno.label" default="Apellido Paterno"/></label>
                            <g:textField name="aPaterno" readonly="" id="aPaterno-label" value="${fieldValue(bean: autorInstance, field: 'aPaterno')}" />
                        </div>
                    </g:if>

                    <g:if test="${autorInstance?.aMaterno}">
                        <div class="field">
                            <label><g:message code="autor.aMaterno.label" default="Apellido Materno"/></label>
                            <g:textField name="aMaterno" readonly="" id="aMaterno-label" value="${fieldValue(bean: autorInstance, field: 'aMaterno')}"/>
                        </div>
                    </g:if>

                    <g:if test="${autorInstance?.edad}">
                        <div class="field">
                            <label><g:message code="autor.edad.label" default="Edad"/></label>
                            <g:textField name="edad" readonly="" id="edad-label" value="${fieldValue(bean: autorInstance, field: 'edad')}"/>
                        </div>
                    </g:if>

                    <g:if test="${autorInstance?.libros}">
                        <div class="field">
                            <label><g:message code="autor.libros.label" default="Libros"/></label>
                            <div class="ui ordered list">
                                <g:each in="${autorInstance.libros}" var="l">
                                    <g:link class="item" controller="libro" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link>                            
                                </g:each>
                            </div>
                        </div>
                    </g:if>
                    <div class="two fields">
                        <div class="field">
                            <g:form id="${fieldValue(bean: autorInstance, field: 'id')}" action="edit">
                                <g:textField name="autorID" id="autorID" value="${fieldValue(bean: autorInstance, field: 'id')}" hidden=""/>
                                <g:submitButton name="editarBtn" class="ui button green" value="${message(code: 'default.biblioteca.actualizar', default: 'Update')}"/>
                            </g:form>
                        </div>
                        <div class="field">
                            <g:form url="[resource:autorInstance, action: 'delete']" method="DELETE" class="ui form" id="forms">
                                <g:actionSubmit class="ui button red" action="delete" value="${message(code: 'default.biblioteca.eliminar', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: '¿Esta seguro de eliminar?')}');"/>                   
                            </g:form>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </body>
</html>
