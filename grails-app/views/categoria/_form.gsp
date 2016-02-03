<%@ page import="Biblioteca.CRUD.Categoria" %>


<div>
    <div class="required field">
        <label><g:message code="categoria.categoria.label" default="Categoria"/></label>
        <g:textField name="categoria" required="" value="${categoriaInstance?.categoria}"/>
    </div>
</div>
