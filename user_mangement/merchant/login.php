
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
            
            
            <h2 class ="store">Store Login</h2>
            <form action="auth.php" method="POST" style="width:250px; left:-30px; position:relative;">
                    
                    <label for="store">Store ID:</label>
                    <input type="text" maxlength="10" onkeypress="return onlynumber(event)" class="form-control" id="Mnumber" placeholder="Enter Store ID" name="Mnumber" tabindex="1" required >
                 
                <div class="inputbox">
                    <label for="password">Password:</label>
                    <input type="password" onclick="showpass(event)" class="form-control"  id="password" name="password" placeholder="Enter password" tabindex="2" required >
                    <input type="checkbox">

                </div>
                    <input type="submit" name="submit"  value="Login" >
                
                </form>
                <div class = loginissue >
                    <a href="#">Forgot password? </a><br>
                    <a href="registration.php">Join with us</a>
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

        /*show password */
        function showpass() {
                                var x = document.getElementById("password");
                                if (x.type === "password") {
                                    x.type = "text";
                                } else {
                                    x.type = "password";
                                }
                                }

        </script>
</html>