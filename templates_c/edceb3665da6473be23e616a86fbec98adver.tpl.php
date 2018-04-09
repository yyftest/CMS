<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>main</title>
<link rel="stylesheet" type="text/css" href="../style/admin.css" />
<script type="text/javascript" src="../js/admin_adver.js"></script>
</head>
<body id="main">

<div class="map">
	管理首页 &gt;&gt; 内容管理 &gt;&gt; <strong id="title"><?php echo $this->_vars['title'];?></strong>
</div>


<ol>
    <li><a href="adver.php?action=show" class="selected">广告列表</a></li>
    <li><a href="adver.php?action=add">新增广告</a></li>
    <?php if(@$this->_vars['update']){ ?>
    <li><a href="adver.php?action=update&id=<?php echo $this->_vars['id'];?>">修改广告</a></li>
    <?php } ?>
</ol>



<?php if(@$this->_vars['show']){ ?>
<table cellspacing="0">
	<tr><th>编号</th><th>广告标题</th><th>广告链接</th><th>广告类型</th><th>是否前台广告</th><th>操作</th></tr>
	<?php if(@$this->_vars['AllAdver']){ ?>
	<?php foreach($this->_vars['AllAdver'] as $key=>$value){?>
	<tr>
		<td><script type="text/javascript">document.write(<?php echo $key+1 ?>+<?php echo $this->_vars['num'];?>);</script></td>
		<td><?php echo $value->title ?></td>
		<td><?php echo $value->link ?></td>
		<td><?php echo $value->type ?></td>
		<td><?php echo $value->state ?></td>
		<td><a href="adver.php?action=update&id=<?php echo $value->id ?>">查看并修改</a> | <a href="adver.php?action=delete&id=<?php echo $value->id ?>" onclick="return confirm('你真的要删除这个广告吗？') ? true : false">删除</a></td>
	</tr>
	<?php }?>
    <tr><td colspan="6" style="color:orange;">（*任何广告服务的操作，都必须生成js文件，方可在前台更新）</td></tr>
    <tr><td colspan="6">
			<input type="button" value="生成文字广告js" onclick="javascript:location.href='?action=text'" />
			<input type="button" value="生成头部广告js" onclick="javascript:location.href='?action=header'" />
			<input type="button" value="生成侧栏广告js" onclick="javascript:location.href='?action=sidebar'" />
	</td></tr>
	<?php }else{ ?>
	<tr><td colspan="6">对不起，没有任何数据</td></tr>
	<?php } ?>
</table>
<form method="get" action="">
<div id="page">
	<?php echo $this->_vars['page'];?>
    <input type="hidden" name="action" value="show" />
	<select name="kind" style="background:#fff;border:1px solid #ccc;">
		<option value="0">默认全部</option>
		<option value="1">文字广告</option>
		<option value="2">头部广告690x80</option>
		<option value="3">侧栏广告270x200</option>
	</select>
	<input type="submit" value="查询" />
</div>
</form>
<?php } ?>


<?php if(@$this->_vars['add']){ ?>
<form method="post" name="content">
	<input type="hidden" name="adv" />
	<table cellspacing="0" class="left">
		<tr><td>广告类型：<input type="radio" name="type" onclick="adver(1)" value="1" checked="checked" /> 文字广告
									<input type="radio" name="type" onclick="adver(2)" value="2" /> 头部广告690x80
									<input type="radio" name="type" onclick="adver(3)" value="3" /> 侧栏广告270x200
		</td></tr>
		<tr><td>广告标题：<input type="text" name="title" class="text" /> (* 广告标题不得小于两位，不得大于20位！)</td></tr>
		<tr><td>广告链接：<input type="text" name="link" class="text" /> (* 广告链接不得为空！)</td></tr>
		<tr id="thumbnail" style="display:none;"><td>广告图片：<input type="text" name="thumbnail" class="text" readonly="readonly" /> 
									<span id="up"></span>
									<img name="pic" style="display:none;" /> ( * 必须是jpg,gif,png，并且200k内)
		</td></tr>
		<tr><td><textarea name="info"></textarea> (* 描述不得大于200位！)</td></tr>
		<tr><td><input type="submit" name="send" value="新增广告" onclick="return checkAdver();" class="submit level" /> [ <a href="<?php echo $this->_vars['prev_url'];?>">返回列表</a> ]</td></tr>
	</table>
</form>
<?php } ?>

<?php if(@$this->_vars['update']){ ?>
<form method="post" name="content">
	<input type="hidden" name="id" value="<?php echo $this->_vars['id'];?>" />
    <input type="hidden" name="prev_url" value="<?php echo $this->_vars['prev_url'];?>" />
	<input type="hidden" name="adv" />
	<table cellspacing="0" class="left">
		<tr><td>广告类型：<input type="radio" name="type" onclick="adver(1)" value="1" <?php echo $this->_vars['type1'];?> /> 文字广告
						<input type="radio" name="type" onclick="adver(2)" value="2" <?php echo $this->_vars['type2'];?> /> 头部广告690x80
						<input type="radio" name="type" onclick="adver(3)" value="3" <?php echo $this->_vars['type3'];?> /> 侧栏广告270x200
		</td></tr>
		<tr><td>广告标题：<input type="text" name="title" value="<?php echo $this->_vars['titlec'];?>" class="text" /> (* 广告标题不得小于两位，不得大于20位！)</td></tr>
		<tr><td>广告链接：<input type="text" name="link" value="<?php echo $this->_vars['link'];?>" class="text" /> (* 广告链接不得为空！)</td></tr>
		<tr id="thumbnail" <?php echo $this->_vars['pic'];?> ><td>广告图片：<input type="text" name="thumbnail" value="<?php echo $this->_vars['thumbnail'];?>" class="text" readonly="readonly" /> 
									<span id="up"><?php echo $this->_vars['up'];?></span>
									<img name="pic" src="<?php echo $this->_vars['thumbnail'];?>" style="display:block;" /> ( * 必须是jpg,gif,png，并且200k内)
		</td></tr>
		<tr><td><textarea name="info"><?php echo $this->_vars['info'];?></textarea> (* 描述不得大于200位！)</td></tr>
        <tr><td>是否前台：
        				<input type="radio" name="state" value="1" <?php echo $this->_vars['left_state'];?> />是
        				<input type="radio" name="state" value="0" <?php echo $this->_vars['right_state'];?> />否
        </td></tr>
		<tr><td><input type="submit" name="send" value="修改广告" onclick="return checkAdver();" class="submit level" /> [ <a href="<?php echo $this->_vars['prev_url'];?>">返回列表</a> ]</td></tr>
	</table>
</form>
<?php } ?>








</body>
</html>