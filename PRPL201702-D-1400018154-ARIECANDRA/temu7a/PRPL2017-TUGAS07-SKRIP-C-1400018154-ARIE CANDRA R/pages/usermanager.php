
<?php
ob_start();
?>
<form name="form1" method="post" action="?p=usermanager&act=useradd1">
  
  	  <label>Username</label>
	  <input type="text" name="username" id="username">
      <label>Password</label>
      <input type="text" name="password" id="password">
      <label>Email</label>
      <input type="text" name="email" id="email">
      <label>Nama</label>
      <input type="text" name="name" id="name">
      <label>Phone</label>
      <input type="text" name="phone" id="phone">
      <label>Jenis Login</label>
      <select name="jenis">
      	<option value="">- please select -</option>
                    <?php
					$q=mysql_query("Select * from login_cat");
					while($r=mysql_fetch_array($q))
					{
					?>
					<option value="<?php echo $r['cat_login_id']; ?>"><?php echo $r['cat_login_name']; ?></option>
                    <?php
					}
					?>
      
      
      </select>
     <!--<?php 
	 	_comboData("Select * from login_cat","cat_login_id","cat_login_name","jenis");
	 ?>-->
   		
      <br>
      <input type="submit" class="btn btn-primary" name="button" id="button" value="Daftar">
</form>
<?php
ob_end_flush();
?>
<p></p>
<p></p>
<span class="span4">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-striped">
  <tr>
    <td>Username</td>
    <td>Email</td>  
    <td>Nama</td>
    <td>Telp</td>
    <td>Recent Login</td>
    <td>Status</td> 
    <td>&nbsp;</td>
  </tr>
  <?php
  $rw=mysql_query("SELECT login_web.login_id, login_cat.cat_login_name, login_cat.cat_login_hash, login_web.username, login_web.password, login_web.email, login_web.name, login_web.phone, login_web.recent_login, login_web.status
FROM login_web INNER JOIN login_cat ON login_web.cat_login_id = login_cat.cat_login_id where username!='admin'");
  while($s=mysql_fetch_array($rw))
  {
  ?>
  <tr>
    <td><?php echo $s['username']; ?></td>
    <td><?php echo $s['email']; ?></td>
     <td><?php echo $s['name']; ?></td>
    <td><?php echo $s['phone']; ?></td>
    <td><?php echo $s['recent_login']; ?></td>
    <td><?php 
	$st=$s['status']; 
	if($st=="1")
	{
		echo '<span class="label label-success">Aktif</span>';
	}elseif($st=="0")
	{
		echo '<span class="label">Non Aktif</span>';
	}
	?></td>

    <td><a href="?p=user-edit&id=<?php echo sha1($s['username']); ?>">Edit</a> - <a href="?p=usermanager&del=1&id=<?php echo sha1($s['username']); ?>">Hapus</a></td>
  </tr>
  <?php
  }
  ?>
</table>
</span>
<?php
/*$jns=$_POST['jenis'];
$q=mysql_query("select cat_login_id from login_cat where cat_login_id='".$jns."'");
$qu=mysql_fetch_array($q);
$jenis=$qu['cat_login_id'];
*/
if(isset($_GET['act']))
{
	
	
	$rs=mysql_query("INSERT INTO `login_web` (`cat_login_id`, `username`, `password`, `email`, `name`, `phone`) VALUES
('".$_POST['jenis']."', '".$_POST['username']."', '".md5($_POST['password'])."', '".$_POST['email']."', '".$_POST['name']."', '".$_POST['phone']."')") or die(mysql_error());
	if($rs)
	{
		echo "<script>window.location='?p=usermanager'</script>";
	}
}
?>

<?php
if(isset($_GET['del']))
{
	$ids=$_GET['id'];
	$ff=mysql_query("Delete from login_web Where sha1(username)='".$ids."'");
	if($ff)
	{
		echo "<script>window.location='?p=usermanager'</script>";
	}
}
?>
