<div class="welcome"  <?php if($this->config->get('althaina_layout_type')=="1"){ ?> <?php if(!isset($this->request->get['route']) || $this->request->get['route']=='common/home' ) { ?> style="margin:0px -20px 10px -20px" <?php } }?> >
<?php echo $message; ?></div>