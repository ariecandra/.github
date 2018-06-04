<script src="<?php echo $base_url; ?>includes/ckeditor/ckeditor.js"></script>
<script src="<?php echo $base_url; ?>includes/ckfinder/ckfinder.js"></script>
<?php
ob_start();
?>
<form name="form1" method="post" action="">
  	  <label>Nama</label>
      <input type="text" name="nama" id="nama">
      <label>Harga</label>
      <input type="text" name="harga" id="harga">
      <label>Feature Image (akan ditampilkan sebagai thumbnails)</label>
      <input type="text" name="photo" id="photo" onClick="window.open('<?php echo $base_url; ?>includes/imguploads/index.php','popuppage','width=600,toolbar=0,resizable=0,scrollbars=no,height=400,top=100,left=100');">
      <input type="hidden" name="ext" id="ext" />
<input type="hidden" name="nfile" id="nfile" />
<label>Fasilitas</label>
<input type="checkbox" value="lcd" name="1">LCD<br>
<input type="checkbox" value="wifi" name="2">Wifi<br>
<input type="checkbox" value="breakfast" name="3">Sarapan<br>
<input type="checkbox" value="safe" name="4">Pelayanan Hotel Plus<br>
<input type="checkbox" value="bath" name="5">Kamar Mandi<br>
<input type="checkbox" value="dinner" name="6">Makan Malam<br>
<input type="checkbox" value="parking" name="7">Parkir<br>
<input type="checkbox" value="laundry" name="8">Laundry<br>
<p></p>
      <label>Deskripsi</label>
      <textarea id="editor1" name="editor1" rows="10" cols="80"></textarea>
   	
      <p></p>
      <input type="submit" class="btn btn-primary" name="button" id="button" value="Tambah">
</form>
<script type="text/javascript">

// This is a check for the CKEditor class. If not defined, the paths must be checked.
if ( typeof CKEDITOR == 'undefined' )
{
	document.write(
		'<strong><span style="color: #ff0000">Error</span>: CKEditor not found</strong>.' +
		'This sample assumes that CKEditor (not included with CKFinder) is installed in' +
		'the "/ckeditor/" path. If you have it installed in a different place, just edit' +
		'this file, changing the wrong paths in the &lt;head&gt; (line 5) and the "BasePath"' +
		'value (line 32).' ) ;
}
else
{
	var editor = CKEDITOR.replace( 'editor1' );	

	// Just call CKFinder.SetupCKEditor and pass the CKEditor instance as the first argument.
	// The second parameter (optional), is the path for the CKFinder installation (default = "/ckfinder/").
	CKFinder.setupCKEditor( editor, '<?php echo $base_url; ?>includes/ckfinder/' ) ;

	// It is also possible to pass an object with selected CKFinder properties as a second argument.
	// CKFinder.SetupCKEditor( editor, { BasePath : '../../', RememberLastFolder : false } ) ;
}

		</script>
<?php
if(isset($_POST["button"]))
{
	$nid=_getautoinc("class");
	$rs=mysql_query("INSERT INTO `myhotel`.`class` (`title`, `price`, `description`, `photoclass`) VALUES ('".$_POST['nama']."','".$_POST['harga']."', '".$_POST['editor1']."','".$_POST['photo']."')");
	
	if($rs)
	{	
		$fc1 = (isset($_POST["1"])) ? $_POST["1"] : 0;
		$fc2 = (isset($_POST["2"])) ? $_POST["2"] : 0;
		$fc3 = (isset($_POST["3"])) ? $_POST["3"] : 0;
		$fc4 = (isset($_POST["4"])) ? $_POST["4"] : 0;
		$fc5 = (isset($_POST["5"])) ? $_POST["5"] : 0;
		$fc6 = (isset($_POST["6"])) ? $_POST["6"] : 0;
		$fc7 = (isset($_POST["7"])) ? $_POST["7"] : 0;
		$fc8 = (isset($_POST["8"])) ? $_POST["8"] : 0;
		//$sql1="";
		//$sql2="";
		//$sql3="";
		//$sql4="";
		//$sql5="";
		//$sql6="";
		//$sql7="";
		//$sql8="";
		
		$sql1="";
		$sql2="";
		$sql3="";
		$sql4="";
		$sql5="";
		$sql6="";
		$sql7="";
		$sql8="";
		if($fc1)
		{
		$sql1="Insert into facilities values ('".$nid."','".$fc1."','LCD','1')";
		}else{
		$sql1="Insert into facilities values ('".$nid."','lcd','LCD','0')";
		}
		
		if($fc2)
		{
		$sql2="Insert into facilities values ('".$nid."','".$fc2."','Free WIFI','1')";
		}else{
		$sql2="Insert into facilities values ('".$nid."','wifi','Free WIFI','0')";
		}
		
		if($fc3)
		{
		$sql3="Insert into facilities values ('".$nid."','".$fc3."','Sarapan','1')";
		}else{
		$sql3="Insert into facilities values ('".$nid."','breakfast','Sarapan','0')";
		}
		
		if($fc4)
		{
		$sql4="Insert into facilities values ('".$nid."','".$fc4."','Kenyamanan','1')";
		}else{
		$sql4="Insert into facilities values ('".$nid."','safe','Kenyamanan','0')";
		}
		
		if($fc5)
		{
		$sql5="Insert into facilities values ('".$nid."','".$fc5."','Kamar Mandi','1')";
		}else{
		$sql5="Insert into facilities values ('".$nid."','bath','Kamar Mandi','0')";
		}
		
		if($fc6)
		{
		$sql6="Insert into facilities values ('".$nid."','".$fc6."','Makan Malam','1')";
		}else{
		$sql6="Insert into facilities values ('".$nid."','dinner','Makan Malam','0')";
		}
		
		if($fc7)
		{
		$sql7="Insert into facilities values ('".$nid."','".$fc7."','Tempat Parkir','1')";
		}else{
		$sql7="Insert into facilities values ('".$nid."','parking','Tempat Parkir','0')";
		}
		
		if($fc8)
		{
		$sql8="Insert into facilities values ('".$nid."','".$fc8."','Cuci Gratis','1')";
		}else{
		$sql8="Insert into facilities values ('".$nid."','laundry','Cuci Gratis','0')";
		}
		$a1=mysql_query($sql1);
		$a2=mysql_query($sql2);
		$a3=mysql_query($sql3);
		$a4=mysql_query($sql4);
		$a5=mysql_query($sql5);
		$a6=mysql_query($sql6);
		$a7=mysql_query($sql7);
		$a8=mysql_query($sql8);
		//if($a8)
		//{
		//_direct("?p=class");
		//}
	}
}
ob_end_flush();
?>