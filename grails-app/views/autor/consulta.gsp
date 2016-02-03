<%@ page import="Biblioteca.CRUD.Autor" %>
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
        <title><g:message code="default.autor.consultar" /></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    </head>
    <body>
        <div class="ui menu">
            <a href="${createLink(uri: '/')}" class="item header"><asset:image class="ui mini cirucular image" src="logo_biblioteca.png" alt="Inicio"/><g:message code="default.biblioteca.inicio"/></a>
            <a href="${createLink(uri: '/autor/create')}" class="item"><asset:image class="ui mini image" src="add_icon.png" alt="Nuevo Autor"/><g:message code="default.autor.nuevo"/></a>
            <a href="${createLink(uri: '/autor/index')}" class="item"><asset:image class="ui mini image" src="list_icon.png" alt="Lista de Autores"/><g:message code="default.autor.lista"/></a>
        </div>

        <div id="div-content" class="ui segment conten">
            <div id="form-busqueda-div" class="ui segment container">
                <g:form id="busqueda" class="ui form" action="consulta">
                    <div class="field">
                        <label>Busqueda de autores:</label>
                        <g:textField name="busqueda" placeholder="Buscar..."/>
                    </div>
                    <g:submitButton name="buscar" class="ui button blue" value="${message(code: 'principal.busqueda', default: 'Buscar')}"></g:submitButton>
                </g:form>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <div id="div-tabla" class="ui segment container">
                <div class="ui medium header">Colsulta de autores</div>
                <table class="ui celled table">
                    <thead>
                        <tr>

                            <g:sortableColumn id="th" property="titulo" title="${message(code: 'autor.nombre.label', default: 'Nombre')}" />

                            <g:sortableColumn id="th" property="categoria" title="${message(code: 'autor.aPaterno.label', default: 'Apellido Paterno')}" />

                            <g:sortableColumn id="th" property="editorial" title="${message(code: 'autor.aMaterno.label', default: 'Apellido Materno')}" />

                            <g:sortableColumn id="th" property="numPag" title="${message(code: 'autor.edad.label', default: 'Edad')}" />

                            <th id="th"></th>

                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${autorInstanceList}" status="i" var="autorInstance">
                            <tr id="${(i % 2) == 1 ? 'td1' : 'o'}">

                                <td>${fieldValue(bean: autorInstance, field: "nombre")}</td>

                                <td>${fieldValue(bean: autorInstance, field: "aPaterno")}</td>

                                <td>${fieldValue(bean: autorInstance, field: "aMaterno")}</td>

                                <td>${fieldValue(bean: autorInstance, field: "edad")}</td>

                                <td><g:link action="show" id="${autorInstance.id}"><g:message code="default.biblioteca.detalle"/></g:link></td>

                            </tr>
                        </g:each>
                    </tbody>
                </table>
                <div class="pagination">
                    <g:paginate total="${autorInstanceCount ?: 0}" />
                </div>
            </div>
        </div>
    </body>
</html>