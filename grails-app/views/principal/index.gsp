
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="Biblioteca.CRUD.Libro" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="layout" content="main">
        <title><g:message code="default.principal.titulo"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    </head>
<body id="bo">
    <div id="div-menu" class="ui fluid six item menu">
        <a href="${createLink(uri: '/')}" class="item"><asset:image class="ui mini circular image" src="logo_biblioteca.png" alt="Inicio"/>Inicio</a>
        <a href="${createLink(uri: '/autor')}" class="item"><asset:image class="ui mini image" src="logo_autor.png" alt="Autores"/>Autores</a>
        <a href="${createLink(uri: '/categoria')}" class="item"><asset:image class="ui mini image" src="logo_categoria.png" alt="Categorias"/>Categorias</a>
        <a href="${createLink(uri: '/editorial')}" class="item"><asset:image class="ui mini image" src="logo_editorial.png" alt="Editoriales"/>Editoriales</a>
        <a href="${createLink(uri: '/libro')}" class="item"><asset:image class="ui mini image" src="logo_libros.png" alt="Libros"/>Libros</a>
        <a href="${createLink(uri: '/ejemplar')}" class="item"><asset:image class="ui mini image" src="logo_ejemplar.png" alt="Ejemplares"/>Ejemplares</a>
    </div>

    <div id="div-content" class="ui segment conten">
        <div id="form-busqueda-div" class="ui segment container">
            <g:form id="busqueda" class="ui form" action="show">
                <div class="field">
                    <label>Busqueda de libros: </label>
                    <g:textField name="busqueda" placeholder="Buscar..."/>
                </div>
                <g:submitButton name="buscar" class="ui button" value="${message(code: 'pincipal.busqueda', default: 'Buscar')}"></g:submitButton>
            </g:form>
        </div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <div id="div-tabla" class="ui segment container">
            <div id="div-tit-tabla" class="ui medium header">Todos los libros</div>
            <table class="ui celled table">
                <thead>
                    <tr>
                        <g:sortableColumn id="th" property="titulo" title="${message(code: 'libro.titulo.label', default: 'Titulo')}"/>
                        <g:sortableColumn id="th" property="categoria" title="${message(code: 'libro.categoria.label', default: 'Categoria')}"/>
                        <g:sortableColumn id="th" property="editorial" title="${message(code: 'libro.editorial.label', default: 'Editorial')}"/>
                        <g:sortableColumn id="th" property="numPag" title="${message(code: 'libro.numPag.label', default: 'Numero de Paginas')}"/>
                        <g:sortableColumn id="th" property="autor" title="Autor"><g:message code="libro.autor.label" default="Autor"/></g:sortableColumn>
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${libroInstanceList}" status="i" var="libroInstance">
                        <tr id="${(i % 2) == 1 ? 'td1' : 'o'}">
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
                <g:paginate total="${libroInstanceCount ?:0}"/>
            </div>
        </div>
    </div>
</body>
</html>
