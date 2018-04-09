<?php

require dirname(__FILE__).'/init.inc.php';
global $_tpl;
$_list = new RegisterAction($_tpl);
$_list->_action();
$_tpl->display('register.tpl');

?>