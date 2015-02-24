<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?> xml:lang="<?php echo $lang; ?>" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/eros/stylesheet/stylesheet.css" />
<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('h1_font_name') ?>&v1' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('content_font_name') ?>&v1' rel='stylesheet' type='text/css'>
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/eros/js/eros.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/eros/stylesheet/ie7.css" />
<![endif]-->
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/eros/stylesheet/ie8.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/eros/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
<?php if($this->config->get('styling_show') == '1'): ?>  
<style type="text/css">

	/* Background Color */
	body{	
			background-color: #<?php echo $this->config->get('custom_background_color') ?>;
		}
	/* Next and Previous Button for Carousel */	
	
	.jcarousel-skin-opencart .jcarousel-next-horizontal, .jcarousel-skin-opencart .jcarousel-prev-horizontal {
		background-color: #<?php echo $this->config->get('custom_border_color') ?>;
	}

	.jcarousel-skin-opencart .jcarousel-next-disabled-horizontal, .jcarousel-skin-opencart .jcarousel-next-disabled-horizontal:hover, .jcarousel-skin-opencart .jcarousel-next-disabled-horizontal:focus, .jcarousel-skin-opencart .jcarousel-next-disabled-horizontal:active {
		cursor: default;
		background-color: #FFF;
	}


	.jcarousel-skin-opencart .jcarousel-prev-disabled-horizontal, .jcarousel-skin-opencart .jcarousel-prev-disabled-horizontal:hover, .jcarousel-skin-opencart .jcarousel-prev-disabled-horizontal:focus, .jcarousel-skin-opencart .jcarousel-prev-disabled-horizontal:active {
		cursor: default;
		background-color: #FFF;
	}
	
	/* Top Shopping Cart's Border Color */
	#header #cart .content {	
			 border: 2px solid #<?php echo $this->config->get('custom_border_color') ?>;
		}
		
	/* Top Slide Color */
	#tg_slideshow0, #header {
    border-bottom: 2px solid #<?php echo $this->config->get('custom_border_color') ?>;	
			
		}
	/* Bottom Slide Color */	
	
	

	
	/* Background Image or Pattern */
	<?php if ($this->config->get('custom_background_img') < '50') { ?>
 
		body{
				background-image: url("catalog/view/theme/eros/image/bgs/<?php echo  $this->config->get('custom_background_img');?>.png");
			}

  	<?php   }
	else { ?>
        body{
			background-image: url("catalog/view/theme/eros/image/bgs/<?php echo $this->config->get('custom_background_img');?>.png");
			background-repeat: no-repeat;
			background-position: 50% 0; 
			background-attachment: fixed;
			}
	<?php } ?>
	
	/* Text Color */
	.switcher span.s_selected, .switcher li, .switcher li a, #header #search input, #header #welcome, #header #cart .heading h4, body {
		color: #<?php echo $this->config->get('text_color') ?>!important;
	}	
	/* Header Link Font Color */
	a, a:visited, a:link, a b {
		color: #<?php echo $this->config->get('link_color') ?>!important;
	}
	
	/* Header Link Hover Font Color */
	.switcher li a:hover, a:hover  {
		color: #<?php echo $this->config->get('link_hover_color') ?>!important;
	}
	/* Header Menu Font Color */
	#menu > ul > li > a{
		color: #<?php echo $this->config->get('menu_color') ?>!important;
	}
	
	/* Header Menu Hover Font Color */
	#menu > ul > li a:hover {
		color: #<?php echo $this->config->get('menu_hover_color') ?>!important;
	}
	
	/* Header Menu Subcategory Font Color */
	#menu > ul > li > div > ul > li > a, #menu > ul > li > div > ul > li {
		color: #<?php echo $this->config->get('menu_subcategory_color') ?>!important;
	}

	/* Header Menu Subcategory Hover Font Color */
	#menu > ul > li ul > li > a:hover {
		color: #<?php echo $this->config->get('menu_subcategory_hover_color') ?>!important;
	}
	
	/* Header Menu Subcategory Background Color */
	#menu > ul > li > div {
	background: #<?php echo $this->config->get('menu_subcategory_bg_color') ?>;
	}
	
	/* Content Header Font Color */
	.checkout-product tbody .name a, .checkout-content .right  a, a b, .p-white a, .success-order a, .htabs a:hover, .box-product .name a, .box-category > ul > li ul > li > a, #content .content a, #content .content a, .manufacturer-list a, .product-filter .display a,
	.product-compare a, .product-list .name a, .product-grid .name a,.box-left .box-product-left .price, .product-info .description a, .product-info .review > div a, .compare-info .name a, .wishlist-product tbody .name a, .cart-info tbody .name a, .checkout-heading a,
	.checkout-content .right  a, a b, .checkout-product tbody .name a, .category-list a, .box-left .box-heading, .box .box-heading, h1, .welcome
	{
		color: #<?php echo $this->config->get('content_text_color2') ?>;
	}
	
	/* Price Color */
	.box-product .price, .product-grid .price, .product-list .price, .product-info .price, .box-left .box-product-left .price
	{
		color: #<?php echo $this->config->get('price_color') ?>;
	}

	/* Price Old Color */
	.box-product .price-old, .product-list .price-old, .box-left .box-product-left .price-old, .product-grid .price-old, .product-info .price-old, .compare-info .price-old, .box-product .price-old, .product-list .price-old, .product-grid .price-old, .product-info .price-old,
	.compare-info .price-old
	{
		color: #<?php echo $this->config->get('price_old_color') ?>;
	}
	
	/* Footer Header Color */
