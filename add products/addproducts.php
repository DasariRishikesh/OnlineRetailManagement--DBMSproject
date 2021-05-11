<?php 
include('header.php');?>

<?php
require_once 'databse.php';

if(isset($_POST['submit']))
{		
    $PN = $_POST['product_name'];
    $CN = $_POST['cat_name'];
    $BN = $_POST['barcode'];
    $P = $_POST['price'];
    $NW = $_POST['product_weight'];
    $M = $_POST['manufacturer'];

    $insert = mysqli_query($con,"INSERT INTO `products`(`PRODUCTS NAME`, `CATEGORY NAME`, `BARCODE NUMBER`, `MRP`, `NET WEIGHT`, `MANUFACTURER`) VALUES ('$PN','$CN','$BN','$P','$NW','$M')");

    if(!$insert)
    {
        echo mysqli_error();
    }   
    else
    {
        echo "Records added successfully.";
    }
}

if(isset($_POST['submit']))
{
	$extension=array('jpg');
	foreach ($_FILES['image']['tmp_name'] as $key => $value) {
		$filename=$_FILES['image']['name'][$key];
		$filename_tmp=$_FILES['image']['tmp_name'][$key];
		echo '<br>';
		$ext=pathinfo($filename,PATHINFO_EXTENSION);

		$finalimg='';
		if(in_array($ext,$extension))
		{
			if(!file_exists('../Pimg/m/'.$filename))
			{
			move_uploaded_file($filename_tmp, '../Pimg/m/'.$filename);
			$finalimg=$filename;
			}else
			{
				 $filename=str_replace('.','-',basename($filename,$ext));
				 $newfilename=$filename.time().".".$ext;
				 move_uploaded_file($filename_tmp, '../Pimg/m/'.$newfilename);
				 $finalimg=$newfilename;
			}
			
			//insert
			//$insertqry="INSERT INTO `multiple-images`( `image_name`) VALUES ('$finalimg')";
			//mysqli_query($con,$insertqry);

			//header('Location: index.php');
		}else
		{
			//display error
		}
	}
}
?>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>ADD PRODUCTS</legend>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>  
  <div class="col-md-4">
  <input id="product_name" name="product_name" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text">
    
  </div>
</div>


<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="cat_name">CATEGORY NAME</label>
  <div class="col-md-4">
  <input id="cat_name" name="cat_name" placeholder="CATEGORY NAME" class="form-control input-md" required="" type="text">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="barcode">BARCODE NUMBER</label>  
  <div class="col-md-4">
  <input id="barcode" name="barcode" placeholder="BARCODE NUMBER" class="form-control input-md" required="" type="big int">
    
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_weight">PRODUCT WEIGHT</label>  
  <div class="col-md-4">
  <input id="product_weight" name="product_weight" placeholder="PRODUCT WEIGHT" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="price">PRICE</label>  
  <div class="col-md-4">
  <input id="price" name="price" placeholder="PRICE" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="manufacturer">Manufacturer</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="manufacturer" name="manufacturer"></textarea>
  </div>
</div>

    
 <!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="filebutton">image</label>
  <div class="col-md-4">
    <input id="filebutton" name="filebutton" class="input-file" type="file">
  </div>
</div>


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">submit</button>
  </div>
  </div>

</fieldset>
</form>


<?php include('footer.php');?>
