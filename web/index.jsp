<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <title>Administração - Info Store</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/reset.css"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/estilos.css"/>
    <link rel="stylesheet" href="css/fontawesome/css/font-awesome.min.css"/>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="css/ifav.ico" type="image/x-icon"/>
    <link href="css/signin.css" rel="stylesheet">
  </head>

  <body>
    <div class="container">
        <div class="row">
             <div class="col-md-12">
               <div class="row">
                    <div class="col-md-4 text-center"></div>
                    <div class="col-md-4 text-center">
                           <h1 class="bg-primary img-circle"><i class="fa fa-info-circle fa-5x "></i></h1>
                    </div>
                   <div class="col-md-4 text-center"></div>
               </div>
                    <h1 class="form-signin-heading text-center text-shadow">Info Store</h1>
                
                <form class="form-signin text-center text-shadow" action="form_submit/login.jsp" role="form" method="post">                    
                    <input type="text" name="login" class="form-control" placeholder="Usuário" required autofocus>
                    <input type="password" name="password" class="form-control" placeholder="Senha" required>
                    <button class="btn btn-lg btn-primary btn-block text-shadow" type="submit">Entrar</button>
                    <a class="btn btn-lg btn-link text-shadow" href="cad_users.jsp">Cadastre-se</a>
                </form>
            </div>
        </div>  
    </div>  
      
    <video autoplay loop poster="img/bg.svg" id="bgvid">
    <source src="img/videobg.mp4" type="video/mp4">
    </video>

    <script src="bootstrap.min.js"></script>
  </body>
</html>
