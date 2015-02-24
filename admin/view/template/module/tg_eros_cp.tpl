
<?php echo $header; ?>
<script type="text/javascript" src="view/javascript/jquery/colorpicker.js"></script>
<script type="text/javascript" src="view/javascript/jquery/admin.js"></script>
<link rel="stylesheet" type="text/css" href="view/stylesheet/admin.css" />
<link rel="stylesheet" type="text/css" href="view/stylesheet/colorpicker.css" />
<div id="content">
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
  <div class="heading">
    <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
  </div>
  <div class="content">
  
   <div id="tabs" class="htabs"><a href="#tab_general">General Options</a><a href="#tab_styling">Styling Options</a></div>
   

    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      

			<div id="tab_general">
				<table class="form">
					
					<tr>
						<td>Currency:</td>
						<td><input type="checkbox" value="1" name="tg_eros_cp_currency"<?php if($tg_eros_cp_currency == '1') echo ' checked="checked"';?> /> Show</td>
					</tr>
		
					<tr>
						<td>Language:</td>
						<td><input type="checkbox" value="1" name="tg_eros_cp_language"<?php if($tg_eros_cp_language == '1') echo ' checked="checked"';?> /> Show</td>
					</tr>
					
					<tr>
						<td><?php echo $entry_view; ?></td>
						<td><select name="tg_eros_cp_default_view">
						<?php if (isset($tg_eros_cp_default_view)) {
							$selected = "selected";
						?>
							<option value="grid" <?php if($tg_eros_cp_default_view=='grid'){echo $selected;} ?>>Grid</option>
							<option value="list" <?php if($tg_eros_cp_default_view=='list'){echo $selected;} ?>>List</option>
						<?php } else { ?>
							<option value="grid">Grid</option>
							<option value="list">List</option>
						<?php } ?>
						</select></td>
					</tr>
					
				</table>
			</div> <!-- tab_general (end) --> 
	   
	   
	   
			<div id="tab_styling">
				<div id="vtab-option" class="vtabs"><a href="#tab_background">Background Options:</a><a href="#tab_fontcolor">Font Color Options</a><a href="#tab_fontname">Font Name Options</a></div>  
					<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">
					
					<tr>
						<td>Disable / enable custom styling options? </td>
						<td><select name="styling_show">
						<?php if ($styling_show) { ?>
							<option value="1" selected="selected">Enable</option>
							<option value="0">Disable</option>
						<?php } else { ?>
							<option value="1">Enable</option>
							<option value="0" selected="selected">Disable</option>
						<?php } ?>
						</select>
						</td>
					</tr>
					</span>
					<br/>
					<br/>
					<div id="tab_background">
						<div class="slider wrap">
						<div class="rght">
							<table class="form-table cmsmasters-options">
								
								<tr valign="top">
									<th align="left"><span class="label">Background Color</span> <br/>
									<div class="dn" id="custom_background_color_light">Select your website background color from our colors gallery or choose your custom background color.</div></th>
								</tr>
								
								<tr>
									<td valign="top">
									<div class="colrs" id="custom_background_color_colrs">
									<a class="selected" href='2888BF' style='background-color:#2888BF;'>&nbsp;</a>
									<a class="selected" href='BF4C17' style='background-color:#BF4C17;'>&nbsp;</a>
									
									<a class="selected" href='2B2B2B' style='background-color:#2B2B2B;'>&nbsp;</a>
									<a class="selected" href='DB8F00' style='background-color:#DB8F00;'>&nbsp;</a>
									<a class="selected" href='C71400' style='background-color:#C71400;'>&nbsp;</a>
									<a class="selected" href='669100' style='background-color:#669100;'>&nbsp;</a>
									
									<a class="selected" href='433834' style='background-color:#433834;'>&nbsp;</a>
									<a href='483e37' style='background-color:#483e37;'>&nbsp;</a>
									<a href='403b38' style='background-color:#403b38;'>&nbsp;</a>
									<a href='444444' style='background-color:#444444;'>&nbsp;</a>
									<a href='7a6e61' style='background-color:#7a6e61;'>&nbsp;</a>
									<a href='606060' style='background-color:#606060;'>&nbsp;</a>
									<a href='640226' style='background-color:#640226;'>&nbsp;</a>
									<a href='830226' style='background-color:#830226;'>&nbsp;</a>
									<a href='8f1318' style='background-color:#8f1318;'>&nbsp;</a>
									<a href='992e20' style='background-color:#992e20;'>&nbsp;</a>
									<a href='8f3713' style='background-color:#8f3713;'>&nbsp;</a>
									<a href='994c26' style='background-color:#994c26;'>&nbsp;</a>
									<a href='2e2b4d' style='background-color:#2e2b4d;'>&nbsp;</a>
									<a href='003567' style='background-color:#003567;'>&nbsp;</a>
									<a href='063e8e' style='background-color:#063e8e;'>&nbsp;</a>
									<a href='004772' style='background-color:#004772;'>&nbsp;</a>
									<a href='32617f' style='background-color:#32617f;'>&nbsp;</a>
									<a href='006b8f' style='background-color:#006b8f;'>&nbsp;</a>
									<a href='004541' style='background-color:#004541;'>&nbsp;</a>
									<a href='006734' style='background-color:#006734;'>&nbsp;</a>
									<a href='007d2f' style='background-color:#007d2f;'>&nbsp;</a>
									<a href='177d00' style='background-color:#177d00;'>&nbsp;</a>
									<a href='406a12' style='background-color:#406a12;'>&nbsp;</a>
									<a href='567726' style='background-color:#567726;'>&nbsp;</a>
									<a href='503a65' style='background-color:#503a65;'>&nbsp;</a>
									<a href='811780' style='background-color:#811780;'>&nbsp;</a>
									<a href='904266' style='background-color:#904266;'>&nbsp;</a>
									<a href='985256' style='background-color:#985256;'>&nbsp;</a>
									<a href='91412f' style='background-color:#91412f;'>&nbsp;</a>
									<a href='987752' style='background-color:#987752;'>&nbsp;</a>
									</div> <!-- colrs (end) --> 

									<div class="customchar">#</div>
									<input size="10" name="custom_background_color" id="custom_background_color" type="text" value="<?php echo $custom_background_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="custom_background_color_mycolor"></div>
										<div id="custom_background_color_colorpicker" style="background-color:#<?php echo $custom_background_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#custom_background_color, #custom_background_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#custom_background_color').val(hex);
										jQuery('#custom_background_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#custom_background_color').val());
									}
									});
									});
									</script>
		
									</td>
								</tr>
								
								<tr valign="top">
									<th align="left"><span class="label">Top, bottom border color and next, previous button for carousel.</span> <br/>
									<div class="dn" id="custom_background_color_light">Choose your custom.</div></th>
								</tr>
								
								<tr>
								<td valign="top">
								<div class="customchar">#</div>
									<input size="10" name="custom_border_color" id="custom_border_color" type="text" value="<?php echo $custom_border_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="custom_border_color_mycolor"></div>
										<div id="custom_border_color_colorpicker" style="background-color:#<?php echo $custom_border_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#custom_border_color, #custom_border_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#custom_border_color').val(hex);
										jQuery('#custom_border_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#custom_border_color').val());
									}
									});
									});
									</script>
								</td>
								</tr>
								
								
							
								
								<tr>
								<td valign="top">
								<div class="customchar">#</div>
									<input size="10" name="custom_thumbs_color" id="custom_thumbs_color" type="text" value="<?php echo $custom_thumbs_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="custom_thumbs_color_mycolor"></div>
										<div id="custom_thumbs_color_colorpicker" style="background-color:#<?php echo $custom_thumbs_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#custom_thumbs_color, #custom_thumbs_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#custom_thumbs_color').val(hex);
										jQuery('#custom_thumbs_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#custom_thumbs_color').val());
									}
									});
									});
									</script>
								</td>
								</tr>
								
								<tr valign="top">
									<th align="left"><span class="label">Background Image:</span><br/><div class="dn" id="custom_background_img_light">Select you website background image from our backgrounds gallery.</div></th>
								</tr>

								<tr>
								<td valign="top" style="padding-bottom:0;">	
								<div class="select_bgs" id="custom_background_img_patterns_bgs">
									<span class="fl" style="display:block; width:140px; padding:1px 0 0;">Patterns</span>
									<a href='14' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/14.jpg);'>&nbsp;</a>
									<a href='13' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/13.jpg);'>&nbsp;</a>
									<a href='15' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/15.jpg);'>&nbsp;</a>
									<a href='16' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/16.jpg);'>&nbsp;</a>
									<a href='17' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/17.jpg);'>&nbsp;</a>
									<a href='18' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/18.jpg);'>&nbsp;</a>
									<a href='19' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/19.jpg);'>&nbsp;</a>
									<a href='20' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/20.jpg);'>&nbsp;</a>
									<a href='21' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/21.jpg);'>&nbsp;</a>
									<a href='22' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/22.jpg);'>&nbsp;</a>
									<a href='23' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/23.jpg);'>&nbsp;</a>
									<a href='24' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/24.jpg);'>&nbsp;</a>
									<a href='25' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/25.jpg);'>&nbsp;</a>
									<a href='26' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/26.jpg);'>&nbsp;</a>
									<a href='27' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/27.jpg);'>&nbsp;</a>
									<a href='28' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/28.jpg);'>&nbsp;</a>
									<a href='29' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/29.jpg);'>&nbsp;</a>
									<a href='30' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/30.jpg);'>&nbsp;</a>
									<a href='31' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/31.jpg);'>&nbsp;</a>
									</div> <!-- select_bgs (end) -->
									<span class="fl" style="display:block; width:140px; padding:1px 0 0;">Patterns</span>
									<div class="select_bgs" id="custom_background_img_patterns_bgs">
									<a href='32' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/32.jpg);'>&nbsp;</a>
									<a href='33' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/33.jpg);'>&nbsp;</a>
									<a href='34' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/34.jpg);'>&nbsp;</a>
									
									<a href='1' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_1_thumb.jpg);'>&nbsp;</a>
									<a href='2' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_2_thumb.jpg);'>&nbsp;</a>
									<a href='3' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_3_thumb.jpg);'>&nbsp;</a>
									<a href='4' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_4_thumb.jpg);'>&nbsp;</a>
									<a href='5' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_5_thumb.jpg);'>&nbsp;</a>
									<a href='6' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_6_thumb.jpg);'>&nbsp;</a>
									<a href='7' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_7_thumb.jpg);'>&nbsp;</a>
									<a href='8' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_8_thumb.jpg);'>&nbsp;</a>
									<a href='9' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_9_thumb.jpg);'>&nbsp;</a>
									<a href='10' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_10_thumb.jpg);'>&nbsp;</a>
									<a href='11' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_11_thumb.jpg);'>&nbsp;</a>
									<a href='12' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_12_thumb.jpg);'>&nbsp;</a>
									
								</div> <!-- select_bgs (end) -->
								
								<div class="select_bgs" id="custom_background_img_transparents_bgs">
									<span class="fl" style="display:block; width:140px; padding:1px 0 0;">Transparent Images</span>
									<a href='80' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_i_1_thumb.jpg);'>&nbsp;</a>
									<a href='81' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_i_2_thumb.jpg);'>&nbsp;</a>
									<a href='82' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_i_3_thumb.jpg);'>&nbsp;</a>
									<a href='83' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_i_4_thumb.jpg);'>&nbsp;</a>
									<a href='84' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_i_5_thumb.jpg);'>&nbsp;</a>
									<a href='85' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_t_i_6_thumb.jpg);'>&nbsp;</a>
								</div> <!-- select_bgs (end) -->


								<div class="select_bgs" id="custom_background_img_images_bgs">
									<span class="fl" style="display:block; width:140px; padding:1px 0 0;">Background Images</span>
									<a href='72' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/72.jpg);'>&nbsp;</a>
									<a href='35' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/35.jpg);'>&nbsp;</a>
									<a href='36' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/36.jpg);'>&nbsp;</a>
									<a href='37' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/37.jpg);'>&nbsp;</a>
									<a href='38' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/38.jpg);'>&nbsp;</a>
									<a href='39' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/39.jpg);'>&nbsp;</a>
									<a href='40' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/40.jpg);'>&nbsp;</a>
									<a href='60' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_i_1_thumb.jpg);'>&nbsp;</a>
									<a href='61' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_i_2_thumb.jpg);'>&nbsp;</a>
									<a href='62' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_i_3_thumb.jpg);'>&nbsp;</a>
									<a href='63' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_i_4_thumb.jpg);'>&nbsp;</a>
									<a href='64' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_i_5_thumb.jpg);'>&nbsp;</a>
									<a href='65' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_i_6_thumb.jpg);'>&nbsp;</a>
									<a href='71' style='background-image:url(<?php echo HTTPS_SERVER; ?>/view/image/bgs/bg_i_12_thumb.jpg);'>&nbsp;</a></div>
									<input type="hidden" name="custom_background_img" id="custom_background_img" value="<?php echo $custom_background_img; ?>" />
								</td>
								</tr>
								</div> <!-- select_bgs (end) -->
							</table>	

						</div>
					</div>
				</div>
			

			
				
			
				
				<div id="tab_fontcolor">
						<h2> Header, Menu, Breadcrumb </h2>
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Text Color: </span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="text_color" id="text_color" type="text" value="<?php echo $text_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="text_color_mycolor"></div>
										<div id="text_color_colorpicker" style="background-color:#<?php echo $text_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#text_color, #text_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#text_color').val(hex);
										jQuery('#text_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#text_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Link Color: </span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="link_color" id="link_color" type="text" value="<?php echo $link_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="link_color_mycolor"></div>
										<div id="link_color_colorpicker" style="background-color:#<?php echo $link_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#link_color, #link_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#link_color').val(hex);
										jQuery('#link_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#link_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Link Hover Color: </span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="link_hover_color" id="link_hover_color" type="text" value="<?php echo $link_hover_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="link_hover_color_mycolor"></div>
										<div id="link_hover_color_colorpicker" style="background-color:#<?php echo $link_hover_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#link_hover_color, #link_hover_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#link_hover_color').val(hex);
										jQuery('#link_hover_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#link_hover_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Menu Color: </span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="menu_color" id="menu_color" type="text" value="<?php echo $menu_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="menu_color_mycolor"></div>
										<div id="menu_color_colorpicker" style="background-color:#<?php echo $menu_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#menu_color, #menu_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#menu_color').val(hex);
										jQuery('#menu_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#menu_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Menu Hover Color: </span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="menu_hover_color" id="menu_hover_color" type="text" value="<?php echo $menu_hover_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="menu_hover_color_mycolor"></div>
										<div id="menu_hover_color_colorpicker" style="background-color:#<?php echo $menu_hover_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#menu_hover_color, #menu_hover_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#menu_hover_color').val(hex);
										jQuery('#menu_hover_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#menu_hover_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Menu Subcategory Color: </span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="menu_subcategory_color" id="menu_subcategory_color" type="text" value="<?php echo $menu_subcategory_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="menu_subcategory_color_mycolor"></div>
										<div id="menu_subcategory_color_colorpicker" style="background-color:#<?php echo $menu_subcategory_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#menu_subcategory_color, #menu_subcategory_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#menu_subcategory_color').val(hex);
										jQuery('#menu_subcategory_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#menu_subcategory_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Menu Subcategory Hover Color: </span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="menu_subcategory_hover_color" id="menu_subcategory_hover_color" type="text" value="<?php echo $menu_subcategory_hover_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="menu_subcategory_hover_color_mycolor"></div>
										<div id="menu_subcategory_hover_color_colorpicker" style="background-color:#<?php echo $menu_subcategory_hover_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#menu_subcategory_hover_color, #menu_subcategory_hover_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#menu_subcategory_hover_color').val(hex);
										jQuery('#menu_subcategory_hover_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#menu_subcategory_hover_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Menu Subcategory Background Color: </span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="menu_subcategory_bg_color" id="menu_subcategory_bg_color" type="text" value="<?php echo $menu_subcategory_bg_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="menu_subcategory_bg_color_mycolor"></div>
										<div id="menu_subcategory_bg_color_colorpicker" style="background-color:#<?php echo $menu_subcategory_bg_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#menu_subcategory_bg_color, #menu_subcategory_bg_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#menu_subcategory_bg_color').val(hex);
										jQuery('#menu_subcategory_bg_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#menu_subcategory_bg_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						<h2> Content Block </h2>
						
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Header Text Color</span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="content_header_color" id="content_header_color" type="text" value="<?php echo $content_header_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="content_header_color_mycolor"></div>
										<div id="content_header_color_colorpicker" style="background-color:#<?php echo $content_header_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#content_header_color, #content_header_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#content_header_color').val(hex);
										jQuery('#content_header_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#content_header_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						<h2> Price Color  </h2>
						
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Price Color</span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="price_color" id="price_color" type="text" value="<?php echo $price_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="price_color_mycolor"></div>
										<div id="price_color_colorpicker" style="background-color:#<?php echo $price_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#price_color, #price_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#price_color').val(hex);
										jQuery('#price_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#price_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Price Old Color</span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="price_old_color" id="price_old_color" type="text" value="<?php echo $price_old_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="price_old_color_mycolor"></div>
										<div id="price_old_color_colorpicker" style="background-color:#<?php echo $price_old_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#price_old_color, #price_old_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#price_old_color').val(hex);
										jQuery('#price_old_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#price_old_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						<h2> Footer Color  </h2>
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Footer Header Color</span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="footer_header_color" id="footer_header_color" type="text" value="<?php echo $footer_header_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="footer_header_color_mycolor"></div>
										<div id="footer_header_color_colorpicker" style="background-color:#<?php echo $footer_header_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#footer_header_color, #footer_header_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#footer_header_color').val(hex);
										jQuery('#footer_header_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#footer_header_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Footer Text Color</span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="footer_text_color" id="footer_text_color" type="text" value="<?php echo $footer_text_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="footer_text_color_mycolor"></div>
										<div id="footer_text_color_colorpicker" style="background-color:#<?php echo $footer_text_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#footer_text_color, #footer_text_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#footer_text_color').val(hex);
										jQuery('#footer_text_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#footer_text_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Default OpenCart Footer Text Color</span>
						<div class="slider wrap">
							
							<div class="rght">

									<div class="customchar">#</div>
									<input size="10" name="footer_default_text_color" id="footer_default_text_color" type="text" value="<?php echo $footer_default_text_color; ?>" class="fl" />
					
									<div class="mycolorpicker_parent">
										<div class="mycolorpicker" id="footer_default_text_color_mycolor"></div>
										<div id="footer_default_text_color_colorpicker" style="background-color:#<?php echo $footer_default_text_color; ?>;"></div>
									</div> <!-- mycolorpicker_parent (end) --> 

									<script type="text/javascript">
										jQuery(document).ready(function(){
										jQuery('#footer_default_text_color, #footer_default_text_color_mycolor').ColorPicker({
										onSubmit: function(hsb, hex, rgb, el) {
										jQuery('#footer_default_text_color').val(hex);
										jQuery('#footer_default_text_color_colorpicker').css('backgroundColor', '#' + hex)
										jQuery(el).ColorPickerHide();
									},
										onBeforeShow: function () {
										jQuery(this).ColorPickerSetColor(jQuery('#footer_default_text_color').val());
									}
									});
									});
									</script>
							</div> <!-- rght (end) -->
						</div> <!-- slider wrap (end) -->
						
						
				</div> <!-- #tab_fontcolor (end) -->
				
				
				<div id="tab_fontname">
						<table class="tab_fontname">
						
							<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Content Font: </span>
						
							<span style = "padding: 15px 15px 15px 20px;font-weight: bold;"> <select name="content_font_name">
								<?php if (isset($content_font_name)) {
								$selected = "selected";
								?>
								<optgroup label="Content Fonts">
								<option value="Arial" <?php if($content_font_name=='Arial'){echo $selected;} ?>>Arial</option>
								<option value="Verdana" <?php if($content_font_name=='Verdana'){echo $selected;} ?>>Verdana</option>
								<option value="Helvetica" <?php if($content_font_name=='Helvetica'){echo $selected;} ?>>Helvetica</option>
								<option value="Lucida Grande" <?php if($content_font_name=='Lucida Grande'){echo $selected;} ?>>Lucida Grande</option>
								<option value="Trebuchet MS" <?php if($content_font_name=='Trebuchet MS'){echo $selected;} ?>>Trebuchet MS</option>
								<option value="Times New Roman" <?php if($content_font_name=='Times New Roman'){echo $selected;} ?>>Times New Roman</option>
								<option value="Tahoma" <?php if($content_font_name=='Tahoma'){echo $selected;} ?>>Tahoma</option>
								<option value="Georgia" <?php if($content_font_name=='Georgia'){echo $selected;} ?>>Georgia</option>
								</optgroup>
								
								<optgroup label="Google Fonts">
								<option value="Arial" <?php if($content_font_name=='Arial'){echo $selected;} ?>>Arial</option>
								<option value="Aclonica" <?php if($content_font_name=='Aclonica'){echo $selected;} ?>>Verdana</option>
								<option value="Allan" <?php if($content_font_name=='Allan'){echo $selected;} ?>>Allan</option>
								<option value="Annie+Use+Your+Telescope" <?php if($content_font_name=='Annie+Use+Your+Telescope'){echo $selected;} ?>>Annie Use Your Telescope</option>
								<option value="Anonymous+Pro" <?php if($content_font_name=='Anonymous+Pro'){echo $selected;} ?>>Anonymous Pro</option>
								<option value="Allerta+Stencil" <?php if($content_font_name=='Allerta+Stencil'){echo $selected;} ?>>Allerta Stencil</option>
								<option value="Allerta" <?php if($content_font_name=='Allerta'){echo $selected;} ?>>Allerta</option>
								<option value="Amaranth" <?php if($content_font_name=='Amaranth'){echo $selected;} ?>>Amaranth</option>
								<option value="Anton" <?php if($content_font_name=='Anton'){echo $selected;} ?>>Anton</option>
								<option value="Architects+Daughte" <?php if($content_font_name=='Architects+Daughte'){echo $selected;} ?>>Architects Daughter</option>
								<option value="Arimo" <?php if($content_font_name=='Arimo'){echo $selected;} ?>>Arimo</option>
								<option value="Artifika" <?php if($content_font_name=='Artifika'){echo $selected;} ?>>Artifika</option>
								<option value="Arvo" <?php if($content_font_name=='Arvo'){echo $selected;} ?>>Arvo</option>
								<option value="Asset" <?php if($content_font_name=='Asset'){echo $selected;} ?>>Asset</option>
								<option value="Astloch" <?php if($content_font_name=='Astloch'){echo $selected;} ?>>Astloch</option>
								<option value="Bangers" <?php if($content_font_name=='Bangers'){echo $selected;} ?>>Bangers</option>
								<option value="Bentham" <?php if($content_font_name=='Bentham'){echo $selected;} ?>>Bentham</option>
								<option value="Bevan" <?php if($content_font_name=='Bevan'){echo $selected;} ?>>Bevan</option>
								<option value="Bigshot+One" <?php if($content_font_name=='Bigshot+One'){echo $selected;} ?>>Bigshot One</option>
								<option value="Bowlby+One" <?php if($content_font_name=='Bowlby+One'){echo $selected;} ?>>Bowlby One</option>
								<option value="Bowlby+One+SC" <?php if($content_font_name=='Bowlby+One+SC'){echo $selected;} ?>>Bowlby One SC</option>
								<option value="Brawler" <?php if($content_font_name=='Brawler'){echo $selected;} ?>>Brawler</option>
								<option value="Buda:300" <?php if($content_font_name=='Buda:300'){echo $selected;} ?>>Buda</option>
								<option value="Cabin" <?php if($content_font_name=='Cabin'){echo $selected;} ?>>Cabin</option>
								<option value="Calligraffitti" <?php if($content_font_name=='Calligraffitti'){echo $selected;} ?>>Calligraffitti</option>
								<option value="Candal" <?php if($content_font_name=='Candal'){echo $selected;} ?>>Candal</option>
								<option value="Cantarell" <?php if($content_font_name=='Cantarell'){echo $selected;} ?>>Cantarell</option>
								<option value="Cardo" <?php if($content_font_name=='Cardo'){echo $selected;} ?>>Cardo</option>
								<option value="Carter One" <?php if($content_font_name=='Carter One'){echo $selected;} ?>>Carter One</option>
								<option value="Caudex" <?php if($content_font_name=='Caudex'){echo $selected;} ?>>Caudex</option>
								<option value="Cedarville+Cursive" <?php if($content_font_name=='Cedarville+Cursive'){echo $selected;} ?>>Cedarville Cursive</option>
								<option value="Cherry+Cream+Soda" <?php if($content_font_name=='Cherry+Cream+Soda'){echo $selected;} ?>>Cedarville Cursive</option>
								<option value="Chewy" <?php if($content_font_name=='Chewy'){echo $selected;} ?>>Chewy</option>
								<option value="Coda" <?php if($content_font_name=='Coda'){echo $selected;} ?>>Coda</option>
								<option value="Coming+Soon" <?php if($content_font_name=='Coming+Soon'){echo $selected;} ?>>Coming Soon</option>
								<option value="Copse" <?php if($content_font_name=='Copse'){echo $selected;} ?>>Copse</option>
								<option value="Corben:700" <?php if($content_font_name=='Corben:700'){echo $selected;} ?>>Corben</option>
								<option value="Cousine" <?php if($content_font_name=='Cousine'){echo $selected;} ?>>Cousine</option>
								<option value="Covered+By+Your+Grace" <?php if($content_font_name=='Covered+By+Your+Grace'){echo $selected;} ?>>Covered By Your Grace</option>
								<option value="Crafty+Girls" <?php if($content_font_name=='Crafty+Girls'){echo $selected;} ?>>Crafty Girls</option>
								<option value="Crimson+Text" <?php if($content_font_name=='Crimson+Text'){echo $selected;} ?>>Crimson Text</option>
								<option value="Crushed" <?php if($content_font_name=='Crushed'){echo $selected;} ?>>Crushed</option>
								<option value="Cuprum" <?php if($content_font_name=='Cuprum'){echo $selected;} ?>>Cuprum</option>
								<option value="Damion" <?php if($content_font_name=='Damion'){echo $selected;} ?>>Damion</option>
								<option value="Dancing+Script" <?php if($content_font_name=='Dancing+Script'){echo $selected;} ?>>Dancing Script</option>
								<option value="Dawning+of+a+New+Day" <?php if($content_font_name=='Dawning+of+a+New+Day'){echo $selected;} ?>>Didact Gothic</option>
								<option value="Didact+Gothic" <?php if($content_font_name=='Didact+Gothic'){echo $selected;} ?>>Arial</option>
								<option value="Droid+Sans" <?php if($content_font_name=='Droid+Sans'){echo $selected;} ?>>Droid Sans</option>
								<option value="Droid+Sans+Mono" <?php if($content_font_name=='Droid+Sans+Mono'){echo $selected;} ?>>Droid Sans Mono</option>
								<option value="Droid+Serif" <?php if($content_font_name=='Droid+Serif'){echo $selected;} ?>>Droid Serif</option>
								<option value="EB+Garamond" <?php if($content_font_name=='EB+Garamond'){echo $selected;} ?>>EB Garamond</option>
								<option value="Expletus+Sans" <?php if($content_font_name=='Expletus+Sans'){echo $selected;} ?>>Expletus Sans</option>
								<option value="Fontdiner+Swanky" <?php if($content_font_name=='Fontdiner+Swanky'){echo $selected;} ?>>Fontdiner Swanky</option>
								<option value="Forum" <?php if($content_font_name=='Forum'){echo $selected;} ?>>Forum</option>
								<option value="Francois+One" <?php if($content_font_name=='Francois+One'){echo $selected;} ?>>Francois One</option>
								<option value="Geo" <?php if($content_font_name=='Geo'){echo $selected;} ?>>Geo</option>
								<option value="Give+You+Glory" <?php if($content_font_name=='Give+You+Glory'){echo $selected;} ?>>Give You Glory</option>
								<option value="Goblin+One" <?php if($content_font_name=='Goblin+One'){echo $selected;} ?>>Goblin One</option>
								<option value="Goudy+Bookletter+1911" <?php if($content_font_name=='Goudy+Bookletter+1911'){echo $selected;} ?>>Goudy Bookletter 1911</option>
								<option value="Gravitas+One" <?php if($content_font_name=='Gravitas+One'){echo $selected;} ?>>Gravitas One</option>
								<option value="Gruppo" <?php if($content_font_name=='Gruppo'){echo $selected;} ?>>Gruppo</option>
								<option value="Hammersmith+One" <?php if($content_font_name=='ammersmith+One'){echo $selected;} ?>>Hammersmith One</option>
								<option value="Holtwood+One+SC" <?php if($content_font_name=='Holtwood+One+SC'){echo $selected;} ?>>Holtwood One SC</option>
								<option value="Homemade+Apple" <?php if($content_font_name=='Homemade+Apple'){echo $selected;} ?>>Homemade Apple</option>
								<option value="Inconsolata" <?php if($content_font_name=='Inconsolata'){echo $selected;} ?>>Inconsolata</option>
								<option value="Indie+Flower" <?php if($content_font_name=='Indie+Flower'){echo $selected;} ?>>Indie Flower</option>
								<option value="IM+Fell+DW+Pica" <?php if($content_font_name=='IM+Fell+DW+Pica'){echo $selected;} ?>>IM Fell DW Pica</option>
								<option value="IM+Fell+DW+Pica+SC" <?php if($content_font_name=='IM+Fell+DW+Pica+SC'){echo $selected;} ?>>IM Fell DW Pica SC</option>
								<option value="IM+Fell+Double+Pica" <?php if($content_font_name=='IM+Fell+Double+Pica'){echo $selected;} ?>>IM Fell Double Pica</option>
								<option value="IM+Fell+Double+Pica+SC" <?php if($content_font_name=='IM+Fell+Double+Pica+SC'){echo $selected;} ?>>IM Fell Double Pica SC</option>
								<option value="IM+Fell+English" <?php if($content_font_name=='IM+Fell+English'){echo $selected;} ?>>IM Fell English</option>
								<option value="IM+Fell+English+SC" <?php if($content_font_name=='IM+Fell+English+SC'){echo $selected;} ?>>IM Fell English SC</option>
								<option value="IM+Fell+French+Canon" <?php if($content_font_name=='IM+Fell+French+Canon'){echo $selected;} ?>>IM Fell French Canon</option>
								<option value="IM+Fell+French+Canon+SC" <?php if($content_font_name=='IM+Fell+French+Canon+SC'){echo $selected;} ?>>IM Fell French Canon SC</option>
								<option value="IM+Fell+Great+Primer" <?php if($content_font_name=='IM+Fell+Great+Primer'){echo $selected;} ?>>IM Fell Great Primer</option>
								<option value="IM+Fell+Great+Primer+SC" <?php if($content_font_name=='IM+Fell+Great+Primer+SC'){echo $selected;} ?>>IM Fell Great Primer SC</option>
								<option value="Irish+Grover" <?php if($content_font_name=='Irish+Grover'){echo $selected;} ?>>Irish Grover</option>
								<option value="Irish+Growler" <?php if($content_font_name=='Irish+Growler'){echo $selected;} ?>>Irish Growler</option>
								<option value="Istok+Web" <?php if($content_font_name=='Istok+Web'){echo $selected;} ?>>Istok Web</option>
								<option value="Josefin+Sans" <?php if($content_font_name=='Josefin+Sans'){echo $selected;} ?>>Josefin Sans Regular 400</option>
								<option value="Josefin+Slab" <?php if($content_font_name=='Josefin+Slab'){echo $selected;} ?>>Josefin Slab Regular 400</option>
								<option value="Judson" <?php if($content_font_name=='Judson'){echo $selected;} ?>>Judson</option>
								<option value="Jura" <?php if($content_font_name=='Jura'){echo $selected;} ?>>Jura Regular</option>
								<option value="Jura:500" <?php if($content_font_name=='Jura:500'){echo $selected;} ?>>Jura 500</option>
								<option value="Jura:600" <?php if($content_font_name=='Jura:600'){echo $selected;} ?>>Jura 600</option>
								<option value="Just+Another+Hand" <?php if($content_font_name=='Just+Another+Hand'){echo $selected;} ?>>Just Another Hand</option>
								<option value="Just+Me+Again+Down+Here" <?php if($content_font_name=='Just+Me+Again+Down+Here'){echo $selected;} ?>>Just Me Again Down Here</option>
								<option value="Kameron" <?php if($content_font_name=='Kameron'){echo $selected;} ?>>Kameron</option>
								<option value="Kenia" <?php if($content_font_name=='Kenia'){echo $selected;} ?>>Kenia</option>
								<option value="Kranky" <?php if($content_font_name=='Kranky'){echo $selected;} ?>>Kranky</option>
								<option value="Kreon" <?php if($content_font_name=='Kreon'){echo $selected;} ?>>Kreon</option>
								<option value="Kristi" <?php if($content_font_name=='Kristi'){echo $selected;} ?>>Kristi</option>
								<option value="La+Belle+Aurore" <?php if($content_font_name=='La+Belle+Aurore'){echo $selected;} ?>>La Belle Aurore</option>
								<option value="Lato:100" <?php if($content_font_name=='Lato:100'){echo $selected;} ?>>Lato 100</option>
								<option value="Lato:100italic" <?php if($content_font_name=='Lato:100italic'){echo $selected;} ?>>Lato 100 (plus italic)</option>
								<option value="Lato:300" <?php if($content_font_name=='Lato:300'){echo $selected;} ?>>Lato Light 300</option>
								<option value="Lato" <?php if($content_font_name=='Lato'){echo $selected;} ?>>Lato</option>
								<option value="Lato:bold" <?php if($content_font_name=='Lato:bold'){echo $selected;} ?>>Lato Bold 700</option>
								<option value="Lato:900" <?php if($content_font_name=='Lato:900'){echo $selected;} ?>>Lato 900</option>
								<option value="League+Script" <?php if($content_font_name=='League+Script'){echo $selected;} ?>>League Script</option>
								<option value="Lekton" <?php if($content_font_name=='Lekton'){echo $selected;} ?>>Lekton</option>
								<option value="Limelight" <?php if($content_font_name=='Limelight'){echo $selected;} ?>>Limelight</option>
								<option value="Lobster" <?php if($content_font_name=='Lobster'){echo $selected;} ?>>Lobster</option>
								<option value="Lobster Two" <?php if($content_font_name=='Lobster Two'){echo $selected;} ?>>Lobster Two</option>
								<option value="Lora" <?php if($content_font_name=='Lora'){echo $selected;} ?>>Lora</option>
								<option value="Love+Ya+Like+A+Sister" <?php if($content_font_name=='Love+Ya+Like+A+Sister'){echo $selected;} ?>>Love Ya Like A Sister</option>
								<option value="Loved+by+the+King" <?php if($content_font_name=='Loved+by+the+King'){echo $selected;} ?>>Loved by the King</option>
								<option value="Luckiest+Guy" <?php if($content_font_name=='Luckiest+Guy'){echo $selected;} ?>>Luckiest Guy</option>
								<option value="Maiden+Orange" <?php if($content_font_name=='Maiden+Orange'){echo $selected;} ?>>Maiden Orange</option>
								<option value="Mako" <?php if($content_font_name=='Mako'){echo $selected;} ?>>Mako</option>
								<option value="Maven+Pro" <?php if($content_font_name=='Maven+Pro'){echo $selected;} ?>>Maven Pro</option>
								<option value="Maven+Pro:500" <?php if($content_font_name=='Maven+Pro:500'){echo $selected;} ?>>Maven Pro 500</option>
								<option value="Maven+Pro:700" <?php if($content_font_name=='Maven+Pro:700'){echo $selected;} ?>>Maven Pro 700</option>
								<option value="Maven+Pro:900" <?php if($content_font_name=='Maven+Pro:900'){echo $selected;} ?>>Maven Pro 900</option>
								<option value="Meddon" <?php if($content_font_name=='Meddon'){echo $selected;} ?>>Meddon</option>
								<option value="MedievalSharp" <?php if($content_font_name=='MedievalSharp'){echo $selected;} ?>>MedievalSharp</option>
								<option value="Megrim" <?php if($content_font_name=='Megrim'){echo $selected;} ?>>Megrim</option>
								<option value="Merriweather" <?php if($content_font_name=='Merriweather'){echo $selected;} ?>>Merriweather</option>
								<option value="Metrophobic" <?php if($content_font_name=='Metrophobic'){echo $selected;} ?>>Metrophobic</option>
								<option value="Michroma" <?php if($content_font_name=='Michroma'){echo $selected;} ?>>Michroma</option>
								<option value="Miltonian Tattoo" <?php if($content_font_name=='Miltonian Tattoo'){echo $selected;} ?>>Miltonian Tattoo</option>
								<option value="Miltonian" <?php if($content_font_name=='Miltonian'){echo $selected;} ?>>Miltonian</option>
								<option value="Modern Antiqua" <?php if($content_font_name=='Modern Antiqua'){echo $selected;} ?>>Modern Antiqua</option>
								<option value="Monofett" <?php if($content_font_name=='Monofett'){echo $selected;} ?>>Monofett</option>
								<option value="Molengo" <?php if($content_font_name=='Molengo'){echo $selected;} ?>>Molengo</option>
								<option value="Mountains of Christmas" <?php if($content_font_name=='Mountains of Christmas'){echo $selected;} ?>>Mountains of Christmas</option>
								<option value="Muli:300" <?php if($content_font_name=='Muli:300'){echo $selected;} ?>>Muli Light</option>
								<option value="Muli" <?php if($content_font_name=='Muli'){echo $selected;} ?>>Muli Regular</option>
								<option value="Neucha" <?php if($content_font_name=='Neucha'){echo $selected;} ?>>Neucha</option>
								<option value="Neuton" <?php if($content_font_name=='Neuton'){echo $selected;} ?>>Neuton</option>
								<option value="News+Cycle" <?php if($content_font_name=='News+Cycle'){echo $selected;} ?>>News+Cycle</option>
								<option value="Nixie+One" <?php if($content_font_name=='Nixie+One'){echo $selected;} ?>>Nixie One</option>
								<option value="Nobile" <?php if($content_font_name=='Nobile'){echo $selected;} ?>>Nobile</option>
								<option value="Nova+Cut" <?php if($content_font_name=='Nova+Cut'){echo $selected;} ?>>Nova+Cut</option>
								<option value="Nova+Flat" <?php if($content_font_name=='Nova+Flat'){echo $selected;} ?>>Nova+Flat</option>
								<option value="Nova+Mono" <?php if($content_font_name=='Nova+Mono'){echo $selected;} ?>>Nova+Mono</option>
								<option value="Nova Oval" <?php if($content_font_name=='Nova Oval'){echo $selected;} ?>>Nova Oval</option>
								<option value="Nova+Round" <?php if($content_font_name=='Nova+Round'){echo $selected;} ?>>Nova Round</option>
								<option value="Nova+Script" <?php if($content_font_name=='Nova+Script'){echo $selected;} ?>>Nova Script</option>
								<option value="Nova+Slim" <?php if($content_font_name=='Nova+Slim'){echo $selected;} ?>>Nova Slim</option>
								<option value="Nova+Square" <?php if($content_font_name=='Nova+Square'){echo $selected;} ?>>Nova Square</option>
								<option value="Nunito:light" <?php if($content_font_name=='Nunito:light'){echo $selected;} ?>>Nunito Light</option>
								<option value="Nunito" <?php if($content_font_name=='Nunito'){echo $selected;} ?>>Nunito</option>
								<option value="OFL+Sorts+Mill+Goudy+TT" <?php if($content_font_name=='OFL+Sorts+Mill+Goudy+TT'){echo $selected;} ?>>OFL Sorts Mill Goudy TT</option>
								<option value="Old+Standard+TT" <?php if($content_font_name=='Old+Standard+TT'){echo $selected;} ?>>Old Standard TT</option>
								<option value="Open+Sans:300" <?php if($content_font_name=='Open+Sans:300'){echo $selected;} ?>>Open Sans light</option>
								<option value="Open+Sans" <?php if($content_font_name=='Open+Sans'){echo $selected;} ?>>Open Sans regular</option>
								<option value="Open+Sans:600" <?php if($content_font_name=='Open+Sans:600'){echo $selected;} ?>>Open Sans 600</option>
								<option value="Open+Sans:800" <?php if($content_font_name=='Open+Sans:800'){echo $selected;} ?>>Open Sans bold</option>
								<option value="Open+Sans+Condensed:300" <?php if($content_font_name=='Open+Sans+Condensed:300'){echo $selected;} ?>>Open Sans Condensed</option>
								<option value="Orbitron" <?php if($content_font_name=='Orbitron'){echo $selected;} ?>>Orbitron Regular (400)</option>
								<option value="Orbitron:500" <?php if($content_font_name=='Orbitron:500'){echo $selected;} ?>>Orbitron 500</option>
								<option value="Orbitron:700" <?php if($content_font_name=='Orbitron:700'){echo $selected;} ?>>Orbitron Regular (700)</option>
								<option value="Orbitron:900" <?php if($content_font_name=='Orbitron:900'){echo $selected;} ?>>Orbitron 900</option>
								<option value="Oswald" <?php if($content_font_name=='Oswald'){echo $selected;} ?>>Oswald</option>
								<option value="Over+the+Rainbow" <?php if($content_font_name=='Over+the+Rainbow'){echo $selected;} ?>>Over the Rainbow</option>
								<option value="Reenie+Beanie" <?php if($content_font_name=='Reenie+Beanie'){echo $selected;} ?>>Reenie Beanie</option>
								<option value="Pacifico" <?php if($content_font_name=='Pacifico'){echo $selected;} ?>>Pacifico</option>
								<option value="Patrick+Hand" <?php if($content_font_name=='Patrick+Hand'){echo $selected;} ?>>Patrick Hand</option>
								<option value="Paytone+One" <?php if($content_font_name=='Paytone+One'){echo $selected;} ?>>Paytone One</option>
								<option value="Permanent+Marker" <?php if($content_font_name=='Permanent+Marker'){echo $selected;} ?>>Permanent Marker</option>
								<option value="Philosopher" <?php if($content_font_name=='Philosopher'){echo $selected;} ?>>Philosopher</option>
								<option value="Play" <?php if($content_font_name=='Play'){echo $selected;} ?>>Play</option>
								<option value="Playfair+Display" <?php if($content_font_name=='Playfair+Display'){echo $selected;} ?>>Playfair Display</option>
								<option value="Podkova" <?php if($content_font_name=='Podkova'){echo $selected;} ?>>Podkova</option>
								<option value="PT+Sans" <?php if($content_font_name=='PT+Sans'){echo $selected;} ?>>PT Sans</option>
								<option value="PT+Sans+Narrow" <?php if($content_font_name=='PT+Sans+Narrow'){echo $selected;} ?>>PT Sans Narrow</option>
								<option value="PT+Sans+Narrow:regular,bold" <?php if($content_font_name=='PT+Sans+Narrow:regular,bold'){echo $selected;} ?>>PT Sans Narrow (plus bold)</option>
								<option value="PT+Serif" <?php if($content_font_name=='PT+Serif'){echo $selected;} ?>>PT Serif</option>
								<option value="PT+Serif Caption" <?php if($content_font_name=='PT+Serif Caption'){echo $selected;} ?>>PT Serif Caption</option>
								<option value="Puritan" <?php if($content_font_name=='Puritan'){echo $selected;} ?>>Puritan</option>
								<option value="Quattrocento" <?php if($content_font_name=='Quattrocento'){echo $selected;} ?>>Quattrocento</option>
								<option value="Quattrocento+Sans" <?php if($content_font_name=='Quattrocento+Sans'){echo $selected;} ?>>Quattrocento Sans</option>
								<option value="Radley" <?php if($content_font_name=='Radley'){echo $selected;} ?>>Radley</option>
								<option value="Raleway:100" <?php if($content_font_name=='Raleway:100'){echo $selected;} ?>>Raleway</option>
								<option value="Redressed" <?php if($content_font_name=='Redressed'){echo $selected;} ?>>Redressed</option>
								<option value="Rock+Salt" <?php if($content_font_name=='Rock+Salt'){echo $selected;} ?>>Rock+Salt</option>
								<option value="Rokkitt" <?php if($content_font_name=='Rokkitt'){echo $selected;} ?>>Rokkitt</option>
								<option value="Ruslan+Display" <?php if($content_font_name=='Ruslan+Display'){echo $selected;} ?>>Ruslan Display</option>
								<option value="Schoolbell" <?php if($content_font_name=='Schoolbell'){echo $selected;} ?>>Schoolbell</option>
								<option value="Shadows+Into+Light" <?php if($content_font_name=='Shadows+Into+Light'){echo $selected;} ?>>Shadows Into Light</option>
								<option value="Shanti" <?php if($content_font_name=='Shanti'){echo $selected;} ?>>Shanti</option>
								<option value="Sigmar+One" <?php if($content_font_name=='Sigmar+One'){echo $selected;} ?>>Sigmar+One</option>
								<option value="Six+Caps" <?php if($content_font_name=='Six+Caps'){echo $selected;} ?>>Six Caps</option>
								<option value="Slackey" <?php if($content_font_name=='Slackey'){echo $selected;} ?>>Slackey</option>
								<option value="Smythe" <?php if($content_font_name=='Smythe'){echo $selected;} ?>>Smythe</option>
								<option value="Sniglet:800" <?php if($content_font_name=='Sniglet:800'){echo $selected;} ?>>Sniglet</option>
								<option value="Special+Elite" <?php if($content_font_name=='Special+Elite'){echo $selected;} ?>>Special Elite</option>
								<option value="Stardos+Stencil" <?php if($content_font_name=='Stardos+Stencil'){echo $selected;} ?>>Stardos Stencil</option>
								<option value="Sue+Ellen+Francisco" <?php if($content_font_name=='Sue+Ellen+Francisco'){echo $selected;} ?>>Sue Ellen Francisco</option>
								<option value="Sunshiney" <?php if($content_font_name=='Sunshiney'){echo $selected;} ?>>Sunshiney</option>
								<option value="Swanky+and+Moo+Moo" <?php if($content_font_name=='Swanky+and+Moo+Moo'){echo $selected;} ?>>Swanky and Moo Moo</option>
								<option value="Syncopate" <?php if($content_font_name=='Syncopate'){echo $selected;} ?>>Syncopate</option>
								<option value="Tangerine" <?php if($content_font_name=='Tangerine'){echo $selected;} ?>>Tangerine</option>
								<option value="Tenor+Sans" <?php if($content_font_name=='Tenor+Sans'){echo $selected;} ?>>Tenor Sans</option>
								<option value="Terminal+Dosis+Light" <?php if($content_font_name=='Terminal+Dosis+Light'){echo $selected;} ?>>Terminal Dosis Light</option>
								<option value="The+Girl+Next+Door" <?php if($content_font_name=='The+Girl+Next+Door'){echo $selected;} ?>>The Girl Next Door</option>
								<option value="Tinos" <?php if($content_font_name=='Tinos'){echo $selected;} ?>>Tinos</option>
								<option value="Ubuntu" <?php if($content_font_name=='Ubuntu'){echo $selected;} ?>>Ubuntu</option>
								<option value="Ultra" <?php if($content_font_name=='Ultra'){echo $selected;} ?>>Ultra</option>
								<option value="Unkempt" <?php if($content_font_name=='Unkempt'){echo $selected;} ?>>Unkempt</option>
								<option value="UnifrakturCook:bold" <?php if($content_font_name=='UnifrakturCook:bold'){echo $selected;} ?>>UnifrakturCook</option>
								<option value="UnifrakturMaguntia" <?php if($content_font_name=='UnifrakturMaguntia'){echo $selected;} ?>>UnifrakturMaguntia</option>
								<option value="Varela" <?php if($content_font_name=='Varela'){echo $selected;} ?>>Varela</option>
								<option value="Varela Round" <?php if($content_font_name=='Varela Round'){echo $selected;} ?>>Varela Round</option>
								<option value="Vibur" <?php if($content_font_name=='Vibur'){echo $selected;} ?>>Vibur</option>
								<option value="Vollkorn" <?php if($content_font_name=='Vollkorn'){echo $selected;} ?>>Vollkorn</option>
								<option value="VT323" <?php if($content_font_name=='VT323'){echo $selected;} ?>>VT323</option>
								<option value="Waiting+for+the+Sunrise" <?php if($content_font_name=='Waiting+for+the+Sunrise'){echo $selected;} ?>>Waiting for the Sunrise</option>
								<option value="Wallpoet" <?php if($content_font_name=='Wallpoet'){echo $selected;} ?>>Wallpoet</option>
								<option value="Walter+Turncoat" <?php if($content_font_name=='Walter+Turncoat'){echo $selected;} ?>>Walter Turncoat</option>
								<option value="Wire+One" <?php if($content_font_name=='Wire+One'){echo $selected;} ?>>Wire One</option>
								<option value="Yanone+Kaffeesatz" <?php if($content_font_name=='Yanone+Kaffeesatz'){echo $selected;} ?>>Yanone Kaffeesatz</option>
								<option value="Yanone+Kaffeesatz:300" <?php if($content_font_name=='Yanone+Kaffeesatz:300'){echo $selected;} ?>>Yanone Kaffeesatz:300</option>
								<option value="Yanone+Kaffeesatz:400" <?php if($content_font_name=='Yanone+Kaffeesatz:400'){echo $selected;} ?>>Yanone Kaffeesatz:400</option>
								<option value="Yanone+Kaffeesatz:700" <?php if($content_font_name=='Yanone+Kaffeesatz:700'){echo $selected;} ?>>Yanone Kaffeesatz:700</option>
								<option value="Yeseva+One" <?php if($content_font_name=='Yeseva+One'){echo $selected;} ?>>Yeseva One</option>
								<option value="Zeyada" <?php if($content_font_name=='Zeyada'){echo $selected;} ?>>Zeyada</option>
								</optgroup>
								<?php } else { ?>
								<optgroup label="Content Fonts">
								<option value="Arial"selected="selected">Arial</option>
								<option value="Verdana">Verdana</option>    
								<option value="Helvetica">Helvetica</option>
								<option value="Lucida Grande">Lucida Grande</option>
								<option value="Trebuchet MS">Trebuchet MS</option>
								<option value="Times New Roman">Times New Roman</option>
								<option value="Tahoma">Tahoma</option>
								<option value="Georgia">Georgia</option>
								</optgroup>
								
								<optgroup label="Google Fonts">
								<option value="Arial"selected="selected">Arial</option>
								<option value="Aclonica">Aclonica</option>    
								<option value="Allan">Allan</option>
								<option value="Annie+Use+Your+Telescope">Annie Use Your Telescope</option>
								<option value="Anonymous+Pro">Anonymous Pro</option>
								<option value="Allerta+Stencil">Allerta Stencil</option>
								<option value="Allerta">Allerta</option>
								<option value="Amaranth">Amaranth</option>
								<option value="Anton">Anton</option>
								<option value="Architects+Daughte" >Architects Daughter</option>
								<option value="Arimo">Arimo</option>
								<option value="Artifika">Artifika</option>
								<option value="Arvo">Arvo</option>
								<option value="Asset">Asset</option>
								<option value="Astloch">Astloch</option>
								<option value="Bangers">Bangers</option>
								<option value="Bentham">Bentham</option>
								<option value="Bevan">Bevan</option>
								<option value="Bigshot+One">Bigshot One</option>
								<option value="Bowlby+One">Bowlby One</option>
								<option value="Bowlby+One+SC">Bowlby One SC</option>
								<option value="Brawler">Brawler</option>
								<option value="Buda:300">Buda</option>
								<option value="Cabin" >Cabin</option>
								<option value="Calligraffitti">Calligraffitti</option>
								<option value="Candal">Candal</option>
								<option value="Cantarell">Cantarell</option>
								<option value="Cardo" >Cardo</option>
								<option value="Carter One" >Carter One</option>
								<option value="Caudex" >Caudex</option>
								<option value="Cedarville+Cursive">Cedarville Cursive</option>
								<option value="Cherry+Cream+Soda">Cedarville Cursive</option>
								<option value="Chewy">Chewy</option>
								<option value="Coda" >Coda</option>
								<option value="Coming+Soon" >Coming Soon</option>
								<option value="Copse" >Copse</option>
								<option value="Corben:700" >Corben</option>
								<option value="Cousine" >Cousine</option>
								<option value="Covered+By+Your+Grace" >Covered By Your Grace</option>
								<option value="Crafty+Girls">Crafty Girls</option>
								<option value="Crimson+Text" >Crimson Text</option>
								<option value="Crushed">Crushed</option>
								<option value="Cuprum">Cuprum</option>
								<option value="Damion" >Damion</option>
								<option value="Dancing+Script" >Dancing Script</option>
								<option value="Dawning+of+a+New+Day" >Didact Gothic</option>
								<option value="Didact+Gothic" >Arial</option>
								<option value="Droid+Sans" >Droid Sans</option>
								<option value="Droid+Sans+Mono">Droid Sans Mono</option>
								<option value="Droid+Serif" >Droid Serif</option>
								<option value="EB+Garamond">EB Garamond</option>
								<option value="Expletus+Sans">Expletus Sans</option>
								<option value="Fontdiner+Swanky">Fontdiner Swanky</option>
								<option value="Forum">Forum</option>
								<option value="Francois+One">Francois One</option>
								<option value="Geo">Geo</option>
								<option value="Give+You+Glory">Give You Glory</option>
								<option value="Goblin+One">Goblin One</option>
								<option value="Goudy+Bookletter+1911">Goudy Bookletter 1911</option>
								<option value="Gravitas+One">Gravitas One</option>
								<option value="Gruppo">Gruppo</option>
								<option value="Hammersmith+One">Hammersmith One</option>
								<option value="Holtwood+One+SC">Holtwood One SC</option>
								<option value="Homemade+Apple">Homemade Apple</option>
								<option value="Inconsolata">Inconsolata</option>
								<option value="Indie+Flower">Indie Flower</option>
								<option value="IM+Fell+DW+Pica">IM Fell DW Pica</option>
								<option value="IM+Fell+DW+Pica+SC">IM Fell DW Pica SC</option>
								<option value="IM+Fell+Double+Pica">IM Fell Double Pica</option>
								<option value="IM+Fell+Double+Pica+SC">IM Fell Double Pica SC</option>
								<option value="IM+Fell+English">IM Fell English</option>
								<option value="IM+Fell+English+SC">IM Fell English SC</option>
								<option value="IM+Fell+French+Canon">IM Fell French Canon</option>
								<option value="IM+Fell+French+Canon+SC">IM Fell French Canon SC</option>
								<option value="IM+Fell+Great+Primer">IM Fell Great Primer</option>
								<option value="IM+Fell+Great+Primer+SC">IM Fell Great Primer SC</option>
								<option value="Irish+Grover">Irish Grover</option>
								<option value="Irish+Growler">Irish Growler</option>
								<option value="Istok+Web">Istok Web</option>
								<option value="Josefin+Sans">Josefin Sans Regular 400</option>
								<option value="Josefin+Slab">Josefin Slab Regular 400</option>
								<option value="Judson">Judson</option>
								<option value="Jura">Jura Regular</option>
								<option value="Jura:500">Jura 500</option>
								<option value="Jura:600">Jura 600</option>
								<option value="Just+Another+Hand">Just Another Hand</option>
								<option value="Just+Me+Again+Down+Here">Just Me Again Down Here</option>
								<option value="Kameron">Kameron</option>
								<option value="Kenia">Kenia</option>
								<option value="Kranky">Kranky</option>
								<option value="Kreon">Kreon</option>
								<option value="Kristi">Kristi</option>
								<option value="La+Belle+Aurore">La Belle Aurore</option>
								<option value="Lato:100">Lato 100</option>
								<option value="Lato:100italic">Lato 100 (plus italic)</option>
								<option value="Lato:300">Lato Light 300</option>
								<option value="Lato">Lato</option>
								<option value="Lato:bold">Lato Bold 700</option>
								<option value="Lato:900">Lato 900</option>
								<option value="League+Script">League Script</option>
								<option value="Lekton">Lekton</option>
								<option value="Limelight">Limelight</option>
								<option value="Lobster">Lobster</option>
								<option value="Lobster Two">Lobster Two</option>
								<option value="Lora">Lora</option>
								<option value="Love+Ya+Like+A+Sister">Love Ya Like A Sister</option>
								<option value="Loved+by+the+King">Loved by the King</option>
								<option value="Luckiest+Guy">Luckiest Guy</option>
								<option value="Maiden+Orange">Maiden Orange</option>
								<option value="Mako">Mako</option>
								<option value="Maven+Pro">Maven Pro</option>
								<option value="Maven+Pro:500">Maven Pro 500</option>
								<option value="Maven+Pro:700">Maven Pro 700</option>
								<option value="Maven+Pro:900">Maven Pro 900</option>
								<option value="Meddon">Meddon</option>
								<option value="MedievalSharp">MedievalSharp</option>
								<option value="Megrim">Megrim</option>
								<option value="Merriweather">Merriweather</option>
								<option value="Metrophobic">Metrophobic</option>
								<option value="Michroma">Michroma</option>
								<option value="Miltonian Tattoo">Miltonian Tattoo</option>
								<option value="Miltonian">Miltonian</option>
								<option value="Modern Antiqua">Modern Antiqua</option>
								<option value="Monofett">Monofett</option>
								<option value="Molengo">Molengo</option>
								<option value="Mountains of Christmas">Mountains of Christmas</option>
								<option value="Muli:300">Muli Light</option>
								<option value="Muli">Muli Regular</option>
								<option value="Neucha">Neucha</option>
								<option value="Neuton">Neuton</option>
								<option value="News+Cycle">News+Cycle</option>
								<option value="Nixie+One">Nixie One</option>
								<option value="Nobile">Nobile</option>
								<option value="Nova+Cut">Nova+Cut</option>
								<option value="Nova+Flat">Nova+Flat</option>
								<option value="Nova+Mono">Nova+Mono</option>
								<option value="Nova Oval">Nova Oval</option>
								<option value="Nova+Round">Nova Round</option>
								<option value="Nova+Script">Nova Script</option>
								<option value="Nova+Slim">Nova Slim</option>
								<option value="Nova+Square">Nova Square</option>
								<option value="Nunito:light">Nunito Light</option>
								<option value="Nunito">Nunito</option>
								<option value="OFL+Sorts+Mill+Goudy+TT">OFL Sorts Mill Goudy TT</option>
								<option value="Old+Standard+TT">Old Standard TT</option>
								<option value="Open+Sans:300">Open Sans light</option>
								<option value="Open+Sans">Open Sans regular</option>
								<option value="Open+Sans:600">Open Sans 600</option>
								<option value="Open+Sans:800">Open Sans bold</option>
								<option value="Open+Sans+Condensed:300">Open Sans Condensed</option>
								<option value="Orbitron">Orbitron Regular (400)</option>
								<option value="Orbitron:500">Orbitron 500</option>
								<option value="Orbitron:700">Orbitron Regular (700)</option>
								<option value="Orbitron:900">Orbitron 900</option>
								<option value="Oswald">Oswald</option>
								<option value="Over+the+Rainbow">Over the Rainbow</option>
								<option value="Reenie+Beanie">Reenie Beanie</option>
								<option value="Pacifico">Pacifico</option>
								<option value="Patrick+Hand">Patrick Hand</option>
								<option value="Paytone+One">Paytone One</option>
								<option value="Permanent+Marker">Permanent Marker</option>
								<option value="Philosopher">Philosopher</option>
								<option value="Play">Play</option>
								<option value="Playfair+Display">Playfair Display</option>
								<option value="Podkova">Podkova</option>
								<option value="PT+Sans">PT Sans</option>
								<option value="PT+Sans+Narrow">PT Sans Narrow</option>
								<option value="PT+Sans+Narrow:regular,bold">PT Sans Narrow (plus bold)</option>
								<option value="PT+Serif">PT Serif</option>
								<option value="PT+Serif Caption">PT Serif Caption</option>
								<option value="Puritan">Puritan</option>
								<option value="Quattrocento">Quattrocento</option>
								<option value="Quattrocento+Sans">Quattrocento Sans</option>
								<option value="Radley">Radley</option>
								<option value="Raleway:100">Raleway</option>
								<option value="Redressed">Redressed</option>
								<option value="Rock+Salt">Rock+Salt</option>
								<option value="Rokkitt">Rokkitt</option>
								<option value="Ruslan+Display">Ruslan Display</option>
								<option value="Schoolbell">Schoolbell</option>
								<option value="Shadows+Into+Light">Shadows Into Light</option>
								<option value="Shanti">Shanti</option>
								<option value="Sigmar+One">Sigmar+One</option>
								<option value="Six+Caps">Six Caps</option>
								<option value="Slackey">Slackey</option>
								<option value="Smythe">Smythe</option>
								<option value="Sniglet:800">Sniglet</option>
								<option value="Special+Elite">Special Elite</option>
								<option value="Stardos+Stencil">Stardos Stencil</option>
								<option value="Sue+Ellen+Francisco">Sue Ellen Francisco</option>
								<option value="Sunshiney">Sunshiney</option>
								<option value="Swanky+and+Moo+Moo">Swanky and Moo Moo</option>
								<option value="Syncopate">Syncopate</option>
								<option value="Tangerine">Tangerine</option>
								<option value="Tenor+Sans">Tenor Sans</option>
								<option value="Terminal+Dosis+Light">Terminal Dosis Light</option>
								<option value="The+Girl+Next+Door">The Girl Next Door</option>
								<option value="Tinos">Tinos</option>
								<option value="Ubuntu">Ubuntu</option>
								<option value="Ultra">Ultra</option>
								<option value="Unkempt">Unkempt</option>
								<option value="UnifrakturCook:bold">UnifrakturCook</option>
								<option value="UnifrakturMaguntia">UnifrakturMaguntia</option>
								<option value="Varela">Varela</option>
								<option value="Varela Round">Varela Round</option>
								<option value="Vibur">Vibur</option>
								<option value="Vollkorn">Vollkorn</option>
								<option value="VT323">VT323</option>
								<option value="Waiting+for+the+Sunrise">Waiting for the Sunrise</option>
								<option value="Wallpoet">Wallpoet</option>
								<option value="Walter+Turncoat">Walter Turncoat</option>
								<option value="Wire+One">Wire One</option>
								<option value="Yanone+Kaffeesatz">Yanone Kaffeesatz</option>
								<option value="Yanone+Kaffeesatz:300">Yanone Kaffeesatz:300</option>
								<option value="Yanone+Kaffeesatz:400">Yanone Kaffeesatz:400</option>
								<option value="Yanone+Kaffeesatz:700">Yanone Kaffeesatz:700</option>
								<option value="Yeseva+One">Yeseva One</option>
								<option value="Zeyada">Zeyada</option>
								</optgroup>
								<?php } ?>
								</select>         
							</span>
						
							<br/> <br/> 
							<span style ="padding: 15px 15px 15px 20px;font-weight: bold;">Heading Font: </span>
						
							<span style = "padding: 15px 15px 15px 20px;font-weight: bold;"> <select name="h1_font_name">
								<?php if (isset($h1_font_name)) {
								$selected = "selected";
								?>
								<option value="Arial" <?php if($h1_font_name=='Arial'){echo $selected;} ?>>Arial</option>
								<option value="Aclonica" <?php if($h1_font_name=='Aclonica'){echo $selected;} ?>>Verdana</option>
								<option value="Allan" <?php if($h1_font_name=='Allan'){echo $selected;} ?>>Allan</option>
								<option value="Annie+Use+Your+Telescope" <?php if($h1_font_name=='Annie+Use+Your+Telescope'){echo $selected;} ?>>Annie Use Your Telescope</option>
								<option value="Anonymous+Pro" <?php if($h1_font_name=='Anonymous+Pro'){echo $selected;} ?>>Anonymous Pro</option>
								<option value="Allerta+Stencil" <?php if($h1_font_name=='Allerta+Stencil'){echo $selected;} ?>>Allerta Stencil</option>
								<option value="Allerta" <?php if($h1_font_name=='Allerta'){echo $selected;} ?>>Allerta</option>
								<option value="Amaranth" <?php if($h1_font_name=='Amaranth'){echo $selected;} ?>>Amaranth</option>
								<option value="Anton" <?php if($h1_font_name=='Anton'){echo $selected;} ?>>Anton</option>
								<option value="Architects+Daughte" <?php if($h1_font_name=='Architects+Daughte'){echo $selected;} ?>>Architects Daughter</option>
								<option value="Arimo" <?php if($h1_font_name=='Arimo'){echo $selected;} ?>>Arimo</option>
								<option value="Artifika" <?php if($h1_font_name=='Artifika'){echo $selected;} ?>>Artifika</option>
								<option value="Arvo" <?php if($h1_font_name=='Arvo'){echo $selected;} ?>>Arvo</option>
								<option value="Asset" <?php if($h1_font_name=='Asset'){echo $selected;} ?>>Asset</option>
								<option value="Astloch" <?php if($h1_font_name=='Astloch'){echo $selected;} ?>>Astloch</option>
								<option value="Bangers" <?php if($h1_font_name=='Bangers'){echo $selected;} ?>>Bangers</option>
								<option value="Bentham" <?php if($h1_font_name=='Bentham'){echo $selected;} ?>>Bentham</option>
								<option value="Bevan" <?php if($h1_font_name=='Bevan'){echo $selected;} ?>>Bevan</option>
								<option value="Bigshot+One" <?php if($h1_font_name=='Bigshot+One'){echo $selected;} ?>>Bigshot One</option>
								<option value="Bowlby+One" <?php if($h1_font_name=='Bowlby+One'){echo $selected;} ?>>Bowlby One</option>
								<option value="Bowlby+One+SC" <?php if($h1_font_name=='Bowlby+One+SC'){echo $selected;} ?>>Bowlby One SC</option>
								<option value="Brawler" <?php if($h1_font_name=='Brawler'){echo $selected;} ?>>Brawler</option>
								<option value="Buda:300" <?php if($h1_font_name=='Buda:300'){echo $selected;} ?>>Buda</option>
								<option value="Cabin" <?php if($h1_font_name=='Cabin'){echo $selected;} ?>>Cabin</option>
								<option value="Calligraffitti" <?php if($h1_font_name=='Calligraffitti'){echo $selected;} ?>>Calligraffitti</option>
								<option value="Candal" <?php if($h1_font_name=='Candal'){echo $selected;} ?>>Candal</option>
								<option value="Cantarell" <?php if($h1_font_name=='Cantarell'){echo $selected;} ?>>Cantarell</option>
								<option value="Cardo" <?php if($h1_font_name=='Cardo'){echo $selected;} ?>>Cardo</option>
								<option value="Carter One" <?php if($h1_font_name=='Carter One'){echo $selected;} ?>>Carter One</option>
								<option value="Caudex" <?php if($h1_font_name=='Caudex'){echo $selected;} ?>>Caudex</option>
								<option value="Cedarville+Cursive" <?php if($h1_font_name=='Cedarville+Cursive'){echo $selected;} ?>>Cedarville Cursive</option>
								<option value="Cherry+Cream+Soda" <?php if($h1_font_name=='Cherry+Cream+Soda'){echo $selected;} ?>>Cedarville Cursive</option>
								<option value="Chewy" <?php if($h1_font_name=='Chewy'){echo $selected;} ?>>Chewy</option>
								<option value="Coda" <?php if($h1_font_name=='Coda'){echo $selected;} ?>>Coda</option>
								<option value="Coming+Soon" <?php if($h1_font_name=='Coming+Soon'){echo $selected;} ?>>Coming Soon</option>
								<option value="Copse" <?php if($h1_font_name=='Copse'){echo $selected;} ?>>Copse</option>
								<option value="Corben:700" <?php if($h1_font_name=='Corben:700'){echo $selected;} ?>>Corben</option>
								<option value="Cousine" <?php if($h1_font_name=='Cousine'){echo $selected;} ?>>Cousine</option>
								<option value="Covered+By+Your+Grace" <?php if($h1_font_name=='Covered+By+Your+Grace'){echo $selected;} ?>>Covered By Your Grace</option>
								<option value="Crafty+Girls" <?php if($h1_font_name=='Crafty+Girls'){echo $selected;} ?>>Crafty Girls</option>
								<option value="Crimson+Text" <?php if($h1_font_name=='Crimson+Text'){echo $selected;} ?>>Crimson Text</option>
								<option value="Crushed" <?php if($h1_font_name=='Crushed'){echo $selected;} ?>>Crushed</option>
								<option value="Cuprum" <?php if($h1_font_name=='Cuprum'){echo $selected;} ?>>Cuprum</option>
								<option value="Damion" <?php if($h1_font_name=='Damion'){echo $selected;} ?>>Damion</option>
								<option value="Dancing+Script" <?php if($h1_font_name=='Dancing+Script'){echo $selected;} ?>>Dancing Script</option>
								<option value="Dawning+of+a+New+Day" <?php if($h1_font_name=='Dawning+of+a+New+Day'){echo $selected;} ?>>Didact Gothic</option>
								<option value="Didact+Gothic" <?php if($h1_font_name=='Didact+Gothic'){echo $selected;} ?>>Arial</option>
								<option value="Droid+Sans" <?php if($h1_font_name=='Droid+Sans'){echo $selected;} ?>>Droid Sans</option>
								<option value="Droid+Sans+Mono" <?php if($h1_font_name=='Droid+Sans+Mono'){echo $selected;} ?>>Droid Sans Mono</option>
								<option value="Droid+Serif" <?php if($h1_font_name=='Droid+Serif'){echo $selected;} ?>>Droid Serif</option>
								<option value="EB+Garamond" <?php if($h1_font_name=='EB+Garamond'){echo $selected;} ?>>EB Garamond</option>
								<option value="Expletus+Sans" <?php if($h1_font_name=='Expletus+Sans'){echo $selected;} ?>>Expletus Sans</option>
								<option value="Fontdiner+Swanky" <?php if($h1_font_name=='Fontdiner+Swanky'){echo $selected;} ?>>Fontdiner Swanky</option>
								<option value="Forum" <?php if($h1_font_name=='Forum'){echo $selected;} ?>>Forum</option>
								<option value="Francois+One" <?php if($h1_font_name=='Francois+One'){echo $selected;} ?>>Francois One</option>
								<option value="Geo" <?php if($h1_font_name=='Geo'){echo $selected;} ?>>Geo</option>
								<option value="Give+You+Glory" <?php if($h1_font_name=='Give+You+Glory'){echo $selected;} ?>>Give You Glory</option>
								<option value="Goblin+One" <?php if($h1_font_name=='Goblin+One'){echo $selected;} ?>>Goblin One</option>
								<option value="Goudy+Bookletter+1911" <?php if($h1_font_name=='Goudy+Bookletter+1911'){echo $selected;} ?>>Goudy Bookletter 1911</option>
								<option value="Gravitas+One" <?php if($h1_font_name=='Gravitas+One'){echo $selected;} ?>>Gravitas One</option>
								<option value="Gruppo" <?php if($h1_font_name=='Gruppo'){echo $selected;} ?>>Gruppo</option>
								<option value="Hammersmith+One" <?php if($h1_font_name=='ammersmith+One'){echo $selected;} ?>>Hammersmith One</option>
								<option value="Holtwood+One+SC" <?php if($h1_font_name=='Holtwood+One+SC'){echo $selected;} ?>>Holtwood One SC</option>
								<option value="Homemade+Apple" <?php if($h1_font_name=='Homemade+Apple'){echo $selected;} ?>>Homemade Apple</option>
								<option value="Inconsolata" <?php if($h1_font_name=='Inconsolata'){echo $selected;} ?>>Inconsolata</option>
								<option value="Indie+Flower" <?php if($h1_font_name=='Indie+Flower'){echo $selected;} ?>>Indie Flower</option>
								<option value="IM+Fell+DW+Pica" <?php if($h1_font_name=='IM+Fell+DW+Pica'){echo $selected;} ?>>IM Fell DW Pica</option>
								<option value="IM+Fell+DW+Pica+SC" <?php if($h1_font_name=='IM+Fell+DW+Pica+SC'){echo $selected;} ?>>IM Fell DW Pica SC</option>
								<option value="IM+Fell+Double+Pica" <?php if($h1_font_name=='IM+Fell+Double+Pica'){echo $selected;} ?>>IM Fell Double Pica</option>
								<option value="IM+Fell+Double+Pica+SC" <?php if($h1_font_name=='IM+Fell+Double+Pica+SC'){echo $selected;} ?>>IM Fell Double Pica SC</option>
								<option value="IM+Fell+English" <?php if($h1_font_name=='IM+Fell+English'){echo $selected;} ?>>IM Fell English</option>
								<option value="IM+Fell+English+SC" <?php if($h1_font_name=='IM+Fell+English+SC'){echo $selected;} ?>>IM Fell English SC</option>
								<option value="IM+Fell+French+Canon" <?php if($h1_font_name=='IM+Fell+French+Canon'){echo $selected;} ?>>IM Fell French Canon</option>
								<option value="IM+Fell+French+Canon+SC" <?php if($h1_font_name=='IM+Fell+French+Canon+SC'){echo $selected;} ?>>IM Fell French Canon SC</option>
								<option value="IM+Fell+Great+Primer" <?php if($h1_font_name=='IM+Fell+Great+Primer'){echo $selected;} ?>>IM Fell Great Primer</option>
								<option value="IM+Fell+Great+Primer+SC" <?php if($h1_font_name=='IM+Fell+Great+Primer+SC'){echo $selected;} ?>>IM Fell Great Primer SC</option>
								<option value="Irish+Grover" <?php if($h1_font_name=='Irish+Grover'){echo $selected;} ?>>Irish Grover</option>
								<option value="Irish+Growler" <?php if($h1_font_name=='Irish+Growler'){echo $selected;} ?>>Irish Growler</option>
								<option value="Istok+Web" <?php if($h1_font_name=='Istok+Web'){echo $selected;} ?>>Istok Web</option>
								<option value="Josefin+Sans" <?php if($h1_font_name=='Josefin+Sans'){echo $selected;} ?>>Josefin Sans Regular 400</option>
								<option value="Josefin+Slab" <?php if($h1_font_name=='Josefin+Slab'){echo $selected;} ?>>Josefin Slab Regular 400</option>
								<option value="Judson" <?php if($h1_font_name=='Judson'){echo $selected;} ?>>Judson</option>
								<option value="Jura" <?php if($h1_font_name=='Jura'){echo $selected;} ?>>Jura Regular</option>
								<option value="Jura:500" <?php if($h1_font_name=='Jura:500'){echo $selected;} ?>>Jura 500</option>
								<option value="Jura:600" <?php if($h1_font_name=='Jura:600'){echo $selected;} ?>>Jura 600</option>
								<option value="Just+Another+Hand" <?php if($h1_font_name=='Just+Another+Hand'){echo $selected;} ?>>Just Another Hand</option>
								<option value="Just+Me+Again+Down+Here" <?php if($h1_font_name=='Just+Me+Again+Down+Here'){echo $selected;} ?>>Just Me Again Down Here</option>
								<option value="Kameron" <?php if($h1_font_name=='Kameron'){echo $selected;} ?>>Kameron</option>
								<option value="Kenia" <?php if($h1_font_name=='Kenia'){echo $selected;} ?>>Kenia</option>
								<option value="Kranky" <?php if($h1_font_name=='Kranky'){echo $selected;} ?>>Kranky</option>
								<option value="Kreon" <?php if($h1_font_name=='Kreon'){echo $selected;} ?>>Kreon</option>
								<option value="Kristi" <?php if($h1_font_name=='Kristi'){echo $selected;} ?>>Kristi</option>
								<option value="La+Belle+Aurore" <?php if($h1_font_name=='La+Belle+Aurore'){echo $selected;} ?>>La Belle Aurore</option>
								<option value="Lato:100" <?php if($h1_font_name=='Lato:100'){echo $selected;} ?>>Lato 100</option>
								<option value="Lato:100italic" <?php if($h1_font_name=='Lato:100italic'){echo $selected;} ?>>Lato 100 (plus italic)</option>
								<option value="Lato:300" <?php if($h1_font_name=='Lato:300'){echo $selected;} ?>>Lato Light 300</option>
								<option value="Lato" <?php if($h1_font_name=='Lato'){echo $selected;} ?>>Lato</option>
								<option value="Lato:bold" <?php if($h1_font_name=='Lato:bold'){echo $selected;} ?>>Lato Bold 700</option>
								<option value="Lato:900" <?php if($h1_font_name=='Lato:900'){echo $selected;} ?>>Lato 900</option>
								<option value="League+Script" <?php if($h1_font_name=='League+Script'){echo $selected;} ?>>League Script</option>
								<option value="Lekton" <?php if($h1_font_name=='Lekton'){echo $selected;} ?>>Lekton</option>
								<option value="Limelight" <?php if($h1_font_name=='Limelight'){echo $selected;} ?>>Limelight</option>
								<option value="Lobster" <?php if($h1_font_name=='Lobster'){echo $selected;} ?>>Lobster</option>
								<option value="Lobster Two" <?php if($h1_font_name=='Lobster Two'){echo $selected;} ?>>Lobster Two</option>
								<option value="Lora" <?php if($h1_font_name=='Lora'){echo $selected;} ?>>Lora</option>
								<option value="Love+Ya+Like+A+Sister" <?php if($h1_font_name=='Love+Ya+Like+A+Sister'){echo $selected;} ?>>Love Ya Like A Sister</option>
								<option value="Loved+by+the+King" <?php if($h1_font_name=='Loved+by+the+King'){echo $selected;} ?>>Loved by the King</option>
								<option value="Luckiest+Guy" <?php if($h1_font_name=='Luckiest+Guy'){echo $selected;} ?>>Luckiest Guy</option>
								<option value="Maiden+Orange" <?php if($h1_font_name=='Maiden+Orange'){echo $selected;} ?>>Maiden Orange</option>
								<option value="Mako" <?php if($h1_font_name=='Mako'){echo $selected;} ?>>Mako</option>
								<option value="Maven+Pro" <?php if($h1_font_name=='Maven+Pro'){echo $selected;} ?>>Maven Pro</option>
								<option value="Maven+Pro:500" <?php if($h1_font_name=='Maven+Pro:500'){echo $selected;} ?>>Maven Pro 500</option>
								<option value="Maven+Pro:700" <?php if($h1_font_name=='Maven+Pro:700'){echo $selected;} ?>>Maven Pro 700</option>
								<option value="Maven+Pro:900" <?php if($h1_font_name=='Maven+Pro:900'){echo $selected;} ?>>Maven Pro 900</option>
								<option value="Meddon" <?php if($h1_font_name=='Meddon'){echo $selected;} ?>>Meddon</option>
								<option value="MedievalSharp" <?php if($h1_font_name=='MedievalSharp'){echo $selected;} ?>>MedievalSharp</option>
								<option value="Megrim" <?php if($h1_font_name=='Megrim'){echo $selected;} ?>>Megrim</option>
								<option value="Merriweather" <?php if($h1_font_name=='Merriweather'){echo $selected;} ?>>Merriweather</option>
								<option value="Metrophobic" <?php if($h1_font_name=='Metrophobic'){echo $selected;} ?>>Metrophobic</option>
								<option value="Michroma" <?php if($h1_font_name=='Michroma'){echo $selected;} ?>>Michroma</option>
								<option value="Miltonian Tattoo" <?php if($h1_font_name=='Miltonian Tattoo'){echo $selected;} ?>>Miltonian Tattoo</option>
								<option value="Miltonian" <?php if($h1_font_name=='Miltonian'){echo $selected;} ?>>Miltonian</option>
								<option value="Modern Antiqua" <?php if($h1_font_name=='Modern Antiqua'){echo $selected;} ?>>Modern Antiqua</option>
								<option value="Monofett" <?php if($h1_font_name=='Monofett'){echo $selected;} ?>>Monofett</option>
								<option value="Molengo" <?php if($h1_font_name=='Molengo'){echo $selected;} ?>>Molengo</option>
								<option value="Mountains of Christmas" <?php if($h1_font_name=='Mountains of Christmas'){echo $selected;} ?>>Mountains of Christmas</option>
								<option value="Muli:300" <?php if($h1_font_name=='Muli:300'){echo $selected;} ?>>Muli Light</option>
								<option value="Muli" <?php if($h1_font_name=='Muli'){echo $selected;} ?>>Muli Regular</option>
								<option value="Neucha" <?php if($h1_font_name=='Neucha'){echo $selected;} ?>>Neucha</option>
								<option value="Neuton" <?php if($h1_font_name=='Neuton'){echo $selected;} ?>>Neuton</option>
								<option value="News+Cycle" <?php if($h1_font_name=='News+Cycle'){echo $selected;} ?>>News+Cycle</option>
								<option value="Nixie+One" <?php if($h1_font_name=='Nixie+One'){echo $selected;} ?>>Nixie One</option>
								<option value="Nobile" <?php if($h1_font_name=='Nobile'){echo $selected;} ?>>Nobile</option>
								<option value="Nova+Cut" <?php if($h1_font_name=='Nova+Cut'){echo $selected;} ?>>Nova+Cut</option>
								<option value="Nova+Flat" <?php if($h1_font_name=='Nova+Flat'){echo $selected;} ?>>Nova+Flat</option>
								<option value="Nova+Mono" <?php if($h1_font_name=='Nova+Mono'){echo $selected;} ?>>Nova+Mono</option>
								<option value="Nova Oval" <?php if($h1_font_name=='Nova Oval'){echo $selected;} ?>>Nova Oval</option>
								<option value="Nova+Round" <?php if($h1_font_name=='Nova+Round'){echo $selected;} ?>>Nova Round</option>
								<option value="Nova+Script" <?php if($h1_font_name=='Nova+Script'){echo $selected;} ?>>Nova Script</option>
								<option value="Nova+Slim" <?php if($h1_font_name=='Nova+Slim'){echo $selected;} ?>>Nova Slim</option>
								<option value="Nova+Square" <?php if($h1_font_name=='Nova+Square'){echo $selected;} ?>>Nova Square</option>
								<option value="Nunito:light" <?php if($h1_font_name=='Nunito:light'){echo $selected;} ?>>Nunito Light</option>
								<option value="Nunito" <?php if($h1_font_name=='Nunito'){echo $selected;} ?>>Nunito</option>
								<option value="OFL+Sorts+Mill+Goudy+TT" <?php if($h1_font_name=='OFL+Sorts+Mill+Goudy+TT'){echo $selected;} ?>>OFL Sorts Mill Goudy TT</option>
								<option value="Old+Standard+TT" <?php if($h1_font_name=='Old+Standard+TT'){echo $selected;} ?>>Old Standard TT</option>
								<option value="Open+Sans:300" <?php if($h1_font_name=='Open+Sans:300'){echo $selected;} ?>>Open Sans light</option>
								<option value="Open+Sans" <?php if($h1_font_name=='Open+Sans'){echo $selected;} ?>>Open Sans regular</option>
								<option value="Open+Sans:600" <?php if($h1_font_name=='Open+Sans:600'){echo $selected;} ?>>Open Sans 600</option>
								<option value="Open+Sans:800" <?php if($h1_font_name=='Open+Sans:800'){echo $selected;} ?>>Open Sans bold</option>
								<option value="Open+Sans+Condensed:300" <?php if($h1_font_name=='Open+Sans+Condensed:300'){echo $selected;} ?>>Open Sans Condensed</option>
								<option value="Orbitron" <?php if($h1_font_name=='Orbitron'){echo $selected;} ?>>Orbitron Regular (400)</option>
								<option value="Orbitron:500" <?php if($h1_font_name=='Orbitron:500'){echo $selected;} ?>>Orbitron 500</option>
								<option value="Orbitron:700" <?php if($h1_font_name=='Orbitron:700'){echo $selected;} ?>>Orbitron Regular (700)</option>
								<option value="Orbitron:900" <?php if($h1_font_name=='Orbitron:900'){echo $selected;} ?>>Orbitron 900</option>
								<option value="Oswald" <?php if($h1_font_name=='Oswald'){echo $selected;} ?>>Oswald</option>
								<option value="Over+the+Rainbow" <?php if($h1_font_name=='Over+the+Rainbow'){echo $selected;} ?>>Over the Rainbow</option>
								<option value="Reenie+Beanie" <?php if($h1_font_name=='Reenie+Beanie'){echo $selected;} ?>>Reenie Beanie</option>
								<option value="Pacifico" <?php if($h1_font_name=='Pacifico'){echo $selected;} ?>>Pacifico</option>
								<option value="Patrick+Hand" <?php if($h1_font_name=='Patrick+Hand'){echo $selected;} ?>>Patrick Hand</option>
								<option value="Paytone+One" <?php if($h1_font_name=='Paytone+One'){echo $selected;} ?>>Paytone One</option>
								<option value="Permanent+Marker" <?php if($h1_font_name=='Permanent+Marker'){echo $selected;} ?>>Permanent Marker</option>
								<option value="Philosopher" <?php if($h1_font_name=='Philosopher'){echo $selected;} ?>>Philosopher</option>
								<option value="Play" <?php if($h1_font_name=='Play'){echo $selected;} ?>>Play</option>
								<option value="Playfair+Display" <?php if($h1_font_name=='Playfair+Display'){echo $selected;} ?>>Playfair Display</option>
								<option value="Podkova" <?php if($h1_font_name=='Podkova'){echo $selected;} ?>>Podkova</option>
								<option value="PT+Sans" <?php if($h1_font_name=='PT+Sans'){echo $selected;} ?>>PT Sans</option>
								<option value="PT+Sans+Narrow" <?php if($h1_font_name=='PT+Sans+Narrow'){echo $selected;} ?>>PT Sans Narrow</option>
								<option value="PT+Sans+Narrow:regular,bold" <?php if($h1_font_name=='PT+Sans+Narrow:regular,bold'){echo $selected;} ?>>PT Sans Narrow (plus bold)</option>
								<option value="PT+Serif" <?php if($h1_font_name=='PT+Serif'){echo $selected;} ?>>PT Serif</option>
								<option value="PT+Serif Caption" <?php if($h1_font_name=='PT+Serif Caption'){echo $selected;} ?>>PT Serif Caption</option>
								<option value="Puritan" <?php if($h1_font_name=='Puritan'){echo $selected;} ?>>Puritan</option>
								<option value="Quattrocento" <?php if($h1_font_name=='Quattrocento'){echo $selected;} ?>>Quattrocento</option>
								<option value="Quattrocento+Sans" <?php if($h1_font_name=='Quattrocento+Sans'){echo $selected;} ?>>Quattrocento Sans</option>
								<option value="Radley" <?php if($h1_font_name=='Radley'){echo $selected;} ?>>Radley</option>
								<option value="Raleway:100" <?php if($h1_font_name=='Raleway:100'){echo $selected;} ?>>Raleway</option>
								<option value="Redressed" <?php if($h1_font_name=='Redressed'){echo $selected;} ?>>Redressed</option>
								<option value="Rock+Salt" <?php if($h1_font_name=='Rock+Salt'){echo $selected;} ?>>Rock+Salt</option>
								<option value="Rokkitt" <?php if($h1_font_name=='Rokkitt'){echo $selected;} ?>>Rokkitt</option>
								<option value="Ruslan+Display" <?php if($h1_font_name=='Ruslan+Display'){echo $selected;} ?>>Ruslan Display</option>
								<option value="Schoolbell" <?php if($h1_font_name=='Schoolbell'){echo $selected;} ?>>Schoolbell</option>
								<option value="Shadows+Into+Light" <?php if($h1_font_name=='Shadows+Into+Light'){echo $selected;} ?>>Shadows Into Light</option>
								<option value="Shanti" <?php if($h1_font_name=='Shanti'){echo $selected;} ?>>Shanti</option>
								<option value="Sigmar+One" <?php if($h1_font_name=='Sigmar+One'){echo $selected;} ?>>Sigmar+One</option>
								<option value="Six+Caps" <?php if($h1_font_name=='Six+Caps'){echo $selected;} ?>>Six Caps</option>
								<option value="Slackey" <?php if($h1_font_name=='Slackey'){echo $selected;} ?>>Slackey</option>
								<option value="Smythe" <?php if($h1_font_name=='Smythe'){echo $selected;} ?>>Smythe</option>
								<option value="Sniglet:800" <?php if($h1_font_name=='Sniglet:800'){echo $selected;} ?>>Sniglet</option>
								<option value="Special+Elite" <?php if($h1_font_name=='Special+Elite'){echo $selected;} ?>>Special Elite</option>
								<option value="Stardos+Stencil" <?php if($h1_font_name=='Stardos+Stencil'){echo $selected;} ?>>Stardos Stencil</option>
								<option value="Sue+Ellen+Francisco" <?php if($h1_font_name=='Sue+Ellen+Francisco'){echo $selected;} ?>>Sue Ellen Francisco</option>
								<option value="Sunshiney" <?php if($h1_font_name=='Sunshiney'){echo $selected;} ?>>Sunshiney</option>
								<option value="Swanky+and+Moo+Moo" <?php if($h1_font_name=='Swanky+and+Moo+Moo'){echo $selected;} ?>>Swanky and Moo Moo</option>
								<option value="Syncopate" <?php if($h1_font_name=='Syncopate'){echo $selected;} ?>>Syncopate</option>
								<option value="Tangerine" <?php if($h1_font_name=='Tangerine'){echo $selected;} ?>>Tangerine</option>
								<option value="Tenor+Sans" <?php if($h1_font_name=='Tenor+Sans'){echo $selected;} ?>>Tenor Sans</option>
								<option value="Terminal+Dosis+Light" <?php if($h1_font_name=='Terminal+Dosis+Light'){echo $selected;} ?>>Terminal Dosis Light</option>
								<option value="The+Girl+Next+Door" <?php if($h1_font_name=='The+Girl+Next+Door'){echo $selected;} ?>>The Girl Next Door</option>
								<option value="Tinos" <?php if($h1_font_name=='Tinos'){echo $selected;} ?>>Tinos</option>
								<option value="Ubuntu" <?php if($h1_font_name=='Ubuntu'){echo $selected;} ?>>Ubuntu</option>
								<option value="Ultra" <?php if($h1_font_name=='Ultra'){echo $selected;} ?>>Ultra</option>
								<option value="Unkempt" <?php if($h1_font_name=='Unkempt'){echo $selected;} ?>>Unkempt</option>
								<option value="UnifrakturCook:bold" <?php if($h1_font_name=='UnifrakturCook:bold'){echo $selected;} ?>>UnifrakturCook</option>
								<option value="UnifrakturMaguntia" <?php if($h1_font_name=='UnifrakturMaguntia'){echo $selected;} ?>>UnifrakturMaguntia</option>
								<option value="Varela" <?php if($h1_font_name=='Varela'){echo $selected;} ?>>Varela</option>
								<option value="Varela Round" <?php if($h1_font_name=='Varela Round'){echo $selected;} ?>>Varela Round</option>
								<option value="Vibur" <?php if($h1_font_name=='Vibur'){echo $selected;} ?>>Vibur</option>
								<option value="Vollkorn" <?php if($h1_font_name=='Vollkorn'){echo $selected;} ?>>Vollkorn</option>
								<option value="VT323" <?php if($h1_font_name=='VT323'){echo $selected;} ?>>VT323</option>
								<option value="Waiting+for+the+Sunrise" <?php if($h1_font_name=='Waiting+for+the+Sunrise'){echo $selected;} ?>>Waiting for the Sunrise</option>
								<option value="Wallpoet" <?php if($h1_font_name=='Wallpoet'){echo $selected;} ?>>Wallpoet</option>
								<option value="Walter+Turncoat" <?php if($h1_font_name=='Walter+Turncoat'){echo $selected;} ?>>Walter Turncoat</option>
								<option value="Wire+One" <?php if($h1_font_name=='Wire+One'){echo $selected;} ?>>Wire One</option>
								<option value="Yanone+Kaffeesatz" <?php if($h1_font_name=='Yanone+Kaffeesatz'){echo $selected;} ?>>Yanone Kaffeesatz</option>
								<option value="Yanone+Kaffeesatz:300" <?php if($h1_font_name=='Yanone+Kaffeesatz:300'){echo $selected;} ?>>Yanone Kaffeesatz:300</option>
								<option value="Yanone+Kaffeesatz:400" <?php if($h1_font_name=='Yanone+Kaffeesatz:400'){echo $selected;} ?>>Yanone Kaffeesatz:400</option>
								<option value="Yanone+Kaffeesatz:700" <?php if($h1_font_name=='Yanone+Kaffeesatz:700'){echo $selected;} ?>>Yanone Kaffeesatz:700</option>
								<option value="Yeseva+One" <?php if($h1_font_name=='Yeseva+One'){echo $selected;} ?>>Yeseva One</option>
								<option value="Zeyada" <?php if($h1_font_name=='Zeyada'){echo $selected;} ?>>Zeyada</option>
								<?php } else { ?>
								<option value="Arial"selected="selected">Arial</option>
								<option value="Aclonica">Aclonica</option>    
								<option value="Allan">Allan</option>
								<option value="Annie+Use+Your+Telescope">Annie Use Your Telescope</option>
								<option value="Anonymous+Pro">Anonymous Pro</option>
								<option value="Allerta+Stencil">Allerta Stencil</option>
								<option value="Allerta">Allerta</option>
								<option value="Amaranth">Amaranth</option>
								<option value="Anton">Anton</option>
								<option value="Architects+Daughte" >Architects Daughter</option>
								<option value="Arimo">Arimo</option>
								<option value="Artifika">Artifika</option>
								<option value="Arvo">Arvo</option>
								<option value="Asset">Asset</option>
								<option value="Astloch">Astloch</option>
								<option value="Bangers">Bangers</option>
								<option value="Bentham">Bentham</option>
								<option value="Bevan">Bevan</option>
								<option value="Bigshot+One">Bigshot One</option>
								<option value="Bowlby+One">Bowlby One</option>
								<option value="Bowlby+One+SC">Bowlby One SC</option>
								<option value="Brawler">Brawler</option>
								<option value="Buda:300">Buda</option>
								<option value="Cabin" >Cabin</option>
								<option value="Calligraffitti">Calligraffitti</option>
								<option value="Candal">Candal</option>
								<option value="Cantarell">Cantarell</option>
								<option value="Cardo" >Cardo</option>
								<option value="Carter One" >Carter One</option>
								<option value="Caudex" >Caudex</option>
								<option value="Cedarville+Cursive">Cedarville Cursive</option>
								<option value="Cherry+Cream+Soda">Cedarville Cursive</option>
								<option value="Chewy">Chewy</option>
								<option value="Coda" >Coda</option>
								<option value="Coming+Soon" >Coming Soon</option>
								<option value="Copse" >Copse</option>
								<option value="Corben:700" >Corben</option>
								<option value="Cousine" >Cousine</option>
								<option value="Covered+By+Your+Grace" >Covered By Your Grace</option>
								<option value="Crafty+Girls">Crafty Girls</option>
								<option value="Crimson+Text" >Crimson Text</option>
								<option value="Crushed">Crushed</option>
								<option value="Cuprum">Cuprum</option>
								<option value="Damion" >Damion</option>
								<option value="Dancing+Script" >Dancing Script</option>
								<option value="Dawning+of+a+New+Day" >Didact Gothic</option>
								<option value="Didact+Gothic" >Arial</option>
								<option value="Droid+Sans" >Droid Sans</option>
								<option value="Droid+Sans+Mono">Droid Sans Mono</option>
								<option value="Droid+Serif" >Droid Serif</option>
								<option value="EB+Garamond">EB Garamond</option>
								<option value="Expletus+Sans">Expletus Sans</option>
								<option value="Fontdiner+Swanky">Fontdiner Swanky</option>
								<option value="Forum">Forum</option>
								<option value="Francois+One">Francois One</option>
								<option value="Geo">Geo</option>
								<option value="Give+You+Glory">Give You Glory</option>
								<option value="Goblin+One">Goblin One</option>
								<option value="Goudy+Bookletter+1911">Goudy Bookletter 1911</option>
								<option value="Gravitas+One">Gravitas One</option>
								<option value="Gruppo">Gruppo</option>
								<option value="Hammersmith+One">Hammersmith One</option>
								<option value="Holtwood+One+SC">Holtwood One SC</option>
								<option value="Homemade+Apple">Homemade Apple</option>
								<option value="Inconsolata">Inconsolata</option>
								<option value="Indie+Flower">Indie Flower</option>
								<option value="IM+Fell+DW+Pica">IM Fell DW Pica</option>
								<option value="IM+Fell+DW+Pica+SC">IM Fell DW Pica SC</option>
								<option value="IM+Fell+Double+Pica">IM Fell Double Pica</option>
								<option value="IM+Fell+Double+Pica+SC">IM Fell Double Pica SC</option>
								<option value="IM+Fell+English">IM Fell English</option>
								<option value="IM+Fell+English+SC">IM Fell English SC</option>
								<option value="IM+Fell+French+Canon">IM Fell French Canon</option>
								<option value="IM+Fell+French+Canon+SC">IM Fell French Canon SC</option>
								<option value="IM+Fell+Great+Primer">IM Fell Great Primer</option>
								<option value="IM+Fell+Great+Primer+SC">IM Fell Great Primer SC</option>
								<option value="Irish+Grover">Irish Grover</option>
								<option value="Irish+Growler">Irish Growler</option>
								<option value="Istok+Web">Istok Web</option>
								<option value="Josefin+Sans">Josefin Sans Regular 400</option>
								<option value="Josefin+Slab">Josefin Slab Regular 400</option>
								<option value="Judson">Judson</option>
								<option value="Jura">Jura Regular</option>
								<option value="Jura:500">Jura 500</option>
								<option value="Jura:600">Jura 600</option>
								<option value="Just+Another+Hand">Just Another Hand</option>
								<option value="Just+Me+Again+Down+Here">Just Me Again Down Here</option>
								<option value="Kameron">Kameron</option>
								<option value="Kenia">Kenia</option>
								<option value="Kranky">Kranky</option>
								<option value="Kreon">Kreon</option>
								<option value="Kristi">Kristi</option>
								<option value="La+Belle+Aurore">La Belle Aurore</option>
								<option value="Lato:100">Lato 100</option>
								<option value="Lato:100italic">Lato 100 (plus italic)</option>
								<option value="Lato:300">Lato Light 300</option>
								<option value="Lato">Lato</option>
								<option value="Lato:bold">Lato Bold 700</option>
								<option value="Lato:900">Lato 900</option>
								<option value="League+Script">League Script</option>
								<option value="Lekton">Lekton</option>
								<option value="Limelight">Limelight</option>
								<option value="Lobster">Lobster</option>
								<option value="Lobster Two">Lobster Two</option>
								<option value="Lora">Lora</option>
								<option value="Love+Ya+Like+A+Sister">Love Ya Like A Sister</option>
								<option value="Loved+by+the+King">Loved by the King</option>
								<option value="Luckiest+Guy">Luckiest Guy</option>
								<option value="Maiden+Orange">Maiden Orange</option>
								<option value="Mako">Mako</option>
								<option value="Maven+Pro">Maven Pro</option>
								<option value="Maven+Pro:500">Maven Pro 500</option>
								<option value="Maven+Pro:700">Maven Pro 700</option>
								<option value="Maven+Pro:900">Maven Pro 900</option>
								<option value="Meddon">Meddon</option>
								<option value="MedievalSharp">MedievalSharp</option>
								<option value="Megrim">Megrim</option>
								<option value="Merriweather">Merriweather</option>
								<option value="Metrophobic">Metrophobic</option>
								<option value="Michroma">Michroma</option>
								<option value="Miltonian Tattoo">Miltonian Tattoo</option>
								<option value="Miltonian">Miltonian</option>
								<option value="Modern Antiqua">Modern Antiqua</option>
								<option value="Monofett">Monofett</option>
								<option value="Molengo">Molengo</option>
								<option value="Mountains of Christmas">Mountains of Christmas</option>
								<option value="Muli:300">Muli Light</option>
								<option value="Muli">Muli Regular</option>
								<option value="Neucha">Neucha</option>
								<option value="Neuton">Neuton</option>
								<option value="News+Cycle">News+Cycle</option>
								<option value="Nixie+One">Nixie One</option>
								<option value="Nobile">Nobile</option>
								<option value="Nova+Cut">Nova+Cut</option>
								<option value="Nova+Flat">Nova+Flat</option>
								<option value="Nova+Mono">Nova+Mono</option>
								<option value="Nova Oval">Nova Oval</option>
								<option value="Nova+Round">Nova Round</option>
								<option value="Nova+Script">Nova Script</option>
								<option value="Nova+Slim">Nova Slim</option>
								<option value="Nova+Square">Nova Square</option>
								<option value="Nunito:light">Nunito Light</option>
								<option value="Nunito">Nunito</option>
								<option value="OFL+Sorts+Mill+Goudy+TT">OFL Sorts Mill Goudy TT</option>
								<option value="Old+Standard+TT">Old Standard TT</option>
								<option value="Open+Sans:300">Open Sans light</option>
								<option value="Open+Sans">Open Sans regular</option>
								<option value="Open+Sans:600">Open Sans 600</option>
								<option value="Open+Sans:800">Open Sans bold</option>
								<option value="Open+Sans+Condensed:300">Open Sans Condensed</option>
								<option value="Orbitron">Orbitron Regular (400)</option>
								<option value="Orbitron:500">Orbitron 500</option>
								<option value="Orbitron:700">Orbitron Regular (700)</option>
								<option value="Orbitron:900">Orbitron 900</option>
								<option value="Oswald">Oswald</option>
								<option value="Over+the+Rainbow">Over the Rainbow</option>
								<option value="Reenie+Beanie">Reenie Beanie</option>
								<option value="Pacifico">Pacifico</option>
								<option value="Patrick+Hand">Patrick Hand</option>
								<option value="Paytone+One">Paytone One</option>
								<option value="Permanent+Marker">Permanent Marker</option>
								<option value="Philosopher">Philosopher</option>
								<option value="Play">Play</option>
								<option value="Playfair+Display">Playfair Display</option>
								<option value="Podkova">Podkova</option>
								<option value="PT+Sans">PT Sans</option>
								<option value="PT+Sans+Narrow">PT Sans Narrow</option>
								<option value="PT+Sans+Narrow:regular,bold">PT Sans Narrow (plus bold)</option>
								<option value="PT+Serif">PT Serif</option>
								<option value="PT+Serif Caption">PT Serif Caption</option>
								<option value="Puritan">Puritan</option>
								<option value="Quattrocento">Quattrocento</option>
								<option value="Quattrocento+Sans">Quattrocento Sans</option>
								<option value="Radley">Radley</option>
								<option value="Raleway:100">Raleway</option>
								<option value="Redressed">Redressed</option>
								<option value="Rock+Salt">Rock+Salt</option>
								<option value="Rokkitt">Rokkitt</option>
								<option value="Ruslan+Display">Ruslan Display</option>
								<option value="Schoolbell">Schoolbell</option>
								<option value="Shadows+Into+Light">Shadows Into Light</option>
								<option value="Shanti">Shanti</option>
								<option value="Sigmar+One">Sigmar+One</option>
								<option value="Six+Caps">Six Caps</option>
								<option value="Slackey">Slackey</option>
								<option value="Smythe">Smythe</option>
								<option value="Sniglet:800">Sniglet</option>
								<option value="Special+Elite">Special Elite</option>
								<option value="Stardos+Stencil">Stardos Stencil</option>
								<option value="Sue+Ellen+Francisco">Sue Ellen Francisco</option>
								<option value="Sunshiney">Sunshiney</option>
								<option value="Swanky+and+Moo+Moo">Swanky and Moo Moo</option>
								<option value="Syncopate">Syncopate</option>
								<option value="Tangerine">Tangerine</option>
								<option value="Tenor+Sans">Tenor Sans</option>
								<option value="Terminal+Dosis+Light">Terminal Dosis Light</option>
								<option value="The+Girl+Next+Door">The Girl Next Door</option>
								<option value="Tinos">Tinos</option>
								<option value="Ubuntu">Ubuntu</option>
								<option value="Ultra">Ultra</option>
								<option value="Unkempt">Unkempt</option>
								<option value="UnifrakturCook:bold">UnifrakturCook</option>
								<option value="UnifrakturMaguntia">UnifrakturMaguntia</option>
								<option value="Varela">Varela</option>
								<option value="Varela Round">Varela Round</option>
								<option value="Vibur">Vibur</option>
								<option value="Vollkorn">Vollkorn</option>
								<option value="VT323">VT323</option>
								<option value="Waiting+for+the+Sunrise">Waiting for the Sunrise</option>
								<option value="Wallpoet">Wallpoet</option>
								<option value="Walter+Turncoat">Walter Turncoat</option>
								<option value="Wire+One">Wire One</option>
								<option value="Yanone+Kaffeesatz">Yanone Kaffeesatz</option>
								<option value="Yanone+Kaffeesatz:300">Yanone Kaffeesatz:300</option>
								<option value="Yanone+Kaffeesatz:400">Yanone Kaffeesatz:400</option>
								<option value="Yanone+Kaffeesatz:700">Yanone Kaffeesatz:700</option>
								<option value="Yeseva+One">Yeseva One</option>
								<option value="Zeyada">Zeyada</option>
								<?php } ?>
								</select>        
							</span>
						
							
					
						</table>
				</div> <!-- #tab_fontsize (end) -->
				
				
			
			
			
			<br/> <br/> <br/> <br/> 
			
			</div> <!-- #tab_styling (end) -->
			
			
			
			
	</form>


<script type="text/javascript" src="view/javascript/jquery/ui/ui.draggable.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/ui.resizable.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/ui.dialog.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/external/bgiframe/jquery.bgiframe.js"></script>
<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();

	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&field=' + encodeURIComponent(field) + '&token=<?php echo $this->session->data['token']; ?>" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');

	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $this->session->data['token']; ?>',
					type: 'POST',
					data: 'image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" style="border: 1px solid #EEEEEE;" onclick="image_upload(\'' + field + '\', \'' + preview + '\');" />');
					}
				});
			}
		},
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script>

<script type="text/javascript"><!--
$('#tabs a').tabs(); 
$('#languages a').tabs(); 
$('#vtab-option a').tabs();
//--></script> 


