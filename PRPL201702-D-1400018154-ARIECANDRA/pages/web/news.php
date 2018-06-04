<?php
$q=mysql_query("Select * from post_article order by create_date ASC LIMIT 0,8");
while($r=mysql_fetch_array($q))
{
	$photo=$base_url."uploads/images/".$r['featurephoto'];
?>
<div class="">
<img src="<?php echo $photo; ?>" class="scale-with-grid" alt="" width="120" height="80">
<h4><a href="?news=<?php echo _encodeParam($r['post_id']); ?>">Read more</a></h4>
<p>
<?php echo limit_200(strip_word_html($r['post_entry'])); ?>
</p>
</div>
<?php
}
?>