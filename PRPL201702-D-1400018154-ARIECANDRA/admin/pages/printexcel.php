<?php
	$namaFile = "DataReservasiHotel.xls";
	header("Content-type: application/octet-stream");
	header("Content-Disposition: attachment; filename=".$namaFile."");
	header("Pragma: no-cahce");
	header("Expires: 0");
	
	//session_start();
	//include "koneksiDB.php";
	//validasi();
	//$sql = "SELECT * FROM tbl_barang";
	//$query = mysql_query($sql);
	
$basefolder="hotel";
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname="myhotel";

$base_url="http://localhost/".$basefolder."/";
$con=mysql_connect($dbhost,$dbuser,$dbpass) or die(mysql_error());
$rs=mysql_select_db($dbname);
$pathfolder = "C:\xampp\htdocs\hotel"; 
//mysql_select_db("myhotel") or die("database tidak ada");

		$sql = "SELECT reservations.idreservation, reservations.resv_date, reservations.resv_date2, reservations.name, reservations.identify_value, reservations.payment_value FROM reservations";
		$query = mysql_query($sql);
	
?>


<h2>Data Reservasi Hotel</h2>
<table border="1">
	<tr>
	<th align = "center " width = "30" bgcolor="#CCCCCC">No</th>
		<th align = "center " width = "90" bgcolor="#CCCCCC">Id_Reservasi</th>
		<th align = "center " width = "80" bgcolor="#CCCCCC">Check In</th>
		<th align = "center " width = "80" bgcolor="#CCCCCC">Check Out</th>
		<th align = "center " width = "100" bgcolor="#CCCCCC">Nama</th>
		<th align = "center " width = "100" bgcolor="#CCCCCC">No Telpon</th>
		<th align = "center " width = "100" bgcolor="#CCCCCC">Id_Paypall</th>
	</tr>
<?php
	$no = 1;
	while($hasil = mysql_fetch_array($query)) {
?>
	<tr>
		<td><?php echo $no; ?></td>
		<td align="center"><?php echo $hasil['idreservation']; ?></td>
		<td><?php echo $hasil['resv_date']; ?></td>
		<td><?php echo $hasil['resv_date2']; ?></td>
        <td><?php echo $hasil['name']; ?></td>
        <td><?php echo $hasil['identify_value']; ?></td>
        <td><?php echo $hasil['payment_value']; ?></td>
	</tr>
<?php
		$no++;
	}
?>
</table>