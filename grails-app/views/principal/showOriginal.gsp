<%@ page import="Biblioteca.CRUD.Libro" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="layout" content="main">
        <title><g:message code="default.principal.consulta" /></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
</head>
<body>
    <div class="nav" role="navigation">
        <ul>
            <li class="controller"><g:link class="home" href="${createLink(uri: '/')}"><g:message code="default.biblioteca.inicio" /></g:link></li>
            <li class="controller"><g:link controller="autor">Autores</g:link></li>
            <li class="controller"><g:link controller="editorial">Editoriales</g:link></li>
            <li class="controller"><g:link controller="categoria">Categorias</g:link></li>
            <li class="controller"><g:link controller="libro">Libros</g:link></li>
            <li class="controller"><g:link controller="ejemplar">Ejemplares</g:link></li>
            </ul>
        </div>
        <div id="list-libro" class="content scaffold-list" role="main">
            <h1><g:message code="default.principal.consulta" /></h1>
            </br>
            <div class="fieldContain">
            <g:form action="show" id="busqueda">
                <label for="busqueda">
                    <h1><g:message code="principal.busqueda" default="Titulo:" /></h1>
                </label>
                <g:textField name="busqueda" placeholder="Buscar" default="busqueda" value=""/>
                <g:submitButton name="buscar" class="save" value="${message(code: 'pincipal.busqueda', default: 'Buscar')}" />
            </g:form>
        </div>
        </br>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <table>
            <thead>
                <tr>

                    <g:sortableColumn property="titulo" title="${message(code: 'libro.titulo.label', default: 'Titulo')}" />

                    <g:sortableColumn property="categoria" title="${message(code: 'libro.categoria.label', default: 'Categoria')}" />

                    <g:sortableColumn property="editorial" title="${message(code: 'libro.editorial.label', default: 'Editorial')}" />

                    <g:sortableColumn property="numPag" title="${message(code: 'libro.numPag.label', default: 'Numero Paginas')}" />

                    <th><g:message code="libro.autor.label" default="Autor" /></th>

                </tr>
            </thead>
            <tbody>
                <g:each in="${libroInstanceList}" status="i" var="libroInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td>${fieldValue(bean: libroInstance, field: "titulo")}</td>

                        <td>${fieldValue(bean: libroInstance, field: "categoria")}</td>

                        <td>${fieldValue(bean: libroInstance, field: "editorial")}</td>

                        <td>${fieldValue(bean: libroInstance, field: "numPag")}</td>

                        <td>${fieldValue(bean: libroInstance, field: "autor")}</td>

                    </tr>
                </g:each>
            </tbody>
        </table>
        <div class="pagination">
            <g:paginate total="${libroInstanceCount ?: 0}" />
        </div>
    </div>
    <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
</body>
</html>