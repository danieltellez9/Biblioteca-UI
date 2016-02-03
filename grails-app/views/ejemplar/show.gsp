
<%@ page import="Biblioteca.CRUD.Ejemplar" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'ejemplar.label', default: 'Ejemplar')}" />
        <title><g:message code="default.ejemplar.mostrar"/></title>
    </head>
    <body>

        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="header item"><asset:image class="ui mini circular image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/ejemplar/index')}" class="item"><asset:image class="ui mini image" src="list_icon.png" alt="Lista de Ejemplares"/><g:message code="default.ejemplar.lista"/></a>
            <a href="${createLink(uri: '/ejemplar/create')}" class="item"><asset:image class="ui mini image" src="add_icon.png" alt="Nuevo Ejemplar"/><g:message code="default.ejemplar.nuevo"/></a>
        </div>

        <div id="div-content" class="ui segment container">
            <label id="tit-form" class="ui medium header"><g:message code="default.ejemplar.mostrar"/></label>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <fieldset>

                <div class="ui form" id="forms">
                    <g:if test="${ejemplarInstance?.clave}">
                        <div class="field">
                            <label><g:message code="ejemplar.clave.label" default="Clave"/></label>
                            <g:textField name="clave" id="clave-label" readonly="" value="${fieldValue(bean: ejemplarInstance, field: 'clave')}"/>
                        </div>
                    </g:if>

                    <g:if test="${ejemplarInstance?.localizacion}">
                        <div class="field">
                            <label><g:message code="ejemplar.localizacion.label" default="Localizacion"/></label>
                            <g:textField name="localizacion" id="localizacion-label" readonly="" value="${fieldValue(bean: ejemplarInstance, field: 'localizacion')}"/>
                        </div>
                    </g:if>

                    <g:if test="${ejemplarInstance?.libro}">
                        <div class="field">
                            <label><g:message code="ejemplar.libro.label" default="Libro"/></label>
                            <div class="ui ordered list">
                                <g:link class="item" controller="libro" action="show" id="${ejemplarInstance?.libro?.id}">${ejemplarInstance?.libro?.encodeAsHTML()}</g:link>
                                </div>
                            </div>
                    </g:if>

                    <div class="two fields">
                        <div class="field">
                            <g:form id="${fieldValue(bean: ejemplarInstance, field: 'id')}" action="edit">
                                <g:submitButton name="editarBtn" class="ui button green" value="${message(code: 'default.biblioteca.actualizar', default: 'Update')}"/>
                            </g:form>
                        </div>
                        <div class="field">
                            <g:form url="[resource:ejemplarInstance, action:'delete']" method="DELETE" class="ui form" id="forms">
                                <g:actionSubmit class="ui button red" action="delete" value="${message(code: 'default.biblioteca.eliminar', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </g:form>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </body>
</html>
