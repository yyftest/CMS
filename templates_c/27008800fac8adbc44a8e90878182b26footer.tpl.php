<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<div id="link">
    <h2>友情链接<span><a href="friendlink.php?action=frontshow" target="_blank">所有链接</a> | <a href="friendlink.php?action=frontadd" target="_blank">申请加入</a></span></h2>
    <ul>
    <?php if(@$this->_vars['text']){ ?>
    <?php foreach($this->_vars['text'] as $key=>$value){?>
        <li><a href="<?php echo $value->weburl ?>" target="_blank"><?php echo $value->webname ?></a></li>
    <?php }?>
    <?php } ?>    
    </ul>
    <dl>
    <?php if(@$this->_vars['logo']){ ?>
    <?php foreach($this->_vars['logo'] as $key=>$value){?>
        <dd><a href="<?php echo $value->weburl ?>" target="_blank"><img src="<?php echo $value->logourl ?>" alt="<?php echo $value->webname ?>"/></a></dd>
    <?php }?>
    <?php } ?>   
    </dl>
    
</div>
<div id="footer">
    <p>Powered by <span>YC60.com</span>(C)2004-2012 DesDev Inc.</p>
    <p>Copyright(C)2004-2012 YC60CMS.<span>瓢城Web俱乐部</span> 版权所有</p>
</div>

</body>
</html>