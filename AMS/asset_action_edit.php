<?php
session_start();
if (!isset($_SESSION['u_mail'])){
header('location:login.php');
exit();
}
?>
<!Doctype html>
<html lang=en>
<head>
<title>Asset Entry</title>
<meta charset=utf-8>
<link rel="stylesheet" href="css/login_page.css">
<link rel="icon" type="image/png" sizes="96x96" href="images/favicon.ico">
</head>

<body>
<?php
require('db_config.php');
$asset_name = $_POST['asset_name'];
$u_id = $_POST['u_id'];
$asset_catagory_id = $_POST['asset_catagory_id'];
$status = $_POST['status'];
$model_number = $_POST['model_number'];
$serial_number = $_POST['serial_number'];
$brand_name = $_POST['brand_name'];
$purchase_date = $_POST['purchase_date'];
$pruchase_price = $_POST['pruchase_price'];
$warenty = $_POST['warenty'];
$id = $_POST['asset_id'];
/*echo $u_id;
echo $asset_catagory_id;*/
/*UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;*/

$r = mysqli_query ($link,"UPDATE asset set asset_name='$asset_name', u_id='$u_id',asset_catagory_id='$asset_catagory_id',status='$status',model_number='$model_number',brand_name='$brand_name',purchase_date='$purchase_date',purchase_price='$purchase_price',warenty='$warenty' where asset_id='$id'");

$message="Successfully data inserted";
    if ($r) {
       
	  echo "<script type='text/javascript'>alert('$message');location='index.php'</script>";
	  
    }
?>
<br />

</body>
</html>