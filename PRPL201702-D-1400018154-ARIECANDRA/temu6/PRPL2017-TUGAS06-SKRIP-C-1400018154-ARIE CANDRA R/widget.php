   <script>
$(function() {
$("#datepicker").datepicker({        
		 dateFormat: "yy-mm-dd",
    });
});
 $(function() {
$("#datepicker2").datepicker({        
		 dateFormat: "yy-mm-dd",
    });
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
#recaptcha_image img {
      width: 200px;
      
    } 
</style>
<script>
var RecaptchaOptions = {
  theme : 'custom',
    custom_theme_widget: 'recaptcha_widget'
};
</script>
  		<div id="check_avail" class="expose add-bottom">
		<h2>Check Availability</h2>
		<form action="#" method="post" id="myform">
			<fieldset class="col_f_1">
				<label>Check in</label><input name="checkin" type="date" id="datepicker" class="required calendar">
			</fieldset>
			<fieldset class="col_f_2">
				<label>Check out</label><input name="checkout" type="date" id="datepicker2" class="required calendar">
			</fieldset>
			<br class="clear">			
			<fieldset class="col_f_2">
				<label>Tipe Room</label>
				<select name="rooms" class="required">
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
			</fieldset>
          <!--  <fieldset class="col_f_2">
           <div id="recaptcha_widget" style="display:none">

   <div id="recaptcha_image"></div>
   <div class="recaptcha_only_if_incorrect_sol" style="color:red">Incorrect please try again</div>

   <span class="recaptcha_only_if_image">Enter the words above:</span>
  

   <input type="text" class="required medium" id="recaptcha_response_field" name="recaptcha_response_field" />

   <div><a href="javascript:Recaptcha.reload()">Get another CAPTCHA</a></div>
   
   <div class="recaptcha_only_if_audio"><a href="javascript:Recaptcha.switch_type('image')">Get an image CAPTCHA</a></div>

   <div><a href="javascript:Recaptcha.showhelp()">Help</a></div>

 </div>

 <script type="text/javascript"
    src="http://www.google.com/recaptcha/api/challenge?k=6LceK-MSAAAAAOzKDm0KQb-4ptDbyAHvtrTpuE1d">
 </script>
 <noscript>
   <iframe src="http://www.google.com/recaptcha/api/noscript?k=6LceK-MSAAAAAOzKDm0KQb-4ptDbyAHvtrTpuE1d"
        height="300" width="500" frameborder="0"></iframe><br>
   <textarea name="recaptcha_challenge_field" rows="3" cols="40">
   </textarea>
   <input type="hidden" name="recaptcha_response_field"
        value="manual_challenge">
 </noscript>

           
          
            </fieldset>-->
			<br class="clear "/>
			
			<button type="submit" name="button">Check</button>
		</form>
		
	</div>
        <script>
  $(document).ready(function(){
    $("#myform").validate();
	$(":date").dateinput();
  });
  </script>
	
<?php

if(isset($_POST['button']))
{
	$ts1=strtotime($_POST['checkin']);
	$ts2=strtotime($_POST['checkout']);
	$seconds_diff = $ts2 - $ts1;
	$d=floor($seconds_diff/3600/24);
	
	$q=mysql_query("Select * from reservations Where resv_date between '".$_POST['checkin']."' and '".$_POST['checkout']."' and idclass='".$_POST['rooms']."'");
	$rc=mysql_num_rows($q);
	if($rc==0)
	{
	
		
		$_SESSION['interval']=$d;
		$_SESSION['tgl1']=$_POST['checkin'];
		$_SESSION['tgl2']=$_POST['checkout'];
		$_SESSION['rm']=$_POST['rooms'];
		$_SESSION['ada']="1";
		_direct("?y=".session_id()."&page="._encodeParam("reservasi"));
	}
}
?>