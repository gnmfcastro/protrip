<%-- 
    Document   : admin
    Created on : Dec 2, 2013, 1:52:16 AM
    Author     : guilherme
--%>

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
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>Ez Trip - Admin</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/css/bootstrap.css'/>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value='/css/justified-nav.css'/>" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      <div class="masthead">
        <h3 class="text-muted">Admin Ez Trip</h3>
        <ul class="nav nav-justified">
          <li><a href="<c:url value='/admin'/>">Home</a></li>
          <li><a href="<c:url value='/admin/region'/>">Regiões</a></li>
          <li><a href="<c:url value='/admin/country'/>">Países</a></li>
          <li><a href="<c:url value='/admin/fromandto'/>">Destinos</a></li>
          <li class="active"><a href="<c:url value='/admin/reports'/>">Relatórios</a></li>
        </ul>
      </div>

      <!-- Example row of columns -->
      <div class="container">
            <div class="row">
            <h1>Relatórios</h1>
            </div>
            <hr>
            <div class="row">
            <div class="col-md-4">
              <h2>Destinos</h2>
              <p>Relatório com gráfico com os destinos mais procurados.</p>
              <p><a class="btn btn-default" href="<c:url value='/admin/reports/destinations'/>" role="button">Ez Report!</a></p>
            </div>
            <div class="col-md-4">
              <h2>Origens</h2>
              <p>Relatório com gráfico com  origens mais procuradas.</p>
              <p><a class="btn btn-default" href="<c:url value='/admin/reports/months'/>" role="button">Ez Report!</a></p>
           </div>
            <div class="col-md-4">
              <h2>Viagens</h2>
              <p>Relatório com os pacotes de viagens mais procurados.</p>
              <p><a class="btn btn-default" href="<c:url value='/admin/reports/travels'/>" role="button">Ez Report!</a></p>
            </div>
          </div><br/>
        </div>

      <!-- Site footer -->
      <div class="footer">
        <p>&copy; Eztrip.co 2013</p>
      </div>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
</html>
