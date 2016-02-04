<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><g:message code="default.principal.titulo"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--
        <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">-->
        <link rel="shortcut icon" href="${assetPath(src: 'logo_biblioteca.png')}" type="image/x-icon">        
    <asset:stylesheet src="indexStyle.css"/>
    <asset:stylesheet src="/semantic-UI/semantic.css"/>
    <asset:stylesheet src="aplication.css"/>
    <asset:javascript src="jquery-1.12.0.min.js.js"/>
    <asset:javascript src="aplication.js"/>
    <g:layoutHead/>
</head>
<body>
    <div id="div-head-foot" class="ui raised segment">
        <div class="content">
            <div class="ui centered huge header">
                <a href="${createLink(uri: '/')}"><asset:image class="ui tiny centered circular image" src="logo_biblioteca.png" alt="Biblioteca"/></a>Biblioteca UI</div>
        </div>
    </div>
    <g:layoutBody/>
    <div id="div-head-foot" class="ui raised segment">

        <div class="ui horizontal list">
            <a class="item" href="${createLink(uri: '/autor/index')}">
                <asset:image class="ui mini image" src="logo_autor.png" alt="Autores"/>
                <div class="content">
                    <div class="header">Autores</div>
                    <div class="description">Consulte los autores que tenemos disponibles</div>
                </div>
            </a>
            <a class="item" href="${createLink(uri: '/categoria/index')}">
                <asset:image class="ui mini image" src="logo_categoria.png" alt="Categorias"/>
                <div class="content">
                    <div class="header">Categorias</div>
                    <div class="description">Categorias para todos los gustos</div>
                </div>
            </a>
            <a class="item" href="${createLink(uri: '/editorial/index')}">
                <asset:image class="ui mini image" src="logo_editorial.png" alt="Editoriales"/>
                <div class="content">
                    <div class="header">Editoriales</div>
                    <div class="description">Solo las mejores editoriales</div>
                </div>
            </a>
            <a class="item" href="${createLink(uri: '/libro/index')}">
                <asset:image class="ui mini image" src="logo_libros.png" alt="Libros"/>
                <div class="content">
                    <div class="header">Libros</div>
                    <div class="description">Los mejores libros, para toda ocacion</div>
                </div>
            </a>
        </div>
        <div class="ui horizontal divider">Contacto</div>
        <div class="ui list">
            <div class="item">
                <i class="users icon"></i>
                <div class="content">Biblioteca UI</div>
            </div>
            <div class="item">
                <i class="marker icon"></i>
                <div class="content">El Estribo, Acatlipa Temixco</div>
            </div>
            <div class="item">
                <i class="mail icon"></i>
                <div class="content">
                    <a href="mailto:bibliotecaUI@gmail.com">bibliotecaUI@gmail.com</a>
                </div>
            </div>
            <div class="item">
                <i class="linkify icon"></i>
                <div class="content">
                    <a href="http://www.bibliotecaUI.com">bibliotecaUI.com</a>
                </div>
            </div>
        </div>
    </div>
    <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/semantic-UI/semantic.js" type="text/javascript"></script>
</body>
</html>
