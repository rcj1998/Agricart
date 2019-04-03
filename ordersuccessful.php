<?php
	$servername = "localhost";
$database = "agricart";
$username = "root";
$password = "";
// Create connection

$conn = mysqli_connect($servername, $username, $password, $database);

// Check connection

if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
}
else
{
	include('configure.php');
	session_start();
	if(!isset($_SESSION['username']) || empty($_SESSION['username'])) {
		header('location:login.php');
	}
	$product_id = $_SESSION['product_id'];
	$user_id = $_SESSION['user_id'];
	$query = "SELECT * FROM product WHERE product_id=$product_id";
	$result = mysqli_query($connect,$query);
	$pcount = mysqli_num_rows($result);
	$output = '';
	$price='';
	if($pcount > 0) {
		$count = 0;
		while($row = mysqli_fetch_array($result)) {
			$price = $row['price'];
			$count++;
		}
	}
	$customer_id="";
	$address_id="";
	$query = "SELECT * FROM user_address WHERE customer_id=$user_id";
	$result = mysqli_query($connect,$query);
	$pcount = mysqli_num_rows($result);
	$output = '';
	if($pcount > 0) {
		$count = 0;
		while($row = mysqli_fetch_array($result)) {
			$customer_id = $row['customer_id'];
			$address_id = $row['address_id'];
			$count++;
		}
	}
	//$price=60;
	$query = "INSERT into orders(customer_id,product_id,address_id,quantity,total,date,modeofpayment) values($customer_id,$product_id,$address_id,1,$price,'2019-10-02','COD')";
	mysqli_query($connect,$query);
}
?>



<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<html>
<title>Order Succesful</title>
<head>
<script src="jquery-3.3.1.min.js"></script>
<style>
body {
			padding:0;
			margin:0;
			background-color:#f1f3f6;
		}
		
</style>
</head>
<body>

<span class="d-block p-3 bg-primary text-white" style="margin-top:0px;height:100px;"><center><b><div style=""><h1>Your Order Is Succesfully Placed</h1></b></center></span>
<script>$(<img src="box.png").addClass('animated bounceOutLeft');</script>
<div ><center><img src="cartphoto.png" style="height:30%;margin-top:150px"></center></div>

</body>
</html>