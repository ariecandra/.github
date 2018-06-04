<script type="text/javascript">

   function changeFunc() {
    var selectBox = document.getElementById("selectBox");
    var selectedValue = selectBox.options[selectBox.selectedIndex].value;
    window.location='?p=room&id=' + selectedValue;	
   }

  </script>
<form action="" method="post">
<label>Tipe Room</label>
				<select name="rooms" class="required" id="selectBox" onChange="changeFunc()">
                	<?php
					if(isset($_GET['id']))
					{
						$p=mysql_query("Select * from class where idclass='".$_GET['id']."'");
						$p2=mysql_fetch_array($p);
						echo '<option value="'.$p2['idclass'].'">'.$p2['title'].'</option>';
					}
					?>
					<option value="">- please select -</option>
                    <?php
					$q=mysql_query("Select * from class");
					while($r=mysql_fetch_array($q))
					{
					?>
					<option value="<?php echo $r['idclass']; ?>"><?php echo $r['title']; ?></option>
                    <?php
					}
					?>
				</select>

<?php
if(isset($_GET['id']))
{
	$p=mysql_query("Select count(idrooms) as nr,namespace from rooms where idclass='".$_GET['id']."'");
	$nr=mysql_fetch_array($p);
	$rs=$nr['nr'];	
	echo '<label>Jumlah Room</label>';
	echo '<input type="text" name="jumlah" class="input-xxlarge" value="'.$rs.'">';
	echo '<label>Nama Room</label>';
	echo '<input type="text" name="nspace" class="input-xxlarge" value="'.$nr['namespace'].'">';
	echo '<p></p><p></p>';
	echo '<input type="submit" value="Update" name="button">';
}
?>



</form>

<?php
if(isset($_POST['button']))
{

		mysql_query("Delete from rooms where idclass='".$_GET['id']."'");
		$jml=$_POST['jumlah'];
			for ($i = 1; $i <= $jml; $i++) {
				$sp=$_POST['nspace'].$i;
				mysql_query("Insert into rooms (`numbers`,`idclass`,`status`,`namespace`) values ('".$sp."','".$_GET['id']."','0','".$_POST['nspace']."')");
			}
			_direct("?p=room");
		
		

}
?>