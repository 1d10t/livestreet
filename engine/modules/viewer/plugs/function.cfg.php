<?php
/*-------------------------------------------------------
*
*   LiveStreet Engine Social Networking
*   Copyright © 2008 Mzhelskiy Maxim
*
*--------------------------------------------------------
*
*   Official site: www.livestreet.ru
*   Contact e-mail: rus.engine@gmail.com
*
*   GNU General Public License, version 2:
*   http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
*
---------------------------------------------------------
*/

/**
 * Плагин для смарти
 * Позволяет получать данные из конфига
 *
 * @param   array $aParams
 * @param   Smarty $oSmarty
 * @return  string
 */
function smarty_function_cfg($aParams,&$oSmarty) {	
	if(empty($aParams['name'])) {
<<<<<<< HEAD
		trigger_error("Config: missing 'name' parametr",E_USER_WARNING);
=======
		trigger_error("Config: missing 'name' parametr");
>>>>>>> branch 'master' of git@github.com:1d10t/livestreet.git
		return ;
	}
	require_once(Config::Get('path.root.engine').'/lib/internal/ConfigSimple/Config.class.php');
	if(!isset($aParams['instance'])) {
		$aParams['instance'] = Config::DEFAULT_CONFIG_INSTANCE;
	}
	
	/**
	 * Возвращаем значение из конфигурации
	 */
	return Config::Get($aParams['name'],$aParams['instance']);
}
?>
