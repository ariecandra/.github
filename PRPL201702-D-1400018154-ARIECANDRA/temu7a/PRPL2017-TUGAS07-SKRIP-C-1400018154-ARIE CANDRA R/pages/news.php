
<span class="span4">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-striped">
  <tr>
    <td>Judul</td>
    <td>Dibuat Oleh</td>    
    <td>Dibuat Tanggal</td>
    <td>Jumlah Dilihat</td>
   
    <td>&nbsp;</td>
  </tr>
  <?php
  $rw=mysql_query("Select * from post_article");
  while($s=mysql_fetch_array($rw))
  {
	  $photo=$base_url."uploads/images/".$s['featurephoto'];
  ?>
  <tr>
    <td><?php echo $s['title']; ?></td>
    <td><?php echo $s['create_by']; ?></td>     
    <td><?php echo $s['create_date']; ?></td>
    <td><?php echo $s['hit']; ?></td>
    
    <td><a href="?p=news-edit&id=<?php echo sha1($s['post_id']); ?>">Edit</a> - <a href="?p=news&del=1&id=<?php echo sha1($s['post_id']); ?>">Hapus</a></td>
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
	$ff=mysql_query("Delete from post_article Where sha1(post_id)='".$ids."'");
	if($ff)
	{
		echo "<script>window.location='?p=news'</script>";
	}
}

