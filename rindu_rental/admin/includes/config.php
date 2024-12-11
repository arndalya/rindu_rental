<?php
# Konek ke Web Server Lokal
$myHost  = "localhost";
$myUser  = "root";
$myPass  = "";
$myDbs  = "rindu_rental";

$koneksidb = mysqli_connect($myHost, $myUser, $myPass, $myDbs);
if (! $koneksidb) {
  echo "Failed Connection !";
}
