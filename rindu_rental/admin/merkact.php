<?php
include('includes/config.php');
$brand    = $_POST['brand'];
$sql     = "INSERT INTO merk (nama_merk) VALUES ('$brand')";
$query     = mysqli_query($koneksidb, $sql);
if ($query) {
    echo "<script type='text/javascript'>
			alert('Berhasil tambah data.'); 
			document.location = 'merk.php'; 
		</script>";
} else {
    echo "<script type='text/javascript'>
			alert('Terjadi kesalahan, silahkan coba lagi!.'); 
			document.location = 'tambahmerk.php'; 
		</script>";
}
