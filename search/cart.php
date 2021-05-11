<?php
session_start();
// session_destroy();// this is destroy cart array
require_once('../search/product.php');
require('../user_mangement/custmers/dblink.php');
mysqli_select_db($mycon , $dbname);
/// to remove item from cart
if(isset($_SESSION['cart'])){     print_r ($_SESSION['cart']);}
if (isset($_POST['remove'])) {

  if($_GET['action']== ('remove')){
                              foreach ($_SESSION['cart'] as $key => $value) {

                                                                        if ($value['product_id']==$_GET['id']){

                                                                                                          unset($_SESSION['cart'][$key]);
                                                                                                          break;
                                                                                                        //  echo "<script>window.location='cart.php'</script>";



                                                                        }

                                                                }
                                  }
                              }

 ?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Cart</title>
    <link rel="stylesheet" href="../css/product_card.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  </head>
  <body class="bg-light">
            <?php require_once 'header.php'; ?>
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-7">
                    <div class="shopping-cart">
                      <h6>My Cart</h6>
                      <hr>
                      <?php
                        $total=0;
                      if (isset($_SESSION['cart'])) {
                      $product_id=array_column($_SESSION['cart'],'product_id');

                      $sql = "SELECT * FROM `products`" ;
                      $result=mysqli_query($mycon , $sql);
                      while($row=mysqli_fetch_assoc($result)){
                      foreach ($product_id as $id) {
                              if($row['pid'] == $id) {
                                        $total=$total+(int)$row['MRP'];
                                        cartElement($row['pid'],$row['PRODUCTS NAME'],$row['MRP']);
                                  }
                        }

                       }
                     }else {
                       echo "<h5>Cart is Empty</h5>";
                     }

                       ?>
                    </div>
                  </div>

                <div class="col-md-4 offset-md-1 border rounded mt-5 bg-white h-25">
                      <h6>Price Details</h6>
                      <hr>
                      <div class="row price-details">
                        <div class="col md-6">
                          <?php
                          if (isset($_SESSION['cart'])) {
                            $count=count($_SESSION['cart']);
                            echo "<h6>Price($count items)<h6/>";

                          }else {
                            echo "<h6>Price(0 items)<h6/>";

                          } ?>
                            <h6>Charges</h6>
                            <hr>
                            <h6>Amount Payable</h6>
                        </div>
                        <div class="col-md-6">

                            <h6><?php echo $total; ?></h6>
                            <h6 class="text-success">FREE</h6>
                            <hr>
                            <h6><?php echo $total;
                                $_SESSION['total_amount']=$total;
                            ?></h6>
                        </div>


                      </div>
                      <div class="place_order">


                      <button type="submit"  class="btn btn-outline-success" style="float: right;">
                        <a class="text-success" href="myorders.php">Place Order</a>

                        </button>

                      </div>
                </div>

        </div>


        </div>




            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  </body>
</html>
