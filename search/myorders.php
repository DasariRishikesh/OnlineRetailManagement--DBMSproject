<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>MyOrders</title>
    <link rel="stylesheet" href="../css/product_card.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  </head>
  <body>
    <?php
    session_start();
    require_once 'header.php'; ?>
  </body>
</html>



<?php

require('../user_mangement/custmers/dblink.php');
    mysqli_select_db($mycon, "user_login");
require_once('../search/product.php');
if(isset($_SESSION['username']) && isset($_SESSION['cart']) ){
  $porder = "SELECT `orderid` FROM `orders` WHERE 1";
  $result=mysqli_query($mycon , $porder);
  while($row=mysqli_fetch_assoc($result)){
  $oid =  $row['orderid'];
  }
   $oid=$oid+1;


    foreach ($_SESSION['cart'] as $key => $value) {
            $pid =htmlentities($value['product_id']);
            $uid = htmlentities($_SESSION['username']);
            $total= htmlentities($_SESSION['total_amount']);


            $sql = "INSERT INTO `orders`( `orderid`,`mobile_number`, `pid`, `total_amount`) VALUES ('$oid','$uid','$pid','$total')";
   					mysqli_query($mycon,$sql);


    }

  unset($_SESSION['cart']);

  echo "your order placed. Please refresh the page to view the page";
}elseif (isset($_SESSION['username'])) {


?><div class="col-md-7">
    <div class="shopping-cart">
      <h6>My Orders</h6>
      <hr>
      <?php

       $uid = htmlentities($_SESSION['username']);
      $sql = "SELECT * FROM `orders`WHERE mobile_number=$uid";

       $result=mysqli_query($mycon , $sql);
      while($row=mysqli_fetch_assoc($result)) {
        $pid=$row['pid'];
        $sorder = "SELECT * FROM `products` WHERE pid ='$pid' LIMIT 1";
        $lresult=mysqli_query($mycon , $sorder);
          while($row=mysqli_fetch_assoc($lresult)){
            $aa=$row['pid'];

          orderElement($row['pid'],$row['PRODUCTS NAME'],$row['MRP']);
      }

    }}else {
      header("location:../user_mangement/custmers/login.php");
    }
          ?>

    </div>
  </div>
