<!DOCTYPE html>
<html>
<head>
<title>CitraComputer</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
	*{ box-sizing: border-box;
	}
	body{
	background-image: url("index.jpg");
	margin:0;}
	/* Style the header */
	.header{
	padding:20px;
	background-image: url("index1.jpg");;
	text-align:center;
	color: white;
	}
	/* Style the top navigation bar */
	.topnav{
	overflow:hidden;
	background-color:#696969;
	border-radius: 5px;
	}
	/* Style the topnav links */
	.topnav a{
	float:left;
	display:block;
	font-size:13px;
	font-family:'Open Sans', Tahoma, sans-serif;
	font-weight:700;
	position:relative;
	color:#fff;
	text-align:center;
	padding:14px 16px;
	text-decoration:none;
	}
	/* Change color on hover */
	.topnav a:hover{
	background-color:gray;
	color:#40E0D0;
	}
	/* title */
	.title{ 
	padding: 6px;
	color: white;
	font-weight: bold;
	font-style: italic;
	text-align: center
	}
	
	/* Gallery */
	div.gallery {
	border-radius: 5px;
	background-image: url("galerry.jpg");
	margin: 5px;
	border: 1px solid #ccc;
	float: left;
	width: 250px;
    height: 600px;
	}
	div.gallery:hover {
	border: 1px solid #777;
	}
	div.gallery img {
	width: 248px;
	height: 248px;
	}
	div.name {
	padding: 15px;
	text-align: center;
	text-decoration-line: none;
	}
	div.name a {
	color: black;
	font-weight: bold;
	text-decoration: none;
	}
	div.name a:hover {
	color:#FA8072;
	}
	div.desc {
	margin: 0px 2px;
	padding: 10px;
	text-align: justify;
	text-justify: inter-word;
	}
	div.price {
	position: relative;
	padding: 10px;
	text-align: left;
	font-size: 18px;
	color: red;
	}
	.btn {
	background-color: #DC143C;
	color: white;
	font-weight: bold;
	padding: 10px;
	margin: 0px 5px 0px;
	border: none;
	width: 30%;
	border-radius: 5px;
	cursor: pointer;
	font-size: 17px;
	}

	.btn:hover {
	background-color: #8B0000;
	}
	</style>
</head>
<body>
	<div class="header">
		<h1>Citra Computer</h1>
		<p>Menjual Laptop | Peripherals | Accesories | Service</p>
		<p>Alamat : Jl.KyaiNawawi no63/64 Jepara 59452</p>
		<p>CP : 082242023609</p>
	</div>
	<div class="topnav">
		<a href="http://localhost/toko">Home</a>
		<a href="http://localhost/toko/pesan.php">Pemesanan</a>
		<a href="http://localhost/toko/bukutamu.php">Buku Tamu</a>
	</div>

	<h1 class="title">Galeri Produk</h2>
	<div class="row">
			<div class="column">
			
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "toko";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM tb_barang";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
  // echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
	echo '
	<div class="gallery">
		<div class="name"><a href="pesan.php?id_barang='.$row['id_barang'].'">'.$row['nm_barang'].'</a></div>
		<img src="produk/'.$row['gb_barang'].'">
		<div class="price">Rp. '.$row['price'].'</div>
		<div class="row"><a href="pesan.php?id_barang='.$row['id_barang'].'"><input type="submit" value="Beli" class="btn"></a></div>
		<div class="desc">'.$row['deskripsi'].'</div>
	</div>
	';
  }
} else {
  echo "0 results";
}
$conn->close();
?>
		</div>
	</div>
</body>
</html>