<?php
$q=mysql_query("SELECT promote.idpromo, class.title as 'nmclass', class.price, promote.discount, promote.start_date, promote.end_date, promote.description as 'desc', promote.title as 'prom', class.photoclass
FROM promote LEFT JOIN class ON promote.idclass = class.idclass ");
while($r=mysql_fetch_array($q))
{
	$photo=$base_url."uploads/images/".$r['photoclass'];	
?>
	<h2>Promo <strong><?php echo $r['nmclass']; ?></strong></h2>
    <h3>Hingga <strong><?php echo $r['end_date']; ?></strong></h3>
    <div class="picture">
    
    <a href="<?php echo $photo; ?>" data-rel="prettyPhoto" title=""><span class="magnify"></span><img src="<?php echo $photo; ?>" alt="picture" class="scale-with-grid"></a><em></em>
   
    </div>
	<p>    
		<?php echo limit_200($r['desc']).".."; ?>
        <a href="<?php echo $base_url."?promo=".$r['idpromo']; ?>" class="button">Read more</a>
	</p>
<?php
}
?>

