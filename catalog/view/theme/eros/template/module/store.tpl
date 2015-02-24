<div class="box-left">
	<div class="sidebartop"></div>
	<div class="sidebarmain">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content" style="text-align: left; margin-left: 26px;">
   <p style="text-align: center;"><?php echo $text_store; ?></p>
    <?php foreach ($stores as $store) { ?>
    <?php if ($store['store_id'] == $store_id) { ?>
    <a href="<?php echo $store['url']; ?>"><b><?php echo $store['name']; ?></b></a><br />
    <?php } else { ?>
    <a href="<?php echo $store['url']; ?>"><?php echo $store['name']; ?></a><br />
    <?php } ?>
    <?php } ?>
    <br />
  </div>
</div>
</div>


<div class="sidebarbottom"></div>