<%@ page import="Biblioteca.CRUD.Autor" %>


<div>
    <div class="required field">
        <label><g:message code="autor.nombre.label" default="Nombre"/></label>
        <g:textField name="nombre" required="" value="${autorInstance?.nombre}"/>
    </div>

    <div class="required field">
        <label><g:message code="autor.aPaterno.label" default="Apellido Paterno"/></label>
        <g:textField name="aPaterno" required="" value="${autorInstance?.aPaterno}"/>
    </div>

    <div class="required field">
        <label><g:message code="autor.aMaterno.label" default="Apellido Materno"/></label>
        <g:textField name="aMaterno" required="" value="${autorInstance?.aMaterno}"/>
    </div>

    <div class="required field">
        <label><g:message code="autor.edad.label" default="Edad"/></label>
        <g:select name="edad" from="${1..150}" class="range" required="" value="${fieldValue(bean: autorInstance, field: 'edad')}"/>
    </div>

    <div class="field">
        <label><g:message code="autor.label.libros" default="Libros"/></label>
        <div class="ui ordered list">
            <g:each in="${autorInstance?.libros}" var="l">
                <g:link class="item" controller="libro" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link>
            </g:each>
            <g:link controller="libro" action="create" params="['autor.id': autorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'libro.label',default: 'Libro')])}</g:link>
            </div>
        </div>
    </div>



