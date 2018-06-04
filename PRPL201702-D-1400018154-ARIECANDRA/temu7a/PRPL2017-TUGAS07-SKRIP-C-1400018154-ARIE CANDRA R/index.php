<?php
session_start();
//CORE
error_reporting(0);
if(!isset($_SESSION['hash']) && $_SESSION['hash']!="admin")
{
	session_destroy();
	echo "<script>window.location='../index.php'</script>";
}
include("../config.php");
require_once('../includes/functions/publicfunc.php');
require_once('../includes/functions/dbfunc.php');
?>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html lang="en" class="ie6 ielt7 ielt8 ielt9"><![endif]--><!--[if IE 7 ]><html lang="en" class="ie7 ielt8 ielt9"><![endif]--><!--[if IE 8 ]><html lang="en" class="ie8 ielt9"><![endif]--><!--[if IE 9 ]><html lang="en" class="ie9"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="en"><!--<![endif]--> 
<head>
		<meta charset="utf-8">
		<title>Administrator Web</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">        
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
		<link href="css/site.css" rel="stylesheet">
        <link href="css/datepicker.css" rel="stylesheet">
        
        <script src="../js/jquery-1.9.1.js"></script>        
        <script src="js/bootstrap-datepicker.js"></script>
        <link rel="stylesheet" href="../js/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen">
      <script type="text/javascript">
        $(document).ready(function () {
            $('.dropdown-toggle').dropdown();
        });
    </script>
		<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	</head>
<body>



		<div class="container">       
        
			<div class="navbar">
            
				<div class="navbar-inner">
					<div class="container">
						<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> <a class="brand" href="#">Admin</a>
						<div class="nav-collapse">
							<ul class="nav">
								<li class="active">
									<a href="index.php">Dashboard</a>
								</li>
                                <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Konfigurasi <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                 <li>
                                        <a href="?p=appconfig">Options Web</a>
                                    </li>
                                    <li>
                                        <a href="?p=usermanager">User Settings</a>
                                    </li>
                                </ul>
								</li>								
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Entri <b class="caret"></b></a>
									<ul class="dropdown-menu">
                                    	<li class="nav-header">
											Hotel Room and Class
										</li>
										<li>
											<a href="?p=class">Kelas Hotel</a>
										</li>
										<li>
											<a href="?p=room">Rooms</a>
										</li>	
                                        <li>
											<a href="?p=promo">Promosi</a>
										</li>		                                       							
										<li class="divider">
										</li>
										<li class="nav-header">
											Posting and News
										</li>
										<li>
											<a href="?p=news">News</a>
										</li>										
									</ul>
                                    
                                    
                                        
								</li>
                                <li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Laporan<b class="caret"></b></a>
									<ul class="dropdown-menu">
                                    	
										<li>
											<a href="?p=repbulan">Laporan per Tanggal</a>
                                            <a href="pages/cetakpdf.php">Cetak PDF</a>
                                            <a href="pages/printexcel.php">Cetak Excel</a>
										</li>
																			
									</ul>
                                    
                                    
                                        
								</li>
							</ul>							
							<ul class="nav pull-right">
								<li>
									<a href="?p=chgpwd"><?php echo $_SESSION['user']; ?></a>
								</li>
								<li>
									<a href="../logout.php">Logout</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="span3">
					<div class="well" style="padding: 8px 0;">
						<ul class="nav nav-list">
							<li class="nav-header">
								Admin Menu
							</li>
							<li class="active">
							  <a href="index.php"><i class="icon-white icon-home"></i> Dashboard</a>
							</li>
							<li>
							  <a href="?p=class-add"><i class="icon-folder-open"></i> Tambah Kelas</a>
							</li>
							
						
							<li>
							  <a href="?p=news-add"><i class="icon-file"></i> Tambah Berita</a>
							</li>
                            <li>
							  <a href="?p=room"><i class="icon-file"></i> Room</a>
							</li>
                            <li>
							  <a href="?p=promo"><i class="icon-file"></i> Promo</a>
							</li>
                             <li>
							  <a href="?p=page&id=<?php echo sha1("1"); ?>"><i class="icon-file"></i> Halaman About</a>
							</li>
                             <li>
							  <a href="?p=page&id=<?php echo sha1("2"); ?>"><i class="icon-file"></i> Halaman Contact</a>
							</li>
							
						</ul>
					</div>
				</div>
				<div class="span9">				  
				<?php
				
					if(isset($_GET['p']))
					{
						include("pages/".$_GET['p'].".php");
					}
				?>
			  </div>
			</div>
		</div>
		
		<script src="js/bootstrap.min.js"></script>
		<script src="js/site.js"></script>
        
        
        <script type="text/javascript"  src="../js/plug_ins.js"></script>  
<!-- Google Maps API -->	
<script type="text/javascript" src="../js/google_map.js"></script>
<script src="../js/functions.js"></script>
</body>
</html>