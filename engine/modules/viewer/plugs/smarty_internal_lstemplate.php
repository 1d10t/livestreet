<?php 

class Smarty_Internal_LSTemplate
extends Smarty_Internal_Template
{
	
	public function __construct($template_resource, $smarty, $_parent = null, $_cache_id = null, $_compile_id = null, $_caching = null, $_cache_lifetime = null){
		parent::__construct($template_resource, $smarty, $_parent, $_cache_id, $_compile_id, $_caching, $_cache_lifetime);
		$this->template_resource = Engine::getInstance()->Plugin_GetTemplateString($template_resource);
	}
	
}

?>