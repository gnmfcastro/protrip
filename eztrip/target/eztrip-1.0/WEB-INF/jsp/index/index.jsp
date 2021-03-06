<%-- 
    Document   : login
    Created on : Dec 1, 2013, 1:28:41 AM
    Author     : guilherme
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="<c:url value='/ico/favicon.png'/>">

    <title>Ez Trip</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/css/bootstrap.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/css/bootstrap-theme.min.css'/>" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="<c:url value='/css/jumbotron.css'/>" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Ez Trip</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
              <li class="active"><a href="#">Home</a></li>
              <c:if test='${session == null}'>
                <li><a href="<c:url value='/register'/>">Registrar</a></li>
              </c:if>
              <c:if test='${session!=null}'>
                  <li><a href="<c:url value='/travel'/>">Viagens</a></li>
              </c:if>    
          </ul>
            <c:if test="${session!=null}">
                    <form class="navbar-form navbar-right" action='<c:url value="/logout"/>' method="POST">
                        <div class="form-group">
                            <h5 style="color: #ffffff;margin-right: 10px;">Olá, ${session.firstName} ${session.lastName}</h5>
                        </div>
                        <button type='submit' class='btn btn-danger'>Logout</button>
                    </form>
            </c:if>  
            <c:if test="${session==null}">
            <form class="navbar-form navbar-right" action='<c:url value="/authenticate"/>' method="POST">
                <div class="form-group">
                  <input type="text" placeholder="Email" name="email" class="form-control">
                </div>
                <div class="form-group">
                  <input type="password" placeholder="Password" name="password" class="form-control">
                </div>
                <button type="submit" class="btn btn-success">Login</button>
              </form>
             </c:if>
        </div><!--/.navbar-collapse -->
      </div>
    </div>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Ez Trip!</h1>
        <p>Uma viagem simplesmente fácil!</p>
        <p><a class="btn btn-primary btn-lg" href='http://eztrip.co'role="button">Conheça a Ez Trip!</a></p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>1- Cadastre-se</h2>
          <p>Para se cadastrar é Ez! leva apenas 1 minuto!</p>
        </div>
        <div class="col-md-4">
          <h2>2- Crie uma viagem</h2>
          <p>Crie suas viagens de maneira Ez! Só precisamos saber sua Origem, Destino e Datas</p>
       </div>
        <div class="col-md-4">
          <h2>3- Explore</h2>
          <p>Saiba o que fazer durante sua viagem de maneira Ez!</p>
        </div>
      </div>

      <hr>

      <footer>
        <p>&copy; Eztrip.co 2013</p>
      </footer>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="<c:url value='/js/bootstrap.min.js'/>"></script>
  </body>
</html>
