<%@ page import="Biblioteca.CRUD.Libro" %>

<div>
    <div class="required field">
        <label><g:message code="libro.titulo.label" default="Titulo"/></label>
        <g:textField name="titulo" required="" value="${libroInstance?.titulo}"/>
    </div>
    <div class="required field">
        <label><g:message code="libro.numPag.label" default="Numero de Paginas"/></label>
        <g:field name="numPag" type="number" value="${libroInstance.numPag}" required=""/>
    </div>
    <div class="required field">
        <label><g:message code="libro.autor.label" default="Autor"/></label>
        <g:select id="autor" name="autor.id" from="${Biblioteca.CRUD.Autor.list()}" optionKey="id" required="" value="${libroInstance?.autor?.id}" class="many-to-one"/>
    </div>
    <div class="field">
        <label><g:message code="libro.categoria.label" default="Categoria"/></label>
        <g:select id="categoria" name="categoria.id" from="${Biblioteca.CRUD.Categoria.list()}" optionKey="id" required="" value="${libroInstance?.categoria?.id}" class="many-to-one"/>
    </div>
    <div class="field">
        <label><g:message code="libro.editorial.label" default="Editorial"/></label>
        <g:select id="editorial" name="editorial.id" from="${Biblioteca.CRUD.Editorial.list()}" optionKey="id" required="" value="${libroInstance?.editorial?.id}" class="many-to-many"/>
    </div>
</div>