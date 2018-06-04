 <script>
$(function() {
$("#datepicker").datepicker({        
		 dateFormat: "yy-mm-dd",
    });
});
 $(function() {
$("#datepicker2").datepicker({        
		 dateFormat: "yy-mm-dd",
    });
});

</script>
<style>
.ui-datepicker td {
    border: 1px solid #CCC;
    padding: 0;
}

.ui-state-default,
.ui-widget-content .ui-state-default,
.ui-widget-header .ui-state-default {
    border: solid #FFF;
    border-width: 1px 0 0 1px;
}

</style>
<form action="" method="post">
Dari <input name="tgl1" type="date" id="datepicker" value="<?php echo $r['start_date']; ?>"> Hingga <input name="tgl2" type="date" id="datepicker2" value="<?php echo $r['end_date']; ?>">
<input type="submit" name="button" class="btn btn-primary btn-large" value="Cari">
</form>
<hr>

<span class="span4">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-striped">
  <tr>
    <td>Tanggal Checkin</td>
    <td>Tanggal Checkout</td>  
    <td>Kelas</td>    
    <td>Nama</td>
    <td>Identitas</td>
    <td>Metode Pembayaran</td>
    <td>Total Pembayaran</td>
   
    <td>&nbsp;</td>
  </tr>
  <?php
if(isset($_POST['button']))
{
	$originalDate1 = $_POST['tgl1'];
	$newDate1 = date("Y-m-d", strtotime($originalDate1));
	$originalDate2 = $_POST['tgl2'];
	$newDate2 = date("Y-m-d", strtotime($originalDate2));
	
	$sql="SELECT reservations.idreservation, reservations.resv_date, reservations.resv_date2, reservations.title as a, reservations.name, identification.identify_name, reservations.identify_value, payment.payment_name, reservations.payment_value,class.price, class.title as b
FROM ((reservations LEFT JOIN class ON reservations.idclass = class.idclass) LEFT JOIN identification ON reservations.identify_kinds = identification.identify_kinds) LEFT JOIN payment ON reservations.payment_kinds = payment.payment_kinds Where reservations.resv_date between '".$newDate1."' and '".$newDate2."'";
	$q=mysql_query($sql) or die(mysql_error());
	while($r=mysql_fetch_array($q))
	{
		$ts1=strtotime($r['resv_date']);
		$ts2=strtotime($r['resv_date2']);
		$seconds_diff = $ts2 - $ts1;
		$d=floor($seconds_diff/3600/24);
		$byr=$d*$r['price'];
?>
  <tr>
  	<td><?php echo $r['resv_date']; ?></td>
    <td><?php echo $r['resv_date2']; ?></td>
    <td><?php echo $r['b']; ?></td>
    <td><?php echo $r['a']." ".$r['name']; ?></td>
    <td><?php echo "(".$r['identify_name'].")<br>".$r['identify_value']; ?></td>
    <td><?php echo "(".$r['payment_name'].")<br>".$r['payment_value']; ?></td>
    <td><?php echo $byr; ?></td>
  </tr>
<?php
	}
}
?>
</table>
