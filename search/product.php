<?php

function component($productname,$productprice,$img,$product_id){
        $element = "
        <div class=\"procard\">
        <form action=\"products_results.php\" method=\"post\">
         <img class=\"imgset\" src=\"$img\" alt=\"$productname\" >
        <div class=\"procardbody\">
          <span class=\"productname\">$productname</span>



         <p class=\"price\">₹$productprice</p>
         <p>&#160</p>

         <p>
           <button type=\"submit\" name=\"addtocart\">Add to Cart</button>
         </p>
         <input type=\"hidden\" name=\"product_id\" value=\"$product_id\">
        </div>
       </form>
         </div>
        ";

        echo $element;

}


function cartElement($product_id,$productname,$productprice){
  $element="
  <form class=\"cart-items\" action=\"cart.php?action=remove&id=$product_id\" method=\"POST\">
    <div class=\"border rounded\">
      <div class=\"row bg-white\">


        <div class=\"col-md-3\">
              <img src=\"../Pimg/m/m$product_id.jpg\" alt=\"image1\" class=\"img-fluid\">
        </div>
        <div class=\"col-md-6\">
              <h5 class=\"pt-2\">$productname</h5>
              <small class=\"text-secondary\">seller: demo1</small>
              <h5 class=\"pt-2\">₹$productprice</h5>

              <button type=\"submit\" class=\"btn btn-danger mx-2\" name=\"remove\">Remove</button>

        </div>
        <div class=\"col-md-3 py-5\">
              <div>
  <input type=\"text\"  class=\"form-control w-25 d-inline\" value=\"1\">
              </div>
        </div>
    </div>

    </div>
  </form>

  ";


  echo $element;
}



function orderElement($product_id,$productname,$productprice){
  $element="
  <form class=\"cart-items\" action=\"cart.php?action=remove&id=$product_id\" method=\"POST\">
    <div class=\"border rounded\">
      <div class=\"row bg-white\">


        <div class=\"col-md-3\">
              <img src=\"../Pimg/m/m$product_id.jpg\" alt=\"image1\" class=\"img-fluid\">
        </div>
        <div class=\"col-md-6\">
              <h5 class=\"pt-2\">$productname</h5>
              <small class=\"text-secondary\">seller: demo1</small>
              <h5 class=\"pt-2\">₹$productprice</h5>

              

        </div>
        <div class=\"col-md-3 py-5\">
              <div>
  <input type=\"text\"  class=\"form-control w-25 d-inline\" value=\"1\">
              </div>
        </div>
    </div>

    </div>
  </form>

  ";


  echo $element;
}


function component1($productname,$productprice,$img,$product_id){
  $element = "
  <div class=\"procard\">
  <form action=\"inventory.php\" method=\"post\">
   <img class=\"imgset\" src=\"$img\" alt=\"$productname\" >
  <div class=\"procardbody\">
    <span class=\"productname\">$productname</span>



   <p class=\"price\">₹$productprice</p>
   <p>&#160</p>

   <p>
     
   </p>
   <input type=\"hidden\" name=\"product_id\" value=\"$product_id\">
  </div>
 </form>
   </div>
  ";

  echo $element;

}

//    <button type=\"submit\" class=\"btn btn-warning\" name=\"button\">Save for Later</button>
//<button type=\"button\" class=\"btn bg-light border rounded-circle\"> <i class=\"fas fa-minus\"></i></button>

          //  <button type=\"button\" class=\"btn bg-light border rounded-circle\"> <i class=\"fas fa-plus\"></i></button>
//<button type=\"submit\" style= \"background:red;\" name=\"addtocart\"></button>

?>
