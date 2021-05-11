<html xmlns="http://www.w3.org/1999/xhtml">

<head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> SignUp </title>
        <link rel="stylesheet" type = "text/css"href="/css/new_regi.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        

    <body>
      
        
     

      <form action="regivalidate.php" method= "POST" class="loginform" >
      <h2 >Create account</h2>

        <div class="form-group">
         
          <label for="Yname">Your Name:</label>
          <input type="text" class="form-control" id="Yname" autocomplete="off" name="Yname" tabindex="1" required >
          
        </div>

        <div class="form-group">

          <label for="Mnumber">Mobile number:</label>
            <select name="Tcode" id="Tcode" >
              <option value="+91">+91</option>
            </select>
          <input type="tel" maxlength="10"; onkeypress='return restrictAlphabets(event)' class="form-control" id="Mnumber" autocomplete="off" name="Mnumber" tabindex="2" required />
        </div>

        <div class="form-group">
         
          <label for="Email">Email (optional):</label>
          <input type="email" class="form-control" id="Email" autocomplete="off" name="Email" tabindex="3" >
          
        </div>
      
        <div class="form-group">
            
          <label for="pass">Password:</label>
          <input type="password" class="form-control" id="pass" autocomplete="off"  name="password" tabindex="4" required>
         
        </div>
        <div class="form-check" >
            <input  type="checkbox" id=accept-terms  class="form-check-input">
            <label for="accept-terms"  class="form-check-label">Accept Terms &amp; Conditions</label>
        </div>

           <br>
           <div class="form-check">
             <button class="button signup" type="">Create Now</button>
           </div>
            <b>Already have an account?</b>
            <a href="login.php">Login</a>
            

       </form>
    


    </body>  
</head>

<script type="text/javascript">
          /*code: 48-57 Numbers*/
          function restrictAlphabets(e){
            
          var x = e.which || e.keycode;
   	      if((x>=48 && x<=57))
   	    	  return true;
   	      else
   	      	return false;
                           }
        </script>
</html>
