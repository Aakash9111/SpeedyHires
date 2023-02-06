<%-- 
    Document   : login
    Created on : 03-Feb-2023, 6:45:25 PM
    Author     : Aakash Dubey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
      <!--    Alert Stylesheet-->
     <link href="css/sweetalert.min.css" rel="stylesheet">
    </head>
    <body>   
        <div class="form-text d-flex justify-content-center align-items-center vh-100">
        
            <form id="target"  action="login" method="post" class="form border border-grey border-2">
            <div>
                <h5>LOG IN!</h5>
            </div>
            <div class="py-2">
                <p>lorem ipsum is simple dummy text of the printing and typesetting indusrty</p>
            </div>
            <div class="py-2">
                <input class='w-100' type="text" name="username" placeholder="Username / E-mail" required/>    
            </div>
            <div class="py-2">
                 <input class="w-100" type="password" name="password"  placeholder="Password" required/>
            </div>
            <div class="py-4" >
            <div class="alignleft">
                <label class=""><input type="checkbox"/>Remember me</label>
            </div>
            <div class="alignright">
                <p><u>Forgot Password</u></p>
            </div>
            </div>
            <div class="py-4">
                <button type="submit" id="buttonlogin" class="form-button btn btn-danger">Log in</button>
            </div>
            <div class="" >
                <p>don't have an account <a href="signup.jsp" class=""><u><b>sign up here </b></u></a></p>
            </div>
        </form>

        </div>
  </body>
  
     <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/sweetalert.min.js"></script>
</html>

   
    
