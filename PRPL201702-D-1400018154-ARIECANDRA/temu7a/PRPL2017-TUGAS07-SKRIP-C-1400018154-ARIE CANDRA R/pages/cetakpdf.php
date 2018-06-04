<?php
//include "config.php";
include "tcpdf/tcpdf.php";

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
		$q = mysql_query($sql);
		
		
$file = new TCPDF('L','mm','Legal');

$file->SetCreator(PDF_CREATOR);
$file->SetAuthor('NO-NAME');
$file->SetTitle('Laporan Data Reservasi Hotel');
$file->SetSubject('Reservasi');
$file->SetKeywords('laporan, reservasi, hotel');

$file->AddPage();
//$file->SetMargins('100px','600px','100');
$file->SetFont("times", "", 12);
$file->SetFont("times", "B", 32);
$file->Cell(0,0,"PARADISE HOTEL",0,1,"C");
//$file->SetFont("times", "B", 32);
//$file->Cell(0,0,"DIPLOMA IPB",0,1,"C");
$file->SetFont("times", "", 12);

$html = '<h1>Data Reservasi Hotel</h1><u>Lampiran :</u> 1 Berkas<br><hr>&nbsp;<br><br>';
$html .= '<table border="2" cellpadding="0">
	<tr>
		<th align = "center " width = "30" bgcolor="#CCCCCC">No</th>
		<th align = "center " width = "80" bgcolor="#CCCCCC">Id_Reservasi</th>
		<th align = "center " width = "60" bgcolor="#CCCCCC">Check In</th>
		<th align = "center " width = "60" bgcolor="#CCCCCC">Check Out</th>
		<th align = "center " width = "100" bgcolor="#CCCCCC">Nama</th>
		<th align = "center " width = "100" bgcolor="#CCCCCC">No Telpon</th>
		<th align = "center " width = "100" bgcolor="#CCCCCC">Id_Paypall</th>
	
	</tr>
	';

$no = 1;
	while($hasil = mysql_fetch_array($q)) {
		$html .= '
	<tr>
		<td> '.$no.'</td>
		<td align="center">'.$hasil['idreservation'].'</td>
		<td align="center">'.$hasil['resv_date'].'</td>
		<td align="center">'.$hasil['resv_date2'].'</td>
		<td align="center">'.$hasil['name'].'</td>
		<td align="center">'.$hasil['identify_value'].'</td>
		<td align="center">'.$hasil['payment_value'].'</td>
	</tr>';
		$no++;
	}
$html .= '</table><br><br><br>Bogor, '.date('d-m-Y').'<br>
<b>Admintrator Hotel</b><br><br><br><br>
<u>NO-NAME</u>';

$file->writeHTML($html);

$file->Output("reservasi.pdf","I");


?>