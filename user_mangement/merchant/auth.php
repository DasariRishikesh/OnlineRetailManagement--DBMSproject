<?php 
        $host = 'localhost';
        $user = 'root';
        $pass = '';
        $dbname = 'user_login';
    

        $mycon =  mysqli_connect($host,$user,$pass);
        mysqli_select_db($mycon , $dbname);
        
                if($mycon === false){
                    echo 'user_login database is not connected with this page';
                    echo $_SERVER['PHP_SELF'];
                    
                }else{
                    echo('user_login data base is connected');
                    mysqli_select_db($mycon, "user_login");
                }
        if(isset($_POST['Mnumber'])    &&  isset($_POST['password']))
        {
               $U = htmlentities( $_POST['Mnumber']);
               $P = htmlentities( $_POST['password']);
               $P=md5($P);
                
        }
               $sql = "SELECT * FROM `store` WHERE phonenumber='$U' AND password ='$P' LIMIT 1";
               $result=mysqli_query($mycon , $sql);
                
               $checkCount = mysqli_num_rows($result);
               

               if($checkCount==1){
                echo 'your login sucess';
                session_start();
                 $_SESSION['username']=$U;
                header('location:../../Mmanage/manage.php');  //HEADER NEED TO INSERT HEERE
               }
               else{
                    echo 'errorrrrrrrrrrrr';
                    header('location:login.php');

                   
               }
        
    

?>

