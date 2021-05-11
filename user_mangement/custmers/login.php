<?php
    if(isset($_SESSION['username']))
    header('location:../search/products_results.php');

?>
<!DOCTYPE html>

<html>
    <head>
        <link rel="stylesheet" href="/css/login_style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Login </title>
        <link rel="icon" href="img/logo.png" type="icon/png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



    </head>
    <body>

        <div class="loginbox">
            <img src="/css/img/login.png" class ="login">

            <h1>Login</h1>
                <form action="auth.php" method="POST">

                    <label for="Mnumber">Mobile number:</label>
                    <input type="tel" maxlength="10" onkeypress="return onlynumber(event)" class="form-control" id="Mnumber" placeholder="Enter Mobile Number" name="Mnumber" tabindex="1" required >

                    <label for="password">Password:</label>
                    <input type="password" class="form-control"  id="password" name="password" placeholder="Enter password" tabindex="2" equired >

                    <input type="submit" name="submit"  value="Login" >

                </form>
                <div class = loginissue >
                    <a href="forgotpassword.php">Forgot password? </a><br>
                    <a href="registration.php">Don't have an account?</a>
                    </div>
        </div>



    </body>

    <script type="text/javascript">
          /*code: 48-57 Numbers*/
          function onlynumber(e){

          var x = e.which || e.keycode;
   	      if((x>=48 && x<=57))
   	    	  return true;
   	      else
   	      	return false;
                           }
        </script>
</html>
