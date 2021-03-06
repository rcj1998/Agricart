<?php
	//include('../configure.php');
	//session_start();
	
	$servername = "localhost";
$database = "agricart";
$username = "root";
$password = "";
// Create connection

$conn = mysqli_connect($servername, $username, $password, $database);
	
	$nameErr = $mobileErr = $emailErr = $pswErr_1 = $pswErr_2 = "";
	$error = 0;
	if($_SERVER["REQUEST_METHOD"] == "POST")
	{
		$type =$_POST['type'];
		$category = $_POST['category'];
		$brand =$_POST['brand'];
		$title = $_POST['title'];
		$price = $_POST['price'];
		$quantity = $_POST['quantity'];
		$shopid = $_POST['shopid'];
		$description=$_POST['description'];
		
		/*if (empty($type))
		{ 
			$nameErr = "Type is required"; $error++;
		}
		
		if (empty($price)) 
		{ 	
			$mobileErr = "Price is required"; $error++;
		}
		
		if (empty($title)) { 	
			$titleErr = "Title is required"; $error++;
		}
		else {
			if (!filter_var($myemail, FILTER_VALIDATE_EMAIL)) {
                  $emailErr = "Invalid email format"; $error++;
			}
		}*/
		
		/*
		$sql = "SELECT * FROM register WHERE mobile_no='$mymobilenumber' OR email='$myemail' ";
		$result = mysqli_query($connect, $sql);
		$user = mysqli_fetch_assoc($result);
		  
		if ($user) 
		{ 
			if ($user['mobile_no'] === $mymobilenumber) {
			  $mobileErr = "Mobile Number already exists"; $error++;
			}

			if ($user['email'] === $myemail) {
			  $emailErr = "Email already exists"; $error++;
			}
		}*/

		  // Finally, register user if there are no errors in the form
		if ($error == 0) {
			
			$query = "INSERT INTO sell (type,category,brand,title,price,quantity,description,shop_id) 
					  VALUES('$type', '$category', '$brand', '$title',$price,$quantity,'$description',$shopid)";
			mysqli_query($conn, $query);
		}
		?>
		<h1>Your product added scccessfully</h1>;
		<?php
	}
?>

<html>
	<title>Agricart Sign Up</title>
	<meta charset="utf-8" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<head>
<style>
	body {
		background-color:#aee147;
		background-image: url("images/vegetables.jpg");
		background-size:cover;
	}
	
	.display-logo {
		margin-top:-8px;
		margin-left:42%;
		float:center;
		position: center;
	}
	
	.mainbox {
		background-color:#ffffff;
		margin-left:27%;
		margin-right:37%;
		margin-top:15px;
		border:1px solid #DDDDDD;
		padding:0px 25px;
		margin-bottom:20px;
		width:45%;
		height:640px;
		border-radius:10px;
	}
	
	.titlelogin {
		display:block;
		margin-top: 15px;
		margin-bottom: 10px;
		font-size: 28px;
		font-weight: bold;
		text-align:center;
		color:#0096FF;;
	}
	
	input[type="text"], input[type="password"]  {
		width: 100%;
		padding: 5px 10px;
		margin: 5px 0 15px 0;
		display: inline-block;
		border: 1px solid #D9D9D9;
		box-sizing: border-box;
		border-radius:5px;
		font-family:Arial;
	}
	
	label {
		font-family:Arial;
		font-weight:550;
	}
	
	.login-button {
		width:100%;
		padding:5px 0px;
		text-align:center;
		background-color:#0096FF;
		border-color:#0086E5;
		border-radius:5px;
		color:white
	}
	.login-button:hover {
		background-color:#007ACE;
	}
	a {
		text-decoration:none;
	}
	a:hover {
		text-decoration:underline;
	}
	#loginstyle {
		text-align:center;
	}
	
	.container {
		margin-top:20px;
	}
	
	.txt1 {
		font-family: OpenSans-Regular;
		font-size: 15px;
		line-height: 1.4;
		color: #999999;
	}
	.txt2 {
		font-family: OpenSans-Regular;
		font-size: 15px;
		line-height: 1.4;
		color: #0096FF;
	}
	
	.bottom {
		display:block;
		text-align:center;
		padding-top:30px;
	}
	
	.error {
		color:red;
		font-size:15px;
	}
</style>
</head>

<body>
<div >
<img src="images/AGRICART.png" class="display-logo">
</div>
<div class="mainbox">
	<span class="titlelogin">Add Product</span>
	<form action="" method="post">
	<div class="container">
	
		<!--<label for="uname">Username</label>
		<input type="text" placeholder="Enter Username" name="uname">
		<span class = "error"><?php /*echo*/ $nameErr;?></span><br>-->
	  <div class="form-row">
		<div class="form-group col-md-6">
		<label for="uname">Type</label>
		<input type="text" placeholder="Enter product type" name="type">
		<span class = "error"><?php echo $nameErr;?></span><br>
    	</div>
    	<div class="form-group col-md-6">
		<label for="uname">Category</label>
		<input type="text" placeholder="Enter the category" name="category">
		<span class = "error"><?php echo $nameErr;?></span><br>
    	</div>
  	  </div>

	  <div class="form-row">
		<div class="form-group col-md-6">
		<label for="uname">Brand</label>
		<input type="text" placeholder="Enter the brand name" name="brand">
		<span class = "error"><?php echo $nameErr;?></span><br>
    	</div>
    	<div class="form-group col-md-6">
		<label for="uname">Title</label>
		<input type="text" placeholder="Enter the title" name="title">
		<span class = "error"><?php echo $nameErr;?></span><br>
    	</div>
  	  </div>

	  <div class="form-row">
		<div class="form-group col-md-6">
		<label for="uname">Price</label>
		<input type="text" placeholder="Enter the price" name="price">
		<span class = "error"><?php echo $nameErr;?></span><br>
    	</div>
    	<div class="form-group col-md-6">
		<label for="uname">Quantity</label>
		<input type="text" placeholder="Enter the quantity" name="quantity">
		<span class = "error"><?php echo $nameErr;?></span><br>
    	</div>
  	  </div>
  	  
	  <div class="form-row">
		<div class="form-group col-md-6">
		<label for="uname">Shop ID</label>
		<input type="text" placeholder="Enter Shop ID" name="shopid">
		<span class = "error"><?php echo $nameErr;?></span><br>
    	</div>
    	<div class="form-group col-md-6">
		<label for="uname">Upload image</label>
  		<div class="custom-file">
    	<input type="file" class="custom-file-input" id="validatedCustomFile" required>
    	<label class="custom-file-label" style="margin-top: 3px;" for="validatedCustomFile">Choose file...</label>
  		</div>
    	</div>
  	  </div>

		<div class="form-group">
		<label for="uname">Descriptions</label>
		<input type="text" placeholder="Write the descriptions" name="description">
		<span class = "error"><?php echo $nameErr;?></span><br>
    	</div>

        <button type="submit" class="login-button">Add product</button>		
    </div>
	</form>

</div>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>