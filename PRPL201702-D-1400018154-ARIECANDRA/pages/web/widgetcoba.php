<!-- <script>
$(function() {
$("#datepicker").datepicker({        
		 dateFormat: "yyyy-mm-dd",
    });
});
 $(function() {
$("#datepicker2").datepicker({        
		 dateFormat: "yy-mm-dd",
    });
});

</script>
-->


<script type="text/javascript" src="js/tanggal.js"></script>
<link href="css/tanggal.css" type="text/css" rel="stylesheet">
<script type="text/javascript">
        	function checkform(){		
				if(document.getElementById('tgl_a').value>document.getElementById('tgl_b').value){
					<?php echo "tgl_a date is greater than the tgl_b date. Please Check it First."?>;
					document.getElementById('tgl_a').focus();
					return false;
				}
				
				if(document.getElementById('hiddendate').value>document.getElementById('tgl_a').value){
					alert("Your selected date is in the past. Please select a new date.");
					document.getElementById('tgl_a').focus();
					return false;
				}
				
				if(document.getElementById('xqtyeb').value>document.getElementById('xqty').value){
					alert("Check Your Extra Bed Quantity.  Maximum 1 Extra Bed per Room.");
					document.getElementById('xqtyeb').focus();
					return false;
				}
			}
 </script> 

 <script type="text/javascript">
				Date.prototype.ymd = function (divider) {
					function pad(n) {
						return (n < 10) ? '0' + n : n;
					}
					var divider = (divider == '-') ? divider : '/',
						year = this.getFullYear(),
						month = pad(this.getMonth() + 1),
						day = pad(this.getDate());
					return year + divider + month + divider + day;
				};
				function plusDate() {
					var input = document.getElementById('tgl_a');
					//input.value = new Date().ymd('-');
					var d = new Date(document.getElementById('tgl_a').value.replace(/-/g, '/'));
					d.setTime(d.getTime() + 86400000);
					document.getElementById('tgl_b').value = d.ymd('-');
				};
				function jhari(){
					var dd1=new Date(document.getElementById('tgl_a').value.replace(/-/g, '/'));
					var jd1=dd1.setTime(dd1.getTime());
					var dd2=new Date(document.getElementById('tgl_b').value.replace(/-/g, '/'));
					var jd2=dd2.setTime(dd2.getTime());
					var one_day=1000*60*60*24;
					var jdx=jd2+"-"+jd1;
					var jdx2=eval(jdx);
					var jdx3=jdx2+"/"+one_day;
					var jdx4=eval(jdx3).toFixed(0);
					document.getElementById('night').value=jdx4;
					//alert(jdx4);
				}
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
				<label>Check in</label>
                <!--<input name="tgl_a" type="date" id="datepicker" class="required calendar"> -->
                <a href="javascript:displayDatePicker('tgl_a','','ymd');">
        		<input name="tgl_a" type="text" class="txtx fieldresinline" id="tgl_a" style="text-align:center;" onFocus="plusDate();" 			onblur="jhari();" value="<?php echo date("Y-m-d"); ?> " size="12" readonly />
    			</a>
			</fieldset>
            
			<fieldset class="col_f_2">
				<label>Check out</label>
                <!--<input name="tgl_b" type="date" id="datepicker2" class="required calendar">-->
                <a href="javascript:displayDatePicker('tgl_b','','ymd');">
        		<input name="tgl_b" type="text" class="txtx fieldresinline" id="tgl_b" style="text-align:center;" onFocus="jhari();" onBlur="jhari();" value="<?php echo date("Y-m-d"); ?>" size="12" readonly/>
    			</a>
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
	$ts1=strtotime($_POST['tgl_a']);
	$ts2=strtotime($_POST['tgl_b']);
	$seconds_diff = $ts2 - $ts1;
	$d=floor($seconds_diff/3600/24);
	$c=$_POST['rooms'];
	$cl = mysql_query("select * from class where idclass='".$c."'");
	$idcl = mysql_fetch_array($cl);
	$class = $idcl['idclass'];
	$d1= strtotime(date("Y-m-d"));
	//if($d > 0 ) 
	if(($ts1 < $ts2) && ($d > 0) && ($class > 0) && ($ts1 >= $d1)){ 
	$q=mysql_query("Select * from reservations Where resv_date between '".$_POST['tgl_a']."' and '".$_POST['tgl_b']."' and idclass='".$_POST['rooms']."'"); 
		$rc=mysql_num_rows($q); 
		if($rc==0) { 
	
				$_SESSION['interval']=$d;
				$_SESSION['tgl1']=$_POST['tgl_a']; 
				$_SESSION['tgl2']=$_POST['tgl_b']; 
				$_SESSION['rm']=$_POST['rooms']; 
				$_SESSION['ada']="1"; 
				_direct("?y=".session_id()."&page="._encodeParam("reservasi"));
			} 
		}	else{ 
				unset($_SESSION['interval']); 
				unset($_SESSION['tgl1']); 
				unset($_SESSION['tgl2']); 
				unset($_SESSION['rm']); 
				unset($_SESSION['ada']); 
				_direct("?y=".session_id()."&page="._encodeParam("reservasi")); 
				echo "Tanggal yang anda inputkan tidak benar"; 
		}
		echo "Tanggal yang anda inputkan tidak benar"; 
	} 
	
    
/*	$q=mysql_query("Select * from reservations Where resv_date between '".$_POST['tgl_a']."' and '".$_POST['tgl_b']."' and idclass='".$_POST['rooms']."'");
	$rc=mysql_num_rows($q);
	if($rc==0)
	{
	
		
		$_SESSION['interval']=$d;
		$_SESSION['tgl1']=$_POST['tgl_a'];
		$_SESSION['tgl2']=$_POST['tgl_b'];
		$_SESSION['rm']=$_POST['rooms'];
		$_SESSION['ada']="1";
		_direct("?y=".session_id()."&page="._encodeParam("reservasi"));
	}
}*/
?>
