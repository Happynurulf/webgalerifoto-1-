<?php
    include 'db.php';
	$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 2");
	$a = mysqli_fetch_object($kontak);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Homepage Galeri Sekolah</title>
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
    
    <div class="search">
        <div class="container">
            <form action="galeri.php">
                <input type="text" name="search" placeholder="Cari Foto" />
                <input type="submit" name="cari" value="Cari Foto" />
            </form>
        </div>
    </div>
    
    <div class="section">
        <div class="container">
            <h2 style="text-align:center">Kategori</h2>
            <div class="box">
                <?php
                    $kategori = mysqli_query($conn, "SELECT * FROM tb_category ORDER BY category_id DESC");
					if(mysqli_num_rows($kategori) > 0){
						while($k = mysqli_fetch_array($kategori)){
				?>
                    <a href="galeri.php?kat=<?php echo $k['category_id'] ?>">
                        <div class="col-5">
                            <img src="img/app.png" width="50px" style="margin-bottom:5px;" />
                        <p><?php echo $k['category_name'] ?></p>
                        </div>
                    </a>
                <?php }}else{ ?>
                     <p>Kategori tidak ada</p>
                <?php } ?>
            </div>
        </div>
    </div>
    
        <div class="section">
        <div class="container">
        <h2 style="text-align:center">Kegiatan Terbaru</h2>
            <div class="box">
            <?php
              $foto = mysqli_query($conn, "SELECT * FROM tb_image WHERE image_status = 1 ORDER BY image_id DESC LIMIT 8");
			  if(mysqli_num_rows($foto) > 0){
				  while($p = mysqli_fetch_array($foto)){
		  ?>
          <a href="detail-image.php?id=<?php echo $p['image_id'] ?>">
          <div class="col-4">
              <img src="foto/<?php echo $p['image'] ?>" height="150px" />
              <p class="nama"><?php echo substr($p['image_name'], 0, 30)  ?></p>
              <p class="nama"><?php echo $p['category_name']  ?></p>
          </div>
          </a>
          <?php }}else{ ?>
              <p>Foto tidak ada</p>
          <?php } ?>
       </div>
    </div>

    <div class="container">
    <h2 style="text-align:center">Foto Kegiatan</h2>
       <div class="box">
          <?php
              $foto = mysqli_query($conn, "SELECT * FROM tb_image WHERE image_status = 1 ORDER BY image_id");
			  if(mysqli_num_rows($foto) > 0){
				  while($p = mysqli_fetch_array($foto)){
		  ?>
          <a href="detail-image.php?id=<?php echo $p['image_id'] ?>">
          <div class="col-4">
              <img src="foto/<?php echo $p['image'] ?>" height="150px" />
              <p class="nama"><?php echo substr($p['image_name'], 0, 30)  ?></p>
              <p class="nama"><?php echo $p['date_created']  ?></p>
          </div>
          </a>
          <?php }}else{ ?>
              <p>Foto tidak ada</p>
          <?php } ?>
       </div>
    </div>

    <div class="container">
    <h2 style="text-align:center">Peta Sekolah</h2>
    <div class="box">
    <img src="img/IMG-20240423-WA0002.jpg" width="550px" style="margin-bottom:15px;"/>
</div>
</div>

    <div class="container">
    <h2 style="text-align:center">Maps Sekolah</h2>
    <div class="box">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d18856.664433375467!2d106.87350196843119!3d-6.505808804618419!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69c15f22b23331%3A0x152d0f1eb6ef7c6c!2s1TRIPLE%20J%20Professional%20School!5e0!3m2!1sen!2sid!4v1714963272298!5m2!1sen!2sid" width="1030" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>
</div>
    
