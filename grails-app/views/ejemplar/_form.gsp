<%@ page import="Biblioteca.CRUD.Ejemplar" %>



<div class="fieldcontain ${hasErrors(bean: ejemplarInstance, field: 'clave', 'error')} required">
    <label for="clave">
        <g:message code="ejemplar.clave.label" default="Clave" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="clave" required="" value="${ejemplarInstance?.clave}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ejemplarInstance, field: 'localizacion', 'error')} required">
    <label for="localizacion">
        <g:message code="ejemplar.localizacion.label" default="Localizacion" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="localizacion" required="" value="${ejemplarInstance?.localizacion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ejemplarInstance, field: 'libro', 'error')} required">
    <label for="libro">
        <g:message code="ejemplar.libro.label" default="Libro" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="libro" name="libro.id" from="${Biblioteca.CRUD.Libro.list()}" optionKey="id" required="" value="${ejemplarInstance?.libro?.id}" class="many-to-one"/>

</div>

