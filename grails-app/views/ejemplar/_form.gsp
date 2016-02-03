<%@ page import="Biblioteca.CRUD.Ejemplar" %>


<div>
    <div class="required field">
        <label><g:message code="ejemplar.clave.label" default="Clave"/></label>
        <g:textField name="clave" required="" value="${ejemplarInstance?.clave}"/>
    </div>
    <div class="required field">
        <label><g:message code="ejemplar.localizacion.label" default="Localizacion"/></label>
        <g:textField name="localizacion" required="" value="${ejemplarInstance?.localizacion}"/>
    </div>
    <div class="required field">
        <label><g:message code="ejemplar.libro.label" default="Libro"/></label>
        <g:select id="libro" name="libro.id" from="${Biblioteca.CRUD.Libro.list()}" optionKey="id" required="" value="${ejemplarInstance?.libro?.id}" class="many-to-one"/>
    </div>

</div>
