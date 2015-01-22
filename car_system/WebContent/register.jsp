<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css"
	href="static/css/onlinebooking.css?2014-03-07-1" media="all" />

<link rel="stylesheet" type="text/css"
	href="static/css/datepicker.css?2014-03-07-1" media="all" />

<link rel="stylesheet" type="text/css"
	href="static/css/template/weimob-ui-1-1.css?2014-03-07-1" media="all" />

<link rel="stylesheet" type="text/css"
	href="static/css/template/common.css?2014-03-07-1" media="all" />

<script type="text/javascript" src="static/src/jQuery.js?2014-03-07-1"></script>

<script type="text/javascript"
	src="static/src/jquery-ui.js?2014-03-07-1"></script>
<title>汽车行业微官网模板 - 源码之家</title>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"
	name="viewport">
<!-- Mobile Devices Support @begin -->
<meta content="application/xhtml+xml;charset=UTF-8"
	http-equiv="Content-Type">
<meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
<meta content="no-cache" http-equiv="pragma">
<meta content="0" http-equiv="expires">
<meta content="telephone=no, address=no" name="format-detection">
<meta name="apple-mobile-web-app-capable" content="yes" />
<!-- apple devices fullscreen -->
<meta name="apple-mobile-web-app-status-bar-style"
	content="black-translucent" />
<!-- Mobile Devices Support @end -->
<link rel="shortcut icon" href="static/img/favicon.ico" />
<style>
img {
	max-width: 100% !important;
}
</style>
</head>
<body onselectstart="return true;" ondragstart="return false;">
<body id="onlinebooking">
	<div class="masklayer" ontouchmove="return true;"
		onclick="$(this).toggleClass('on');">
		<script>
			
		</script>
	</div>

	<!--后台可控制是否显示-->
	<ul class="round">
		<li>
			<h2>注册说明</h2>
			<div class="text">试乘试驾是让您彻身的体会和驾乘感受汽车的行驶性能和操控性能，是您购车中不容忽视的因素，而且，由于汽车的行驶性能与操控性能难以用数据来衡量，试驾也就成了让您亲身体验产品行驶性能和操控性能的唯一重要途径。您可以通过切身体会和驾驶的感受以及销售顾问的介绍，加深对产品的了解，可以让您更好的感受到车在直路，过弯，上坡，下坡，颠簸路面和高速路的全面体验。通过试乘试驾的过程，让您短时间了解我们的车型。您可用微信预约试乘试驾，这样可以节约您的时间，无需等待！</div>
		</li>
	</ul>

	<!--后台可控制是否显示-->
	<ul class="round">
		<li class="addr"><a href="http://j.map.baidu.com/X5GNk"><span>地址：
					桂林理工大学（请点击导航）</span></a></li>
		<li class="tel"><a href="tel:110（请点击拨打）"><span>联系电话：
					110（请点击拨打）</span></a></li>
	</ul>

	<ul class="round roundyellow" style="display: none;">
		<li class="userinfo"><a
			href="Webreserve/PerfectInfo/wechatid//id//rid/2664"><span>请完善个人资料再填表单</span></a></li>
	</ul>

	<!--粉丝填写过的信息的，直接就显示名字电话，粉丝没有填写过信息的话，这里就直接留空让粉丝填写-->
	<form action="registerAction" method="post" onsubmit="">
		<ul class="round">
			<li class="title mb"><span class="none">请认真填写表单</span></li>
			<li class="nob"><input name="formhash" id="formhash"
				value="2be3071a" type="hidden">
				<table class="kuang" border="0" cellpadding="0" cellspacing="0"
					width="100%">
					<tr>
						<th>联系人</th>
						<td><input name="realName" class="px" id="truename" value=""
							placeholder="请输入您的真实姓名" type="text"></td>
					</tr>
				</table></li>
			<li class="nob">
				<table class="kuang" border="0" cellpadding="0" cellspacing="0"
					width="100%">
					<tr>
						<th>联系电话</th>
						<td><input name="phone" class="px" id="tel" value=""
							placeholder="请输入您的电话" type="text"></td>
					</tr>
				</table>
			</li>
			<li class="nob">
				<table class="kuang" border="0" cellpadding="0" cellspacing="0"
					width="100%">
					<tr>
						<th>用户名</th>
						<td><input name="username" class="px" id="tel"
							placeholder="请输入您想要注册的用户名" type="text"></td>
					</tr>
				</table>
			</li>
			<li class="nob">
				<table class="kuang" border="0" cellpadding="0" cellspacing="0"
					width="100%">
					<tr>
						<th>密码</th>
						<td><input name="password" class="px" id="tel"
							placeholder="请输入您的密码" type="password"></td>
					</tr>
				</table>
			</li>


			<li class="nob">
				<table class="kuang" border="0" cellpadding="0" cellspacing="0"
					width="100%">
					<tr>
						<th>确认密码</th>
						<td><input name="repassword" class="px" id="tel"
							placeholder="请再次输入您的密码" type="password"></td>
					</tr>
				</table>
			</li>
			<li class="nob">
				<table class="kuang" border="0" cellpadding="0" cellspacing="0"
					width="100%">
					<tr>
						<th>爱车车型</th>
						<td><select name="carType" class="download dropdown-select">
								<option value="经典全顺">经典全顺</option>
								<option value="新时代全顺">新时代全顺</option>
								<option value="驭胜">驭胜</option>
								<option value="域虎">域虎</option>
								<option value="凯运">凯运</option>
								<option value=""></option>
								<option value="凯威">凯威</option>
								<option value="凯锐">凯锐</option>
								<option value="顺达">顺达</option>
								<option value="宝威">宝威</option>
								<option value="宝典">宝典</option>
								<option value="陆风x5">陆风x5</option>
								<option value="陆风x6">陆风x6</option>
								<option value="陆风x8">陆风x8</option>
								<option value="陆风x9">陆风x9</option>
						</select></td>
					</tr>
				</table>
			</li>

			<li class="nob">
				<table class="kuang" border="0" cellpadding="0" cellspacing="0"
					width="100%">
					<tr>
						<th class="thtop" valign="top">备注</th>
						<td>
							<textarea name="info" class="pxtextarea" style="height: 99px; overflow-y: visible" id="info" placeholder="请输入备注信息" ></textarea> 
							<input type="hidden" name="uid" id="uid" value="" />
							<input type="hidden" name="rid"	id="rid" value="2664" /> 
							<input type="hidden" name="aid"	id="aid" value="24137" />
						</td>
					</tr>
				</table>
			</li>

		</ul>
		<div class="footReturn">
			<input id="showcard" class="submit" value="确认注册" type="submit" style="width: 100%;" />
			<div class="window" id="windowcenter">
				<div id="title" class="wtitle">
					确认注册<span class="close" id="alertclose"></span>
				</div>
				<div class="content">
					<div id="txt"></div>
				</div>
			</div>
		</div>
	</form>



	<footer
		style="text-align:center; color:#ffd800;margin-right:20px;margin-top:0px;">
	<a href="#">©理工汽车</a></footer>
</body>
<div mark="stat_code" style="width: 0px; height: 0px; display: none;">
</div>
</body>


</body>
</html>