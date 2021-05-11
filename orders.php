

<!DOCTYPE html>
<html lang="en">
<head>

      <meta charset="utf-8">
      <title>Orders</title>
      <link rel="stylesheet" href="../css/product_card.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">



</head>
<body>
  <?php require_once('head.php'); 
    require_once 'search/product.php';
    require_once 'user_mangement/custmers/dblink.php';
  ?>

  
  
<div class="col-md-7">
    <div class="shopping-cart">
      <h6>Orders Received</h6>
      
      <?php

            
            $sql = "SELECT * FROM `orders`";

            $result=mysqli_query($mycon , $sql);
            while($row=mysqli_fetch_assoc($result)) {
                $pid=$row['pid'];
                $sorder = "SELECT * FROM `products` WHERE pid ='$pid' LIMIT 1";
                $lresult=mysqli_query($mycon , $sorder);
                while($row=mysqli_fetch_assoc($lresult)){
                    $aa=$row['pid'];

                orderElement($row['pid'],$row['PRODUCTS NAME'],$row['MRP']);
            }}
      ?>
    </div>
</div>
  </body>