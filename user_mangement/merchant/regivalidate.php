<?php
        $host = 'localhost';
        $user = 'root';
        $pass = '';
        $dbname = 'user_login';

        $mycon =  mysqli_connect($host,$user,$pass);
                
                if($mycon === false){
                    
                    echo $_SERVER['PHP_SELF'];
                }else{
                    echo('user_login data base is connected');
                    mysqli_select_db($mycon, "user_login");
                

                $N=htmlentities($_POST['Yname']);
                $M=htmlentities($_POST['Mnumber']);
                $E=htmlentities($_POST['Email']);
                $Pt=htmlentities($_POST['password']);
                

             $sql = "SELECT * FROM `login_data` WHERE mobile_number='$M'  LIMIT 1";
             $result=mysqli_query($mycon , $sql);
                
               $checkCount = mysqli_num_rows($result);
$sql = "INSERT INTO `login_data`(`name`, `mobile_number`, `email`, `password`) VALUES ('$N','$M','$E', '$P')";

        mysqli_query($mycon,$sql);


                }

?>


                                