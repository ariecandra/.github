<?php
if(!isset($_SESSION['ada']))
{
	echo "<h1>GUNAKAN WIDGET SEBELAH KANAN</h1>";
	
}else{
?>
<form action="" method="post">
<h1><?php 
$s1=$_SESSION['rm']; 
$p1=mysql_query("Select * from class where idclass='".$s1."'");
$pr1=mysql_fetch_array($p1);
$hrg=$pr1['price'];
echo $pr1['title'];
?></h1>
<h2>Total <?php echo $_SESSION['interval']*$hrg; ?></h2>
<h3>Untuk <b><?php echo $_SESSION['interval']; ?></b> hari</h3>
<h3>Mulai Tanggal <b><?php echo $_SESSION['tgl1']; ?></b> hingga <b><?php echo $_SESSION['tgl2']; ?></b></h3>

<label>Title</label>
<select name="title">
<option value="Mr"> Mr </option>
<option value="Miss"> Miss</option>
</select>
<label>Nama</label>
<input type="text" name="nama">
<label>Identitas</label>
<select name="identitas">
<?php
$i1=mysql_query("Select * from identification where status='1'");
while($r1=mysql_fetch_array($i1))
{
?>
<option value="<?php echo $r1['identify_kinds']; ?>"> <?php echo $r1['identify_name']; ?> </option>
<?php
}
?>
</select>
<input type="text" name="iden">
<label>Payment</label>
<select name="payment">
<?php
$i1=mysql_query("Select * from payment where status='1'");
while($r1=mysql_fetch_array($i1))
{
?>
<option value="<?php echo $r1['payment_kinds']; ?>"> <?php echo $r1['payment_name']; ?> </option>
<?php
}
?>
</select>
<input type="text" name="pay">
<input type="submit" name="button222" value="Booking"/>
<input type="submit" name="button111" value="Batal"/>
</form>
<?php
}
?>

<?php
if(isset($_POST['button222']))
{
	
	$q=mysql_query("INSERT INTO `myhotel`.`reservations` (`resv_date`,`resv_date2`,`title`, `name`, `identify_kinds`, `identify_value`, `payment_kinds`, `payment_value`, `idclass`) VALUES ( '".$_SESSION['tgl1']."', '".$_SESSION['tgl2']."', '".$_POST['title']."', '".$_POST['nama']."', '".$_POST['identitas']."', '".$_POST['iden']."', '".$_POST['payment']."', '".$_POST['pay']."', '".$_SESSION['rm']."')");
	if($q)
	{
		unset($_SESSION['interval']);
		unset($_SESSION['tgl1']);
		unset($_SESSION['tgl2']);
		unset($_SESSION['rm']);
		unset($_SESSION['ada']);
		_direct("?y=".session_id()."&page="._encodeParam("reservasi"));
	}
}

if(isset($_POST['button111']))
{
	unset($_SESSION['interval']);
		unset($_SESSION['tgl1']);
		unset($_SESSION['tgl2']);
		unset($_SESSION['rm']);
		unset($_SESSION['ada']);
		_direct("?y=".session_id()."&page="._encodeParam("reservasi"));
}
?>