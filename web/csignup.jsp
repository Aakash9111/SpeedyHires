<html>
    <head>
        <title>Signup</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    
    <body>   
        <div class="form-text d-flex justify-content-center align-items-center vh-100">
          
        <form method="post" action="companysignup" class="form border border-grey border-2">
            
            <div class="">
                <h5>Sign Up!</h5>
            </div>
            <div class="py-2">
                <p>lorem ipsum is simple dummy text of the printing and typesetting indusrty</p>
            </div>
            <div class="py-2">
                <input class='w-100' type="text" name="username" placeholder="E-mail (use your company email)" required/>    
            </div>
            <div class="py-2">
                 <input class="w-100" type="password" name="password"  placeholder="Password" required/>
            </div>
            <div class="py-2">
                <input class="w-100" type="password" name="confirmpassword"  placeholder="Confirm Password" required/>
           </div>
          
            <div class="py-4">
                <button type="submit" class="form-button btn btn-danger">Sign Up</button>
            </div>
            <div class="" >
                <p>already have an account <a href="login.html" class=""><u><b>log in here </b></u></a></p>
            </div>
           
        </form>

        </div>
  </body>
</html>

   
    