<%@ page import="Biblioteca.CRUD.Editorial" %>



<div class="fieldcontain ${hasErrors(bean: editorialInstance, field: 'editorial', 'error')} required">
    <label for="editorial">
        <g:message code="editorial.editorial.label" default="Editorial" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="editorial" required="" value="${editorialInstance?.editorial}"/>

</div>

