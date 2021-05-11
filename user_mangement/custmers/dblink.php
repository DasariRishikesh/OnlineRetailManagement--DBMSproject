<?php

            $host = 'localhost';
            $user = 'root';
            $pass = '';
            $dbname = 'user_login';


            $mycon =  mysqli_connect($host,$user,$pass);
            if($mycon){
                if(!mysqli_select_db($mycon,$dbname)){
                echo 'could not connected to database "user_ login"';}
            }else

                echo 'could not connect to server ';



?>
