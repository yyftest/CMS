<?php
require substr(dirname(__FILE__),0,-7).'/init.inc.php';
if(isset($_GET['type'])){
	//查看了他的源代码，他的名字是：upload
	$_fileupload = new FileUpload('upload',$_POST['MAX_FILE_SIZE']);
	$_ckefn = $_GET['CKEditorFuncNum'];
	$_path = $_fileupload->getPath();
	$_img = new Image($_path);
	$_img->ckeImg(650,0);
	echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($_ckefn,\"$_path\",'图片上传成功！');</script>";
}else{
	Tool::alertBack('警告：由于非法操作导致上传失败！');
}
?>