<?php

require dirname(__FILE__).'/init.inc.php';
global $_tpl;
//在执行PHP代码之前，就应该跳转到缓存文件
$_details = new DetailsAction($_tpl);
$_details->_action();
$_tpl->display('details.tpl');
?>