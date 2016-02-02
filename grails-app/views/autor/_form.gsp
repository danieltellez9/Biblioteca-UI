<%@ page import="Biblioteca.CRUD.Autor" %>



<div class="fieldcontain ${hasErrors(bean: autorInstance, field: 'nombre', 'error')} required">
    <label for="nombre">
        <g:message code="autor.nombre.label" default="Nombre" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nombre" required="" value="${autorInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorInstance, field: 'aPaterno', 'error')} required">
    <label for="aPaterno">
        <g:message code="autor.aPaterno.label" default="Apellido Paterno" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="aPaterno" required="" value="${autorInstance?.aPaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorInstance, field: 'aMaterno', 'error')} required">
    <label for="aMaterno">
        <g:message code="autor.aMaterno.label" default="Apellido Materno" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="aMaterno" required="" value="${autorInstance?.aMaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorInstance, field: 'edad', 'error')} required">
    <label for="edad">
        <g:message code="autor.edad.label" default="Edad" />
        <span class="required-indicator">*</span>
    </label>
    <g:select name="edad" from="${1..150}" class="range" required="" value="${fieldValue(bean: autorInstance, field: 'edad')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorInstance, field: 'libros', 'error')} ">
    <label for="libros">
        <g:message code="autor.libros.label" default="Libros" />

    </label>

    <ul class="one-to-many">
        <g:each in="${autorInstance?.libros?}" var="l">
            <li><g:link controller="libro" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
        </g:each>
        <br>
        <li class="add">
            <g:link controller="libro" action="create" params="['autor.id': autorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'libro.label', default: 'Libro')])}</g:link>
        </li>
    </ul>


</div>

