
<span class="span4">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-striped">
  <tr>
    <td>Nama</td>
    <td>Harga</td>    
    <td>Photo</td>
    <td>LCD</td>
    <td>WIFI</td>
    <td>Breakfast</td>
    <td>Safe</td>
    <td>Bath</td>
    <td>Dinner</td>
    <td>Parking</td>
    <td>Laundry</td>
    
   
    <td>&nbsp;</td>
  </tr>
  <?php
  $rw=mysql_query("Select * from class");
  while($s=mysql_fetch_array($rw))
  {
	  $photo=$base_url."uploads/images/".$s['photoclass'];
  ?>
  <tr>
    <td><?php echo $s['title']; ?></td>
    <td><?php echo $s['price']; ?></td>
     
    <td><div class="picture">
    
    <a href="<?php echo $photo; ?>" data-rel="prettyPhoto" title=""><span class="magnify"></span><img src="<?php echo $photo; ?>" alt="<?php echo $s['title']; ?>" class="scale-with-grid" width="90" height="90"></a><em></em>
   <span>Click Image for Enlarge</span>
    </div></td> 
    <?php
			$m1=mysql_query("Select status from facilities where idclass='".$s['idclass']."' and fac='lcd'");
			$mk1=mysql_fetch_array($m1);
			echo '<td>   
				'._toimg(_replacenull($mk1['status'],'0')).'		
			    </td>  ';
	?>
    <?php
			$m1=mysql_query("Select status from facilities where idclass='".$s['idclass']."' and fac='wifi'");
			$mk1=mysql_fetch_array($m1);
			echo '<td>   
				'._toimg(_replacenull($mk1['status'],'0')).'		
			    </td>  ';
	?>
    <?php
			$m1=mysql_query("Select status from facilities where idclass='".$s['idclass']."' and fac='breakfast'");
			$mk1=mysql_fetch_array($m1);
			echo '<td>   
				'._toimg(_replacenull($mk1['status'],'0')).'		
			    </td>  ';
	?>
    <?php
			$m1=mysql_query("Select status from facilities where idclass='".$s['idclass']."' and fac='safe'");
			$mk1=mysql_fetch_array($m1);
			echo '<td>   
				'._toimg(_replacenull($mk1['status'],'0')).'		
			    </td>  ';
	?>
    <?php
			$m1=mysql_query("Select status from facilities where idclass='".$s['idclass']."' and fac='bath'");
			$mk1=mysql_fetch_array($m1);
			echo '<td>   
				'._toimg(_replacenull($mk1['status'],'0')).'		
			    </td>  ';
	?>
    <?php
			$m1=mysql_query("Select status from facilities where idclass='".$s['idclass']."' and fac='dinner'");
			$mk1=mysql_fetch_array($m1);
			echo '<td>   
				'._toimg(_replacenull($mk1['status'],'0')).'		
			    </td>  ';
	?>
    <?php
			$m1=mysql_query("Select status from facilities where idclass='".$s['idclass']."' and fac='parking'");
			$mk1=mysql_fetch_array($m1);
			echo '<td>   
				'._toimg(_replacenull($mk1['status'],'0')).'		
			    </td>  ';
	?>
    
    <?php
			$m1=mysql_query("Select status from facilities where idclass='".$s['idclass']."' and fac='laundry'");
			$mk1=mysql_fetch_array($m1);
			echo '<td>   
				'._toimg(_replacenull($mk1['status'],'0')).'		
			    </td>  ';
	?>
    
    
    <td><a href="?p=class-edit&id=<?php echo sha1($s['idclass']); ?>&act=<?php echo $s['idclass']; ?>">Edit</a> - <a href="?p=class&del=1&id=<?php echo sha1($s['idclass']); ?>">Hapus</a></td>
  </tr>
  <?php
  }
  ?>
</table>
</span>
<?php
if(isset($_GET['del']))
{
	$ids=$_GET['id'];
	$ff=mysql_query("Delete from class Where sha1(idclass)='".$ids."'");
	if($ff)
	{
		echo "<script>window.location='?p=class'</script>";
	}
}

function _toimg($str)
{
	$im="";
	if($str=="0")
	{
		$im='<i class="icon-remove">';
	}elseif($str=="1")
	{
		$im= '<i class="icon-ok">';
	}
	return $im;
}
?>


