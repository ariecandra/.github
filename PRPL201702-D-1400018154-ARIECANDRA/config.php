<?php
//$basefolder="hottttttt";
$basefolder="hotel";
$dbhost="localhost";
$dbuser="root";
$dbpass="";
$dbname="myhotel";
$base_url="http://localhost/".$basefolder."/";
$con=mysql_connect($dbhost,$dbuser,$dbpass) or die(mysql_error());
$rs=mysql_select_db($dbname);
$pathfolder = "C:\xampp\htdocs\hotel"; 
//$pathfolder = "C:\xampp\htdocs\hottttttt"; 
?>