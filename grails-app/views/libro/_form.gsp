<%@ page import="Biblioteca.CRUD.Libro" %>



<div class="fieldcontain ${hasErrors(bean: libroInstance, field: 'titulo', 'error')} required">
    <label for="titulo">
        <g:message code="libro.titulo.label" default="Titulo" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="titulo" required="" value="${libroInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libroInstance, field: 'numPag', 'error')} required">
    <label for="numPag">
        <g:message code="libro.numPag.label" default="Numero de Paginas" />
        <span class="required-indicator">*</span>
    </label>
    <g:field name="numPag" type="number" value="${libroInstance.numPag}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: libroInstance, field: 'autor', 'error')} required">
    <label for="autor">
        <g:message code="libro.autor.label" default="Autor" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="autor" name="autor.id" from="${Biblioteca.CRUD.Autor.list()}" optionKey="id" required="" value="${libroInstance?.autor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libroInstance, field: 'categoria', 'error')} required">
    <label for="categoria">
        <g:message code="libro.categoria.label" default="Categoria" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="categoria" name="categoria.id" from="${Biblioteca.CRUD.Categoria.list()}" optionKey="id" required="" value="${libroInstance?.categoria?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libroInstance, field: 'editorial', 'error')} required">
    <label for="editorial">
        <g:message code="libro.editorial.label" default="Editorial" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="editorial" name="editorial.id" from="${Biblioteca.CRUD.Editorial.list()}" optionKey="id" required="" value="${libroInstance?.editorial?.id}" class="many-to-one"/>

</div>

