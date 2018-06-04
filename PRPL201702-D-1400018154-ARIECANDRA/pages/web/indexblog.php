<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

<!-- Basic Page Needs -->
<meta charset="utf-8">
<title><?php echo _getconfigdb("company_name"); ?></title>
<meta name="description" content="Responsive Hotel  Site template">
<meta name="author" content="">

<!-- Mobile Specific Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS -->
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/menu.css">
<link rel="stylesheet" href="css/skeleton.css">
<link rel="stylesheet" href="css/layout.css">
<link href="css/datepicker.css" rel="stylesheet" type="text/css"/>
<!-- prettyPhoto plugin -->
<link rel="stylesheet" href="js/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen">
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- Favicons-->
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
   
<!-- Jquery -->
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui.js"></script>
<link rel="stylesheet" href="css/jquery-ui.css">
</head>
<body>
<header>
<div class="container">
	<div class=" four columns" id="logo"><a href="index.php">Paradise hotel</a></div>
	
    <!-- start main nav -->
	<div class="twelve columns">
		<nav>
		<ul id="main-nav" class="sf-menu">
			<?php include(_THEME."header.php"); ?>
		</ul>
		</nav><!-- end main nav -->
	</div><!-- end twelve -->
</div><!-- end container -->
</header><!-- end header-->

<div class="container">
	<div class="sixteen columns add-bottom">
	
	</div>
    
	<div class="ten columns add-bottom">
		<?php
$segment="";
$sql="";
if(isset($_GET['news']))
{
	$segment="berita";
	$sql="Select * from post_article where post_id='".$_GET['news']."'";
	$q=mysql_query($sql);
	$r=mysql_fetch_array($q);
	echo '
		<h1>'.$r['title'].'<br><span>Tanggal '.$r['create_date'].' dibuat oleh '.$r['create_by'].'| dilihat '.$r['create_date'].'</span></h1>
        <p>'.$r['post_entry'].'
        </p>';
}elseif(isset($_GET['room']))
{
	$segment="kamar";
	$sql="Select * from class where idclass='".$_GET['room']."'";
	$q=mysql_query($sql);
	$r=mysql_fetch_array($q);
	$photo=$base_url."uploads/images/".$r['photoclass'];
	echo '
		<h1>'.$r['title'].'<br></h1>
		<div class="picture">
		<a href="'.$photo.'" data-rel="prettyPhoto" title=""><span class="magnify"></span><img src="'.$photo.'" alt="picture" class="scale-with-grid" width="300" height="300"></a><em></em>
	</div>
	<p> Price '._getconfigdb("currency").' '.$r['price'].'
        </p>
        <p>'.$r['description'].'
        </p>
		
	';
}elseif(isset($_GET['promo']))
{

$q=mysql_query("SELECT promote.idpromo, class.title as 'nmclass', class.price, promote.discount, promote.start_date, promote.end_date, promote.description as 'desc', promote.title as 'prom', class.photoclass
FROM promote LEFT JOIN class ON promote.idclass = class.idclass order by end_date ASC Limit 0,1");
$r=mysql_fetch_array($q);
$hrg=$r['price']-(($r['discount']/100)*$r['price']);
	$photo=$base_url."uploads/images/".$r['photoclass'];	
echo '
	<h2>Promo <strong>'.$r['nmclass'].'</strong></h2>
    <h3>Hingga <strong>'.$r['end_date'].'</strong></h3>
    <div class="picture">
    
    <a href="'.$photo.'" data-rel="prettyPhoto" title=""><span class="magnify"></span><img src="'.$photo.'" alt="picture" class="scale-with-grid"></a><em></em></a></div>
	<p>    
		<h1>Price '._getconfigdb("currency").' '.$hrg.'</h1>
	</p>
   <p>    
		'.$r['desc'].'
	</p>';



}elseif(isset($_GET['page']))
{
	include(_THEME.$_GET['page'].".php");
}elseif(isset($_GET['catnews']))
{
	$segment="kategori";
	$sql="Select * from post_category where cat_id='".$_GET['catnews']."'";
}

?>
	</div><!-- end ten columns-->
    
    
    
    <!-- start right column-->
	<div class="five columns offset-by-one add-bottom">
    
		<?php include(_THEME."widgetcoba.php"); ?>
	</div><!-- end right column-->
</div><!-- end container -->

<footer>
   <?php include(_THEME."footer.php"); ?>
</footer><!-- footer  -->

<!-- JQUERY plugins: Moderniz, Prettyphoto, Flexislider, MobileMenu, SuperfishMenu, Weather, Tooltip-->	
<script type="text/javascript"  src="js/plug_ins.js"></script>  
<!-- Google Maps API -->	
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript" src="js/google_map.js"></script>
<script src="js/functions.js"></script>
</body>
</html>
