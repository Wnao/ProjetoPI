<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="Página Generica" pageEncoding="utf-8" %>

<%--Assets--%>
<%@attribute name="cssLinks" fragment="true" %>
<%@attribute name="jsFooter" fragment="true" %>

<%--Contents--%>
<%@attribute name="title" fragment="true" %>
<%@attribute name="subtitle" fragment="true" %>
<%@attribute name="navbar" fragment="true" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="body" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="btnToolbar" fragment="true" %>

<html lang="pt-br">
<head>

    <title>
        <jsp:invoke fragment="title"/>
    </title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta charset="UTF-8">
    <link href="<c:url value="/webjars/bootstrap/4.0.0/css/bootstrap.min.css"/>" rel="stylesheet" media="screen"/>
    <link href="<c:url value="/static/css/dashboard.css"/>" rel="stylesheet" media="screen">

    <jsp:invoke fragment="cssLinks"/>

    <style type="text/css">
        ul {
          list-style-type: none;
         }
    </style>

</head>


<body>
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 navbar-top">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="<c:url value="/"/>">
        <jsp:invoke fragment="title"/>
    </a>
    <div class="col-md-10 navbar-top__title">
        <h1 class="h2"><jsp:invoke fragment="subtitle"/></h1>
    </div>
</nav>
<div>
<a href="<c:url value="/pedidos"/>">
    <img src="../../images/cart.png" style="z-index: 999 !important;position: fixed;width: 110px;top: 80vh;left: 5vw;cursor: pointer;">
</a>
</div>

<div class="container-fluid">
    <div class="row">
        <nav id="js-sidebar" class="col-md-2 d-none d-md-block bg-light sidebar" data-navbar="<jsp:invoke fragment="navbar"/>">
            <div class="sidebar-sticky" style="font-size: 40px !important; text-align: center !important; background-color: #272c30 !important; list-style: none;">
                <ul style="list-style: none;" class="nav flex-column" >
                    <li class="nav-item">
                        <a class="nav-link js-lanches" style="color: #fff; padding-top: 50px" href="<c:url value="/produtos?categoria=lanche"/>">Lanches</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-bebidas" style="color: #fff; padding-top: 50px" href="<c:url value="/produtos?categoria=bebida"/>">Bebidas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-sobremesas" style="color: #fff; padding-top: 50px" href="<c:url value="/produtos?categoria=sobremesa"/>">Sobremesas</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4" id="js-main">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
            <div class="btn-toolbar mb-2 mb-md-0">
                <jsp:invoke fragment="btnToolbar"/>
            </div>
        </div>

        <div class="row">
            <div class="col" id="">
                <jsp:invoke fragment="body"/>
            </div>
        </div>

        <div class="row">
            <jsp:invoke fragment="footer"/>
        </div>
    </main>
</div>



<script>

    cart = [];

</script>

<script src="<c:url value="/webjars/jquery/3.3.1/jquery.min.js"/>"></script>
<script src="<c:url value="/static/js/base.js"/>"></script>
<script src="<c:url value="/static/js/sidebar.js"/>"></script>

<script src="<c:url value="/webjars/popper.js"/>"></script>
<script src="<c:url value="/webjars/bootstrap/4.0.0/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/webjars/feather-icons/4.7.3/dist/feather.min.js"/>"></script>

<jsp:invoke fragment="jsFooter"/>
</body>
</html>