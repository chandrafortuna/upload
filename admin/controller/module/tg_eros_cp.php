<?php
class ControllerModuletgeroscp extends Controller {
	private $error = array(); 
	public function index() {   
		$this->load->language('module/tg_eros_cp');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
		$this->load->model('tool/image');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			
			
			$this->model_setting_setting->editSetting('tg_eros_cp', $this->request->post);								
			
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect(HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token']);
		}
		
	
				
		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['entry_color'] = $this->language->get('entry_color');
		$this->data['entry_view'] = $this->language->get('entry_view');
		$this->data['entry_currency'] = $this->language->get('entry_currency');
		$this->data['entry_language'] = $this->language->get('entry_language');
		$this->data['entry_product_view'] = $this->language->get('entry_product_view');
		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		
		$this->data['button_save']          = $this->language->get('button_save');
		$this->data['button_cancel']        = $this->language->get('button_cancel');
        $this->data['button_addslide']      = $this->language->get('button_addslide');
        $this->data['button_remove']        = $this->language->get('button_remove');
        

		$this->data['tab_gen']              =  $this->language->get('tab_gen');

		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['text_image_manager'] =  $this->language->get('text_image_manager');
		$this->data['image_instruction'] =  $this->language->get('image_instruction');
		

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
				

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/tg_eros_cp', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/tg_eros_cp', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		
		

		$this->data['positions'] = array();
		
		$this->data['positions'][] = array(
			'position' => 'footer',
			'title'    => $this->language->get('text_footer'),
		);
		
		if (isset($this->request->post['tg_eros_cp_position'])) {
			$this->data['tg_eros_cp_position'] = $this->request->post['tg_eros_cp_position'];
		} else {
			$this->data['tg_eros_cp_position'] = $this->config->get('tg_eros_cp_position');
		}
		
		if (isset($this->request->post['tg_eros_cp_status'])) {
			$this->data['tg_eros_cp_status'] = $this->request->post['tg_eros_cp_status'];
		} else {
			$this->data['tg_eros_cp_status'] = $this->config->get('tg_eros_cp_status');
		}
		
		if (isset($this->request->post['tg_eros_cp_default_color'])) {
			$this->data['tg_eros_cp_default_color'] = $this->request->post['tg_eros_cp_default_color'];
		} else {
			$this->data['tg_eros_cp_default_color'] = $this->config->get('tg_eros_cp_default_color');
		}
		
		if (isset($this->request->post['tg_eros_cp_default_view'])) {
			$this->data['tg_eros_cp_default_view'] = $this->request->post['tg_eros_cp_default_view'];
		} else {
			$this->data['tg_eros_cp_default_view'] = $this->config->get('tg_eros_cp_default_view');
		}
		
		if (isset($this->request->post['tg_eros_cp_product_view'])) {
			$this->data['tg_eros_cp_product_view'] = $this->request->post['tg_eros_cp_product_view'];
		} else {
			$this->data['tg_eros_cp_product_view'] = $this->config->get('tg_eros_cp_product_view');
		}
		
		if (isset($this->request->post['tg_eros_cp_currency'])) {
			$this->data['tg_eros_cp_currency'] = $this->request->post['tg_eros_cp_currency'];
		} else {
			$this->data['tg_eros_cp_currency'] = $this->config->get('tg_eros_cp_currency');
		}
		 
		if (isset($this->request->post['tg_eros_cp_language'])) {
			$this->data['tg_eros_cp_language'] = $this->request->post['tg_eros_cp_language'];
		} else {
			$this->data['tg_eros_cp_language'] = $this->config->get('tg_eros_cp_language');
		}	
		
		if (isset($this->request->post['tg_eros_cp_totop'])) {
			$this->data['tg_eros_cp_totop'] = $this->request->post['tg_eros_cp_totop'];
		} else {
			$this->data['tg_eros_cp_totop'] = $this->config->get('tg_eros_cp_totop');
		}	
		
		$config_data = array(
		'styling_show',
		'custom_background_color',
		'custom_border_color',
		'custom_thumbs_color',
		'custom_background_img',
		'text_color',
		'link_color',
		'link_hover_color',
		'menu_color',
		'menu_hover_color',
		'menu_subcategory_color',
		'menu_subcategory_hover_color',
		'menu_subcategory_bg_color',
		'content_font_name',
		'h1_font_name',
		'content_text_color',
		'content_text_color2',
		'content_header_color',
		'price_color',
		'price_old_color',
		'footer_header_color',
		'footer_text_color',
		'footer_default_text_color'
		
		);
		
		
		foreach ($config_data as $conf) {
			if (isset($this->request->post[$conf])) {
				$this->data[$conf] = $this->request->post[$conf];
			} else {
				$this->data[$conf] = $this->config->get($conf);
			}
		}
		
			
		$this->template = 'module/tg_eros_cp.tpl';
		$this->children = array(
			'common/header',	
			'common/footer'	
		);
		
		$this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/tg_eros_cp')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}
	
	
	
	
}
?>
