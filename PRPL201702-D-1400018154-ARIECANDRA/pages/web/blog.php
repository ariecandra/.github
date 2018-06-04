<div class="container">
<?php
$segment="";
$sql="";
if(isset($_GET['news']))
{
	$segment="berita";
	$sql="Select * from post_article where post_id='".$_GET['news']."'";
}elseif(isset($_GET['room']))
{
	$segment="kamar";
	$sql="Select * from class where idclass='".$_GET['room']."'";
}elseif(isset($_GET['page']))
{
	$segment="halaman";
	$sql="Select * from page where page_id='".$_GET['page']."'";
}elseif(isset($_GET['catnews']))
{
	$segment="kategori";
	$sql="Select * from post_category where cat_id='".$_GET['catnews']."'";
}



?>
	<div class="sixteen columns add-bottom">
		<h1>Judul Artikel<span>Deskripsi Artikel</span></h1>
	</div>
    
	<div class="ten columns add-bottom">
		CONTENT
	</div><!-- end ten columns-->
    
    <!-- start right column-->
    <?php include(_THEME."rightblog.php"); ?>
	<!-- end right column-->
   
</div><!-- end container -->