.footer-area .header_3, .footer-area .header_4, .footer-area .header_6, .footer-area .header_12, #footer h4, .footer-area .header_social_4
{
	color: #<?php echo $this->config->get('footer_header_color') ?>!important;
}

/* Footer Text Color */
.footer-area .column_3 p, .footer-area .column_4 p, .footer-area .column_6 p, .footer-area .column_12 p, #footer .column2 ul li, #twitter li span, #twitter li span *, #powered, #twitter li span a, #powered a, #twitter li a 
{
	color: #<?php echo $this->config->get('footer_text_color') ?>!important;
}

/* Default Opencart Footer Text Color */
#footer .column a
{
	color: #<?php echo $this->config->get('footer_default_text_color') ?>!important;
}

/* Content Font Name */
body, p, .p-white a, #header #search input, .success-order a, #footer .column a, #footer .column2 ul li, h4, .box-product .name a, .box-product .price, .product-list .name a, .product-list .price, .product-grid .name a, .product-grid .price, .product-info .price
{
<?php 
$toReplace2 =  $this->config->get('content_font_name');
$font2 = str_replace("+", " ", $toReplace2);
?>
font-family: '<?php echo $font2; ?>';
}

/* Header Font Name */

h1, .welcome, h2, .box .box-heading,  #footer h4, .footer-area .header_3,
.footer-area .header_4, .footer-area .header_6, .footer-area .header_12, .box-left .box-heading, .footer-area .header_social_4, .footer-area .header_social_3, .footer-area .header_social_6, .footer-area .header_social_12
 {
<?php 
$toReplace =  $this->config->get('h1_font_name');
$font = str_replace("+", " ", $toReplace);
?>
font-family: '<?php echo $font; ?>';
}

	
</style>	
<?php endif; ?>
</head>
<body>

	<div id="container">
		<div id="topwrapper"></div>
		<div id="mainwrapper">
			<div id="header">
				<?php if ($logo) { ?>
				<div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
				<?php } ?>
				
				
				<!-- CURRENCY AREA -->
					
				<?php echo $currency; ?>
				
  <!-- CURRENCY AREA -->
  
	<!-- LANGUAGE AREA -->
			
				<?php echo $language; ?>
				
	<!-- LANGUAGE AREA -->	
				
		<!-- SEARCH AREA -->
		<div id="search">
			<div class="left">
				<input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
			</div> <!-- left (end) -->
			<div class="button-search"></div>
		</div><!-- #search (end) -->

		<!-- TOP WELCOME TEXT AREA 
		<div id="welcome">
			<?php if (!$logged) { ?>
				<?php echo $text_welcome; ?>
			<?php } else { ?>
				<?php echo $text_logged; ?>
			<?php } ?>
		</div>-->	
		
		<!-- TOP LINKS AREA -->
		<div class="links"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>

		
		<?php echo $cart; ?>

  

<?php if ($categories) { ?>
<div id="menu">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    
  <?php } ?>
    <?php if ($informations) { ?>
	
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>

  <?php } ?>
</ul>
</div>
<?php } ?>
  </div>
<div id="notification"></div>
<div id="maincenter">
