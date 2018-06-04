<script src="<?php echo $base_url; ?>includes/ckeditor/ckeditor.js"></script>
<script src="<?php echo $base_url; ?>includes/ckfinder/ckfinder.js"></script>

   <script>
$(function() {
$( "#datepicker" ).datepicker();
});
$(function() {
$( "#datepicker2" ).datepicker();
});
</script>
<style>
.ui-datepicker td {
    border: 1px solid #CCC;
    padding: 0;
}

.ui-state-default,
.ui-widget-content .ui-state-default,
.ui-widget-header .ui-state-default {
    border: solid #FFF;
    border-width: 1px 0 0 1px;
}

</style>
<?php
if(isset($_GET['id']))
{
$q=mysql_query("Select * from page where sha1(id_page)='".$_GET['id']."'");
$r=mysql_fetch_array($q);
}
?>
<form action="" method="post">

<label>Judul</label>
<input type="text" name="judul" class="input-large" value="<?php echo $r['title']; ?>"/>

<label>Deskripsi</label>
<textarea id="editor1" name="editor1" rows="10" cols="80"> <?php echo $r['post_entry']; ?></textarea>
<input type="submit" class="btn btn-primary" name="button" id="button" value="Update">
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
if(isset($_POST['button']))
{
	$q=mysql_query("Update page SET title='".$_POST['judul']."',post_entry='".$_POST['editor1']."' Where sha1(id_page)='".$_GET['id']."'");
	if($q)
	{
		_direct("?p=promo");
	}
}
 ?>