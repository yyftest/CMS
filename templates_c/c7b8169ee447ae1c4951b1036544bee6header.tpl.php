<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>
<script type="text/javascript" src="confing/static.php?type=header"></script>
<div id="top">
    <?php echo $this->_vars['header'];?>
    <script type="text/javascript" src="js/text_adver.js"></script>
</div>
<div id="header">
    <h1><a href="###"><?php echo $this->_vars['webname'];?></a></h1>
    <div class="adver"><script type="text/javascript" src="js/header_adver.js"></script></div>
</div>
</div>
<div id="nav">
    <ul>
        <li><a href="./">首页</a></li>
        <?php if(@$this->_vars['FrontNav']){ ?>
        <?php foreach($this->_vars['FrontNav'] as $key=>$value){?>
        <li><a href="list.php?id=<?php echo $value->id ?>"><?php echo $value->nav_name ?></a></li>
        <?php }?>
        <?php } ?>
   </ul>
</div>
<div id="search">
    <form method="get" action="search.php">
        <select name="type">
            <option selected="selected" value="1">按标题</option>
            <option value="2">按关键字</option>
        </select>
        <input type="text" name="inputkeyword" class="text" /> 
        <input type="submit" class="submit" value="搜索" />
    </form>
    <strong>TAG标签：</strong>
    <ul>
    	<?php if(@$this->_vars['FiveTag']){ ?>
		<?php foreach($this->_vars['FiveTag'] as $key=>$value){?>
		<li><a href="search.php?type=3&inputkeyword=<?php echo $value->tagname ?>"><?php echo $value->tagname ?>(<?php echo $value->count ?>)</a></li>
		<?php }?>
		<?php } ?>
    </ul>
</div>
<body>
</body>
</html>