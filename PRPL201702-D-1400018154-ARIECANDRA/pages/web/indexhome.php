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
<link rel="stylesheet" href="css/skeleton.css">
<link rel="stylesheet" href="css/menu.css">
<link rel="stylesheet" href="css/flexslider.css">
<link rel="stylesheet" href="css/layout.css">

<!-- prettyPhoto plugin -->
<link rel="stylesheet" href="js/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen">
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- Favicons-->
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
   
<!-- Jquery -->
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui.js"></script>
<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/flexi_slider.js"></script>
	<script type="text/javascript">
		$(window).load(function() {
			$('.flexslider').flexslider();
		});
	</script>
<!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>
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
<div class="sixteen columns">
	<div class="flexslider">
		<ul class="slides">
			<?php include(_THEME."slide.php"); ?>
		</ul>
	</div><!-- end flexi-->
</div><!-- end sixteen columns -->
</div><!-- end container -->

<div class="bg_gray add-bottom_3">
<section class="container">

<div class="sixteen columns" id="banner_home">
<?php include(_THEME."checkbanner.php"); ?>
</div><!-- end book banner -->

<div class="four columns">
	<?php include(_THEME."infopromo.php"); ?>
</div>

<?php include(_THEME."classroom.php"); ?>

</section><!-- end container -->
</div><!-- end bg gray -->

<section class="container add-bottom">
<?php include(_THEME."news.php"); ?>
</section><!-- end container hotel info -->

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