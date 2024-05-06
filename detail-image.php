<?php
    error_reporting(0);
    include 'db.php';
	$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 2");
	$a = mysqli_fetch_object($kontak);
	
	$produk = mysqli_query($conn, "SELECT * FROM tb_image WHERE image_id = '".$_GET['id']."' ");
	$p = mysqli_fetch_object($produk);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Galeri Sekolah</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
    <header>
        <div class="container">
        <h1><a href="index.php">Galeri Sekolah</a></h1>
        <ul>
            <li><a href="galeri.php">Galeri</a></li>
           <li><a href="login.php">Login Admin</a></li>
        </ul>
        </div>
    </header>

    <div class="section">
        <div class="container">
             <h3>Tentang Foto</h3>
            <div class="box">
                <div class="col-2">
                   <img src="foto/<?php echo $p->image ?>" width="100%" /> 
                </div>
                <div class="col-2">
                   <h3><?php echo $p->image_name ?><br/ssss>Kategori : <?php echo $p->category_name  ?></h3>
                   <h4>Upload Oleh : Admin <?php echo $p->admin_name ?><br />
                   Upload Pada Tanggal : <?php echo $p->date_created  ?></h4>
                   <p>Deskripsi :<br />
                        <?php echo $p->image_description ?>
                   </p>
                   
                </div>
            </div>
        </div>
    </div>