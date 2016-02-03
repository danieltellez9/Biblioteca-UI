
<%@ page import="Biblioteca.CRUD.Libro" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'libro.label', default: 'Libro')}" />
        <title><g:message code="default.libro.mostrar" /></title>
    </head>
    <body>

        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="header item"><asset:image class="ui mini circular image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/libro/index')}" class="item"><asset:image class="ui mini image" src="list_icon.png" alt="Lista de Libros"/><g:message code="default.libro.lista"/></a>
            <a href="${createLink(uri: '/libro/create')}" class="item"><asset:image class="ui mini image" src="add_icon.png" alt="Nuevo Libro"/><g:message code="default.libro.nuevo"/></a>
        </div>

        <div id="div-content" class="ui segment container">
            <label id="tit-form" class="ui medium header"><g:message code="default.libro.mostrar"/></label>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <fieldset>
                <div class="ui form" id="forms">
                    <g:if test="${libroInstance?.titulo}">
                        <div class="field">
                            <label><g:message code="libro.titulo.label" default="Titulo"/></label>
                            <g:textField name="titulo" id="titulo-label" readonly="" value="${fieldValue(bean: libroInstance, field: 'titulo')}"/>
                        </div>
                    </g:if>

                    <g:if test="${libroInstance?.numPag}">
                        <div class="field">
                            <label><g:message code="libro.numPag.label" default="Numero de Paginas"/></label>
                            <g:textField name="numPag" id="numPag-label" readonly="" value="${fieldValue(bean: libroInstance, field: 'numPag')}"/>
                        </div>
                    </g:if>

                    <g:if test="${libroIsntance?.autor}">
                        <div class="field">
                            <label><g:message code="libro.autor.label" default="Autor"/></label>
                            <g:textField name="autor" readonly="" id="autor-label" value="${fieldValue(bean: libroInstance, field: 'autor')}"/>
                        </div>
                    </g:if>

                    <g:if test="${libroInstance?.categoria}">
                        <div class="field">
                            <label><g:message code="libro.categoria.label" default="Categoria"/></label>
                            <g:textField name="categoria" id="categoria-label" readonly="" value="${fieldValue(bean: libroInstance, field: 'categoria')}"/>
                        </div>
                    </g:if>

                    <g:if test="${libroInstance?.editorial}">
                        <div class="field">
                            <label><g:message code="libro.editorial.label" default="Editorial"/></label>
                            <g:textField name="editorial" id="editorial-label" readonly="" value="${fieldValue(bean: libroInstance, field: 'editorial')}"/>
                        </div>
                    </g:if>

                    <div class="two fields">
                        <div class="field">
                            <g:form id="${fieldValue(bean: libroInstance, field: 'id')}" action="edit">
                                <g:submitButton name="editarBtn" class="ui button green" value="${message(code: 'default.biblioteca.actualizar', default: 'Edit')}"/>
                            </g:form>
                        </div>
                        <div class="field">
                            <g:form url="[resource:libroInstance, action:'delete']" method="DELETE" class="ui form" id="forms">
                                <g:actionSubmit class="ui button red" action="delete" value="${message(code: 'default.biblioteca.eliminar', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </g:form>
                        </div>
                    </div>

                </div>
            </fieldset>
        </div>
    </body>
</html>
