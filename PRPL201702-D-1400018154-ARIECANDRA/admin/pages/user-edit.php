<?php
ob_start();
if(isset($_GET['id']))
{
	$rs=mysql_query("Select * from login_web where sha1(username)='".$_GET['id']."'");
	$row=mysql_fetch_array($rs);
}
?>
<form name="form1" method="post" action="">
  <label>Username</label>

      <input type="text" name="username" id="username" value="<?php echo $row['username']; ?>">
      <label>Password</label>
      <input type="text" name="password" id="password">
      <label>Email</label>
      <input type="text" name="email" id="email" value="<?php echo $row['email']; ?>">
      <label>Nama</label>
      <input type="text" name="name" id="name" value="<?php echo $row['name']; ?>">
      <label>Phone</label>
      <input type="text" name="phone" id="phone" value="<?php echo $row['phone']; ?>">
      <label>Jenis Login</label>
     <?php 
	 	_comboData("Select * from login_cat","cat_login_id","cat_login_name","jenis");
	 ?>
     <label>Status Aktif</label>
     <select name="staktif">
     <option value="1"> Aktif</option>
     <option value="0"> Banned</option>
     </select>
   
      <p></p>
      <input type="submit" class="btn btn-primary" name="button" id="button" value="Update">
</form>
	<?php
	if(isset($_POST["button"]))
	{
		if($_POST['password']=="")
		{
			$rs=mysql_query("UPDATE login_web SET `cat_login_id`='".$_POST['jenis']."', `username`='".$_POST['username']."', `email`='".$_POST['email']."', `name`='".$_POST['name']."',`phone`= '".$_POST['phone']."',status='".$_POST['staktif']."' Where sha1(username)='".$_GET['id']."'") or die(mysql_error());
		}else{
			$rs=mysql_query("UPDATE login_web SET `cat_login_id`='".$_POST['jenis']."', `username`='".$_POST['username']."', `password`='".md5($_POST['password'])."', `email`='".$_POST['email']."', `name`='".$_POST['name']."',`phone`= '".$_POST['phone']."',status='".$_POST['staktif']."' Where sha1(username)='".$_GET['id']."'") or die(mysql_error());
		}
		echo "<script>window.location='?p=usermanager'</script>";
	}
	?>
<?php
ob_end_flush();
?>