</div>
</div>
<div id="bottomwrapper"></div>
</div> 



<div id="footer">



  <div class="footer-area">
	<div class="footer-wrapper">
    	
			
	<!-- DEFAULT FOOTER -->

	<div class="footer-default">
			
	<?php if ($informations) { ?>
	<div class="column">
    <div class="header_3"><?php echo $text_information; ?></div>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <?php } ?>
  <div class="column">
    <div class="header_3"><?php echo $text_service; ?></div>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <div class="header_3"><?php echo $text_extra; ?></div>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <div class="header_3"><?php echo $text_account; ?></div>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
</div>	</div> <!-- footer-default (end) -->

    	</div> <!-- footer-wrapper (end) -->
    </div><!-- footer-area (end) -->

	




<div id="footer_bottom">
<div class="info">
<div id="footer_container">


	

  		<div id="powered">Powered by <a class="blue" href="http://www.opencart.com">Open Cart</a><br /><a class="s_main_color" href="http://themeglobal.com">ThemeGlobal.com - OpenCart Templates Club</a></div>

 <?php if($this->config->get('tg_eros_paymentimages_status') == '1'): ?>	 	
  	
  	<div id="paymentimage">
  	<?php if (unserialize($this->config->get('tg_eros_paymentimages_slide_image'))) {?>	
  		<?php foreach( unserialize($this->config->get('tg_eros_paymentimages_slide_image')) as $image): ?>
      		<?php if ($image['url']) {?>
      		<span style="margin-left:10px;"><a href="<?php echo $image['url'];?>" target="_blank"><img src="<?php echo HTTPS_SERVER . 'image/' . $image['file'];?>" /></a></span>
      	<?php } else { ?>
      		<span style="margin-left:10px;"><img src="<?php echo HTTPS_SERVER . 'image/' . $image['file'];?>" /></span>
      	<?php } ?>
    	<?php endforeach; ?>
    <?php } ?>
	
	<?php if ($this->config->get('tg_eros_paymentimages_totop') == "1") { ?>	
	
	<a href="#top"><span style="float :right; margin-left:12px; margin-right:12px; margin-top: 8px;">&nbsp;<img src="catalog/view/theme/eros/image/arrow-up-footer.png" /> </span></a>
<script type="text/javascript">


var scrolltotop={
	//startline: Integer. Number of pixels from top of doc scrollbar is scrolled before showing control
	//scrollto: Keyword (Integer, or "Scroll_to_Element_ID"). How far to scroll document up when control is clicked on (0=top).
	setting: {startline:100, scrollto: 0, scrollduration:1000, fadeduration:[500, 100]},
	controlHTML: '<img src="" style="width:0px; height:0px" />', //HTML for control, which is auto wrapped in DIV w/ ID="topcontrol"
	controlattrs: {offsetx:5, offsety:5}, //offset of control relative to right/ bottom of window corner
	anchorkeyword: '#top', //Enter href value of HTML anchors on the page that should also act as "Scroll Up" links

	state: {isvisible:false, shouldvisible:false},

	scrollup:function(){
		if (!this.cssfixedsupport) //if control is positioned using JavaScript
			this.$control.css({opacity:0}) //hide control immediately after clicking it
		var dest=isNaN(this.setting.scrollto)? this.setting.scrollto : parseInt(this.setting.scrollto)
		if (typeof dest=="string" && jQuery('#'+dest).length==1) //check element set by string exists
			dest=jQuery('#'+dest).offset().top
		else
			dest=0
		this.$body.animate({scrollTop: dest}, this.setting.scrollduration);
	},

	keepfixed:function(){
		var $window=jQuery(window)
		var controlx=$window.scrollLeft() + $window.width() - this.$control.width() - this.controlattrs.offsetx
		var controly=$window.scrollTop() + $window.height() - this.$control.height() - this.controlattrs.offsety
		this.$control.css({left:controlx+'px', top:controly+'px'})
	},

	togglecontrol:function(){
		var scrolltop=jQuery(window).scrollTop()
		if (!this.cssfixedsupport)
			this.keepfixed()
		this.state.shouldvisible=(scrolltop>=this.setting.startline)? true : false
		if (this.state.shouldvisible && !this.state.isvisible){
			this.$control.stop().animate({opacity:1}, this.setting.fadeduration[0])
			this.state.isvisible=true
		}
		else if (this.state.shouldvisible==false && this.state.isvisible){
			this.$control.stop().animate({opacity:0}, this.setting.fadeduration[1])
			this.state.isvisible=false
		}
	},
	
	init:function(){
		jQuery(document).ready(function($){
			var mainobj=scrolltotop
			var iebrws=document.all
			mainobj.cssfixedsupport=!iebrws || iebrws && document.compatMode=="CSS1Compat" && window.XMLHttpRequest //not IE or IE7+ browsers in standards mode
			mainobj.$body=(window.opera)? (document.compatMode=="CSS1Compat"? $('html') : $('body')) : $('html,body')
			mainobj.$control=$('<div id="topcontrol">'+mainobj.controlHTML+'</div>')
				.css({position:mainobj.cssfixedsupport? 'fixed' : 'absolute', bottom:mainobj.controlattrs.offsety, right:mainobj.controlattrs.offsetx, opacity:0, cursor:'pointer'})
				.attr({title:'Scroll Back to Top'})
				.click(function(){mainobj.scrollup(); return false})
				.appendTo('body')
			if (document.all && !window.XMLHttpRequest && mainobj.$control.text()!='') //loose check for IE6 and below, plus whether control contains any text
				mainobj.$control.css({width:mainobj.$control.width()}) //IE6- seems to require an explicit width on a DIV containing text
			mainobj.togglecontrol()
			$('a[href="' + mainobj.anchorkeyword +'"]').click(function(){
				mainobj.scrollup()
				return false
			})
			$(window).bind('scroll resize', function(e){
				mainobj.togglecontrol()
			})
		})
	}
}

scrolltotop.init()




</script>

<?php } ?>
    </div> <!-- paymentimage (end) -->
	
	
	

<?php endif; ?> <!-- tg_eros_paymentimages_status (end) -->
</div> <!-- #footer_container (end) -->
</div>  <!-- #footer_bottom (end) -->


