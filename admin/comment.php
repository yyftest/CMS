<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
Validate::checkSession();
Validate::checkPremission('8','警告：该权限无法管理评论！');
global $_tpl;
$_comment = new CommentAction($_tpl);//入口，将$_tpl传入ManageAction.class.php的_construct()方法。
$_comment->_action();
$_tpl->display('comment.tpl');
?>