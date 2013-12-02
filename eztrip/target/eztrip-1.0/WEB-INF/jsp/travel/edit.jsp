<%-- 
    Document   : list
    Created on : Dec 1, 2013, 4:10:56 PM
    Author     : guilherme
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <!-- NAVBARR-->
            <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Project name</a>
              </div>
              <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="<c:url value='/'/>">Home</a></li>
                    <c:if test='${session == null}'>
                      <li><a href="<c:url value='/register'/>">Registrar</a></li>
                    </c:if>
                    <c:if test='${session!=null}'>
                        <li class='active'><a href="<c:url value='/travel'/>">Viagens</a></li>
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
        <!--FIM DA NAVBAR-->
        
        <div class="container">
          <div class="row">
           <div class="col-md-3"></div>
           <div class="col-md-6 pull-left">
               <h1>Viagem</h1>
                <hr>
                <form class="form-horizontal" role="form" action="<c:url value='/travel/edit/save'/>" method="POST">
                <input type="text" name="travel.id" value="${travel.id}" hidden>
               <p><div class="form-group">
                 <label class="col-sm-2 control-label">Origem</label>
                 <div class="col-sm-10">
                      <select class="form-control" name="fromandtoIdFrom">
                       <c:forEach items="${destinos}" var="destino">
                           <c:if test='${destino.id == travel.fromCity.id}'>
                               <option value="${destino.id}" selected>${destino.name}</option>
                           </c:if>
                           <c:if test='${destino.id != travel.fromCity.id}'>
                            <option value="${destino.id}">${destino.name}</option>
                           </c:if>
                       </c:forEach>
                      </select>
                   </div>
               </div>
               <div class="form-group">
                 <label for="inputDateGoFromandto" class="col-sm-2 control-label">Data Ida</label>
                 <div class="col-sm-10">
                     <input type="date" pattern="dd/MM/yyyy" class="form-control" value="${travel.dateGo}" name="travel.dataIdaFormatada" id="inputDateGoFromandto" placeholder="Data ida">
                 </div>
               </div>
               <div class="form-group">
                 <label class="col-sm-2 control-label">Destino</label>
                 <div class="col-sm-10">
                      <select class="form-control" name="fromandtoIdDest">
                       <c:forEach items="${destinos}" var="destino">
                           <c:if test='${destino.id == travel.toCity.id}'>
                               <option value="${destino.id}" selected>${destino.name}</option>
                           </c:if>
                           <c:if test='${destino.id != travel.toCity.id}'>
                               <option value="${destino.id}">${destino.name}</option>
                            </c:if>
                       </c:forEach>
                      </select>
                   </div>
               </div>
               <div class="form-group">
                 <label for="inputDateBackFromandto" class="col-sm-2 control-label">Data volta</label>
                 <div class="col-sm-10">
                     <input type="date" pattern="dd/MM/yyyy" class="form-control" value="${travel.dateBack}" name="travel.dataVoltaFormatada" id="inputDateBackFromandto" placeholder="Data ida">
                 </div>
               </div>
               <div class="form-group">
                 <div class="col-sm-offset-2 col-sm-10">
                   <button type="submit" class="btn btn-primary">Salvar</button>
                 </div>
               </div></p>
             </form>
           </div>
        </div>
        
         <div class="container">
            <hr>
            <footer>
                <p>&copy; Company 2013</p>
            </footer>
        </div>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="<c:url value='/js/bootstrap.min.js'/>"></script>
    </body>
</html>
