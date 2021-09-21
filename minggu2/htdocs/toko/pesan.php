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
	background-image: url("pesan.jpg");
	margin:0;}
	/* Style the header */
	.header{
	padding:20px;
	text-align:center;
	color: white;
	}
	/* Style the top navigation bar */
	.topnav{
	overflow:hidden;
	background-color:#00008B;
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
	background-color:#1E90FF;
	color:#4B0082;
	}
	/* Data Barang */
	div.name {
	padding: 5px;
	text-align: left;
	font-weight: bold;
	}
	div.desc {
	padding: 5px;
	text-align: justify;
	}
	
	/* Form */
	* {
	box-sizing: border-box;
	}
	input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
	}

	label {
	padding: 12px 12px 12px 0;
	display: inline-block;
	}

	input[type=submit] {
	background-color: #00008B;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	font-weight: bold;
	float: right;
	}

	input[type=submit]:hover {
	background-color: #1E90FF;
	color:#4B0082;
	}

	.container {
	border-radius: 5px;
	background-image: url("galerry.jpg");
	padding: 20px;
	}

	.menu{
	text-align: center;
	}

	.report{
	height: 40px;
	float: left;
	width: 100%;
	margin: 0px; 
	padding: 12px;
	background-color : #708090;
	color: white;
	border-radius: 6px;
	font-weight: bold;
	font-style: italic;
	text-align: center;
	}

	.col-25 {
	float: left;
	width: 25%;
	margin-top: 6px;
	}

	.col-75 {
	float: left;
	width: 75%;
	margin-top: 6px;
	}

	/* Clear floats after the columns */
	.row:after {
	content: "";
	display: table;
	clear: both;
	}
	
	span.price1 {
	padding: 5px;
	text-align: left;
	color: red;
	}
	span.price {
	padding: 5px;
	text-align: left;
	color: red;
	text-decoration: line-through;
	}
	span.disc {
	padding: 5px;
	text-align: left;
	color: #006400;
	}
	/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
	@media screen and (max-width: 600px) {
	.col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
	}
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

<div class="container">
	<h2 class="menu">Form Pemesanan</h2>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "toko";
$id_barang = "";


if (isset($_GET['id_barang'])){
	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	$id_barang = $_GET['id_barang'];
	$sql = "SELECT * FROM tb_barang WHERE id_barang=".$_GET['id_barang'];
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
		// output data of each row
		while($row = $result->fetch_assoc()) {
		// echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
		echo '
		<div class="row">
			<div class="col-25">
				<img src="produk/'.$row['gb_barang'].'" alt="Foto Product" width="200" height="200">
			</div>
			<div class="col-75">
				<div class="name">'.$row['nm_barang'].'</div>
				<span class="price1">Harga : </span><span class="price">Rp. '.$row['price'].'</span><span class="disc">Discount 10% bayar saja: Rp. '.($row['price']-($row['price']*(10/100))).'</span>
				<div class="desc">'.$row['deskripsi'].'</div>
			</div>
		</div>
		';
		}
	} else {
		echo "0 results";
	}
	$conn->close();
}


if (isset($_GET['submit'])){
	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}

	$sql = "INSERT INTO tb_pesan (id_barang, nama, hp, jumlah, kode_pos, alamat)
	VALUES ('".$_GET['id_barang']."', '".$_GET['nama']."', '".$_GET['hp']."', '".$_GET['jumlah']."', '".$_GET['kode_pos']."', '".$_GET['alamat']."')";

	if ($conn->query($sql) === TRUE) {
		echo '
			<div class="row">
				<div class="report">
					Pesanan anda telah dibuat. Selamat Belanja Kembali.
				</div>
			</div>
		';
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}

	$conn->close();
}
?>	
	<form action="pesan.php">
	<div class="row">
		<div class="col-25">
			<label for="id_barang">ID Barang</label>
		</div>
		<div class="col-75">
			<input type="text" id="id_barang" name="id_barang" value="<?php echo $id_barang ?>">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="nama">Nama</label>
		</div>
		<div class="col-75">
			<input type="text" id="nama" name="nama" placeholder="Nama Anda..">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="hp">Nomor HP</label>
		</div>
		<div class="col-75">
			<input type="text" id="hp" name="hp" placeholder="Nomor HP Anda..">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="jumlah">Jumlah</label>
		</div>
		<div class="col-75">
			<select id="jumlah" name="jumlah">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="1">6</option>
				<option value="2">7</option>
				<option value="3">8</option>
				<option value="4">9</option>
				<option value="5">10</option>
			</select>
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="kode_pos">Kode Pos</label>
		</div>
		<div class="col-75">
			<input type="text" id="kode_pos" name="kode_pos" placeholder="Kode Pos Anda..">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="alamat">Alamat</label>
		</div>
		<div class="col-75">
			<textarea id="alamat" name="alamat" placeholder="Alamat rumah anda.." style="height:150px"></textarea>
		</div>
	</div>
	<div class="row">
		<input type="submit" name="submit" value="Submit">
	</div>
	</form>
</div>
</body>
</html>