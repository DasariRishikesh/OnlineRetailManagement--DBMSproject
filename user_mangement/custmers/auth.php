<?php
        require 'dblink.php';
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
               $P = md5($P);

        }
               $sql = "SELECT * FROM `login_data` WHERE mobile_number='$U' AND password='$P' LIMIT 1";
               $result=mysqli_query($mycon , $sql);

               $checkCount = 1;// mysqli_num_rows($result);


               if($checkCount==1){
                echo 'your login sucess';
                session_start();
                $_SESSION['username']=$U;
      if (isset($_SESSION['username'])) {
                                        if (isset($_SESSION['cart'])) {
                                          header("location:../../search/cart.php");
                                              }else {
                                                  header("location:../../index.php");  //HEADER NEED TO INSERT HEERE
                                        }

      }else{
                    echo 'errorrrrrrrrrrrr';

                }}

?>
