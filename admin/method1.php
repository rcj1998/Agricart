<?php
	include('../configure.php');
/*$servername = "localhost";
$database = "agricart";
$username = "root";
$password = "";
// Create connection

$connect = mysqli_connect($servername, $username, $password, $database);*/
	if(isset($_POST['approve']))
	{
		$sell_id = $_POST['approve'];
		//echo $sell_id;
		$query = "SELECT * FROM sell WHERE sell_id=$sell_id";
		$result = mysqli_query($connect,$query);
		if($result)
		{
			echo "divz";
			$row = mysqli_fetch_array($result);
			$type = $row['type'];
			$category = $row['category'];
			$brand = $row['brand'];
			$title = $row['title'];
			$price = $row['price'];
			$quantity = $row['quantity'];
			$description = $row['description'];
			$shop_id = $row['shop_id'];
			$image_path = $row['image_path'];
			
			$que="INSERT INTO product(type,category,brand,title,price,quantity,description,shop_id) VALUES('$type','$category','$brand','$title',$price,$quantity,'$description',$shop_id)";
			$result=mysqli_query($connect, $que);
			if($result)
			{
				$query = "DELETE FROM sell WHERE sell_id=$sell_id";
				$result1 = mysqli_query($connect,$query);
				if($result1){
					echo 'Successfully inserted as well as deleted';
					header('location:approve-subsidy.php');
				}
				else {
					echo "Couldn't delete the subsidy";
				}
			}
			else
			{
				echo $sell_id;
				echo "Couldn't insert into the database";
			}
		}
	}
	if(isset($_POST['decline']))
	{
		$sell_id = $_POST['decline'];
		$query = "DELETE FROM sell WHERE sell_id=$sell_id";
		$result1 = mysqli_query($connect,$query);
				if($result1){
					echo 'Successfully inserted as well as deleted';
					header('location:approve-subsidy.php');
				}
	}
	
?>