
<%@ page import="Biblioteca.CRUD.Categoria" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
        <title><g:message code="default.categoria.mostrar" /></title>
    </head>
    <body>

        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="item header"><asset:image class="ui circular mini image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/categoria/index')}" class="item"><asset:image class="ui mini image" src="list_icon.png" alt="Lista de Categorias"/><g:message code="default.categoria.lista"/></a>
            <a href="${createLink(uri: '/categoria/create')}" class="item"><asset:image class="ui mini image" src="add_icon.png" alt="Nueva Categoria"/><g:message code="default.categoria.nuevo"/></a>
        </div>

        <div id="div-content" class="ui segment container">
            <label id="tit-form" class="ui medium header"><g:message code="default.categoria.mostrar"/></label>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <fieldset>
                <div class="ui form" id="forms">
                    <g:if test="${categoriaInstance?.categoria}">
                        <div class="field">
                            <label><g:message code="autor.categoria.label" default="Categoria"/></label>
                            <g:textField name="categoria" readonly="" id="categoria-label" value="${fieldValue(bean: categoriaInstance, field: 'categoria')}"/>
                        </div>
                    </g:if>
                    <div class="two fields">
                        <div class="field">
                            <g:form id="${fieldValue(bean: categoriaInstance, field: 'id')}" action="edit">
                                <g:submitButton name="editarBtn" class="ui button green" value="${message(code: 'default.biblioteca.actualizar', default: 'Update')}"/>
                            </g:form>
                        </div>
                        <div class="field">
                            <g:form url="[resource:categoriaInstance, action:'delete']" method="DELETE" class="ui form" id="forms">
                                <g:actionSubmit class="ui button red" action="delete" value="${message(code: 'default.biblioteca.eliminar', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                            </g:form>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
</body>
</html>
