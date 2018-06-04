<?php
session_start();
define('APP_PATH',dirname(__FILE__).'/');
define('_THEME',APP_PATH.'pages/web/');
define('_INCS',APP_PATH.'includes/');
//CORE
require_once('config.php');
require_once(_INCS.'functions/publicfunc.php');
require_once(_INCS.'functions/dbfunc.php');

if(isset($_GET['news']) || isset($_GET['room']) || isset($_GET['promo']) || isset($_GET['page']) || isset($_GET['catnews']))
{
	include(_THEME.'indexblog.php');
}elseif(isset($_GET['auth']) && $_GET['auth']=='login'){
	include('login.php');
}else{
	include(_THEME.'indexhome.php');	
 
}

?>

