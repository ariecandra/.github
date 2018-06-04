<?php
$q=mysql_query("Select * from class LIMIT 0,3");
while($r=mysql_fetch_array($q))
{
	$photo=$base_url."uploads/images/".$r['photoclass'];
	$id=$r['idclass'];
	

?>
<div class="four columns add-bottom">
	<div class="picture">
		<a href="<?php echo $photo; ?>" data-rel="prettyPhoto" title=""><span class="magnify"></span><img src="<?php echo $photo; ?>" alt="picture" class="scale-with-grid"></a><em></em>
	</div>
	<h3><?php echo $r['title']; ?> <strong><?php echo _getconfigdb("currency").$r['price']; ?></strong></h3>
	
	<ul class="room_facilities">
    <?php
		$q2=mysql_query("Select * from facilities where idclass='".$id."' and status='1'");
		while($r2=mysql_fetch_array($q2))
		{
	?>
		<li class="<?php echo $r2['fac']; ?>"><a class="tooltip_1" href="#" title="<?php echo $r2['title']; ?>"><?php echo $r2['title']; ?></a></li>
		
        <?php
		
		}
		?>
	</ul>
	<br class="clear add-bottom"/>
	<a href="<?php echo $base_url."?room="._encodeParam($id); ?>" class="button">Read more</a>
</div>
<?php
}
?>