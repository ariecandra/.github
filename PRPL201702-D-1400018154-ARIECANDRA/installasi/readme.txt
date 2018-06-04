Buat sebuah database di PhpMyAdmin myhotel

import myhotel.sql


file configurasi :
- config.php
$basefolder="hotel"; //folder web
$dbhost="localhost"; //host mysql
$dbuser="root"; //user mysql
$dbpass=""; //password mysql
$dbname="myhotel"; //nama database mysql


$pathfolder = "C:/xampp/htdocs/hotel/uploads/"; 
//jika menggunakan web offline buat path dimana diinstall
//format drive install:/folderwebserver/folderwweb/namafolderaplikasi/uploads/


- includes\ckfinder\config.php
ubah $baseUrl , contoh jika menggunakan folder hotelku, maka ubah
menjadi "/hotelku/uploads/" , defaultnya "/hotel/uploads/"