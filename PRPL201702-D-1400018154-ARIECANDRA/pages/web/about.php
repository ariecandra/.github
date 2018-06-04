<?php
$q=mysql_query("Select * from page where id_page='1'");
$r=mysql_fetch_array($q);
?>
<h2><?php echo $r['title']; ?></h2>
<p><?php echo $r['post_entry']; ?></p>