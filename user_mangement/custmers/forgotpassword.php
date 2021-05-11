<html xmlns="http://www.w3.org/1999/xhtml">


<head>
        <title>Forgot Password</title>
</head>

        <form action="">
                <div class="form-control">
                     <label for="Mnumber">Mobile number:</label>
                    <input type="tel" maxlength="10" onkeypress="return onlynumber(event)" class="form-control" id="Mnumber" placeholder="Enter Mobile Number" name="Mnumber" tabindex="1" required >
                </div>

                <button id="sendOtp" onclick="func()" >Send OTP</button>
        </form>

        <form action="">
                <div class="otp" id ="verify" hidden>
                <input type="text"   onkeypress="return onlynumber(event)"  >
                <button id="sendOtp" type="submit" >Verify</button>
                 </div>
        </form>

            
<body>
    


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

                           function func() {
                                                        var x = document.getElementById("verify");
                                                        if (x.style.display === "none") 
                                                        {
                                                            x.style.display = "block";
                                                        }
                                                } 
        </script>
</html>