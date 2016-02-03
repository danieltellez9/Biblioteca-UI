
<%@ page import="Biblioteca.CRUD.Editorial" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'editorial.label', default: 'Editorial')}" />
        <title><g:message code="default.editorial.mostrar" /></title>
    </head>
    <body>

        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="header item"><asset:image class="ui mini circular image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/editorial/index')}" class="item"><asset:image class="ui mini image" src="list_icon.png" alt="Lista de Editoriales"/><g:message code="default.editorial.lista"/></a>
            <a href="${createLink(uri: '/editorial/create')}" class="item"><asset:image class="ui mini image" src="add_icon.png" alt="Nueva Editorial"/><g:message code="default.editorial.nuevo"/></a>
        </div>
        <div id="div-content" class="ui segment container">
            <label id="tit-form" class="ui medium header"><g:message code="default.editorial.mostrar"/></label>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <fieldset>
                <div class="ui form" id="forms">
                    <g:if test="${editorialInstance?.editorial}">
                        <div class="field">
                            <label><g:message code="editorial.editorial.label" default="Editorial"/></label>
                            <g:textField name="editorial" readonly="" id="editorial-label" value="${fieldValue(bean: editorialInstance, field: 'editorial')}"/>
                        </div>
                    </g:if>
                    <div class="two fields">
                        <div class="field">
                            <g:form id="${fieldValue(bean: editorialInstance, field: 'id')}" action="edit">
                                <g:submitButton name="editarBtn" class="ui button green" value="${message(code: 'default.biblioteca.actualizar', default: 'Edit')}"/>
                            </g:form>
                        </div>
                        <div class="field">
                            <g:form url="[resource:editorialInstance, action:'delete']" method="DELETE" class="ui form" id="forms">
                                <g:actionSubmit class="ui button red" action="delete" value="${message(code: 'default.biblioteca.eliminar', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </g:form>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </body>
</html>
