<!DOCTYPE html>

<?php
	include('session.php');
?>

<html>
	<head>
		<title>AgriCart</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<style>
		body {
			padding:0;
			margin:0;
			background-color:#d8d8d8;
		}
		
		.menu-bar {
			list-style-type:none;
			margin:0;
			padding:0;
			position:sticky;
			overflow:hidden;
			background-color:#5ACA00;
			width:100%;
		}
		
		.lfloat {
			float:left;
		}
		
		.rfloat {
			float:right;
		}
		.menu-bar-list {
			display:block;
			padding: 14px 14px;
			text-decoration:none;
			color:white;
			font-family:arial;
			font-weight:bold;
		}
		
		.menu-bar-list:hover {
			background-color:#1CB014;
		}
		
		.active {
			background-color:#0096FF;
		}
		
		.heading {
			background-color:#ffffff;
			width:100%;
			height:80px;
		}
		.display-logo {
			margin-top:-8px;
			margin-left:42%;
			float:center;
			position: center;
		}
		
		.rightside {
			float:right;
			height:80px;
			width:30%;
		}
		
		.rightside-list {
			display:block;
			text-decoration:none;
			color:#0096FF;
			font-family:arial;
			font-size:21px;
			font-weight:bold;
		}
		
		.slider {
			width:100%;
			height:200px;
			float:left;
		}
		
		.mySlides {display:none}
		.w3-left, .w3-right, .w3-badge {cursor:pointer}
		.w3-badge {height:13px;width:13px;padding:0}
		</style>
	</head>
		
	</body>
		<div class="heading">
			<img src="images/AGRICART.png" class="display-logo">
			<div class="rightside">
			<ul style="list-style-type:none;padding-left:135px;padding-top:20px;">
				<li class="lfloat"><a href="login.php" class="rightside-list" style="padding-right:25px;"><?php echo "Welcome ".$login_session; ?></a></li>
				<li class="lfloat"><a href="logout.php" class="rightside-list">Logout</a></li>
				<li class="lfloat"><a href="#" class="rightside-list" ><i class="fa fa-shopping-cart"></i> Cart</a></li>
			</ul>
			</div>
		</div>
		
		<div>
		<ul class="menu-bar">
			<li class="lfloat"><a href="index.php" class="active menu-bar-list">HOME</a></li>
			<li class="lfloat"><a href="aboutus.php" class="menu-bar-list" >ABOUT US</a></li>
			<li class="lfloat"><a href="#seeds.php" class="menu-bar-list">SEEDS</a></li>
			<li class="lfloat"><a href="#" class="menu-bar-list">PLANT PROTECTION</a></li>
			<li class="lfloat"><a href="#" class="menu-bar-list">PLANT NUTRITION</a></li>
			<li class="lfloat"><a href="#" class="menu-bar-list">MACHINERY</a></li>
		</ul>
		</div>
		
		<div style="width:100%">
			<img class="mySlides" src="images/slideshow1.jpg" style="width:100%;height:500px;">
			<img class="mySlides" src="images/slideshow2.jpg" style="width:100%;height:500px;">
			<img class="mySlides" src="images/slideshow3.jpg" style="width:100%;height:500px;">
		</div>
		
		<script>
			var myIndex = 0;
			carousel();

			function carousel() {
				var i;
				var x = document.getElementsByClassName("mySlides");
				for (i = 0; i < x.length; i++) {
				   x[i].style.display = "none";  
				}
				myIndex++;
				if (myIndex > x.length) {myIndex = 1}    
				x[myIndex-1].style.display = "block";  
				setTimeout(carousel, 2000); // Change image every 2 seconds
			}
		</script>

	</body>
</html>