<?php
session_start();


require_once('../search/product.php');
require('../user_mangement/custmers/dblink.php');
    mysqli_select_db($mycon , $dbname);

    if(isset($_POST['addtocart'])){
        //print_r($_POST['product_id']);

        if(isset($_SESSION['cart'])){
          $cart_array_id=array_column($_SESSION['cart'],"product_id");


                if (in_array($_POST['product_id'],$cart_array_id)) {

                  $count=count($_SESSION['cart']);
                  $cart_array=array('product_id'=>$_POST['product_id']);
                  $_SESSION['cart'][$count]=$cart_array;
                //  print_r($cart_array);
                  //    echo "<script>alert('exist already..!')</script>";
                  //    echo "<script>window.location='products_results.php'</script>";
                    }else {
                        $count=count($_SESSION['cart']);
                        $cart_array=array('product_id'=>$_POST['product_id']);
                        $_SESSION['cart'][$count]=$cart_array;
                        //  print_r($_SESSION['cart']);
                    }


        }else {

          $cart_array=array('product_id' =>$_POST['product_id']);
          $_SESSION['cart'][0]=$cart_array;



        }
      }

//    require_once('search.php');
 ?>


<!DOCTYPE html>
<html lang="en">
<head>

      <meta charset="utf-8">
      <title>Cart</title>
      <link rel="stylesheet" href="../css/product_card.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">



</head>
<body>
  <?php require_once('header.php'); ?>

  
        <div class="product_grid">

<?php


                 if(isset($_POST['S_text']))
                    {
                                                 $SText=$_POST['S_text'];
                                                 if(!empty($SText))
                                                 {

                                                         $query = "SELECT * FROM `products` where  `PRODUCTS NAME` LIKE '%$SText%' ";
                                                         $query_run = mysqli_query($mycon, $query);
                                                         $num_rows = mysqli_num_rows($query_run);
                                                         if($num_rows>=1)
                                                         {
                                                                 while($row = mysqli_fetch_assoc($query_run)){
                                                                     $aa=$row['pid'];
                                                                     component($row['PRODUCTS NAME'],$row['MRP'],"../Pimg/m/m$aa.jpg",$row['pid']);
                                                                   }


                                                                     }

                                                                 else{
                                                                         echo 'soon we will bring the '.$SText.' product';


                                                                 }

                                                 }
                 }else {
                   $sql = "SELECT * FROM `products`";
                   $result=mysqli_query($mycon , $sql);
                   while($row=mysqli_fetch_assoc($result)) {
                     $aa=$row['pid'];

                     component($row['PRODUCTS NAME'],$row['MRP'],"../Pimg/m/m$aa.jpg",$row['pid']);
                   }


                 }



?>

        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
