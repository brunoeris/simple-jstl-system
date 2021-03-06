<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <title>Administração - Info Store</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/reset.css"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/estilos.css"/>
    <link rel="stylesheet" href="css/fontawesome/css/font-awesome.min.css"/>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="css/ifav.ico" type="image/x-icon"/>
  </head>

  <body>
      <c:if test="${ empty sessionScope.user_login}" >  
        <c:redirect url="index.jsp" >
            </c:redirect>  
        </c:if>  
      
    <div class="bg-default navbar-top">
        <h4 class="text-center"><span class="text-center logotop"><a href="main.jsp" ><b>Info Store </b></a></span><i class="fa fa-info-circle fa-2x"></i></h4>   
    </div>
    
    <div class="container">
      <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand text-uppercase" href="main.jsp">  </a>
            
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="text-center"><a href="main.jsp">Início</a></li>
              <li class="text-center"><a href="clientes.jsp">Clientes</a></li>
              <li class="text-center"><a href="produtos.jsp">Produtos</a></li>
              <li class="text-center"><a href="pecas.jsp">Peças</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="active text-center"><a href="form_submit/logout.jsp">SAIR<span class="sr-only">(current)</span></a></li>
            </ul>
          </div>
        </div>
      </nav>
      

      <div class="container">
          <div class="row">
              <blockquote class="col-md-12 text-center"> 
                  <h2 class="text-center">Produtos<br><h4>Editar produto.</h4></h2><br>
                  <a type="button" class="btn btn-default" href="produtos.jsp">VOLTAR</a>
              </blockquote>
          </div>
      </div>
    </div><br><br>
    
     <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost/infostore"
                       user="root" password=""/>
    <sql:query dataSource="${ds}" var="result">
            SELECT * from produtos where pro_id = ?;
            <sql:param value="${param.id}" />
        </sql:query>
    <section>
        <div class="container">
            <c:forEach var="row" items="${result.rows}">
            <div class="row">
                <form class="form-horizontal" action="form_submit/prod_edit.jsp" method="post">  
                <div class="col-md-8 center-block">
                                      <div class="form-group">
                    <label  class="col-sm-2 control-label">Tipo</label>
                    <div class="col-sm-10">
                      <input type="hidden" value="${param.id}" name="id">
                      <input type="text" class="form-control" name="type" value="${row.pro_type}" autofocus required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label  class="col-sm-2 control-label">Marca</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="mark" value="${row.pro_mark}" required>
                    </div>
                  </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Descrição</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" name="details" value="${row.pro_details}" required>
                        </div>
                      </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Referência</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" name="reference" value="${row.pro_reference}" pattern="[0-9]{6}" title="Referência deve conter 6 dígitos numéricos" required>
                        </div>
                      </div>
                     <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-primary">Atualizar</button>
                        </div>
                      </div>
                </div>
                 </form>
            </div>
            </c:forEach>
        </div>
    </section>
            

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>


