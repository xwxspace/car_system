<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css"
	href="static/css/template/reset.css?2014-03-07-1" media="all" />

<link rel="stylesheet" type="text/css"
	href="static/css/template/common.css?2014-03-07-1" media="all" />

<link rel="stylesheet" type="text/css"
	href="static/css/template/peak-3.css?2014-03-07-1" media="all" />

<link rel="stylesheet" type="text/css"
	href="static/css/template/home-menu-6.css?2014-03-07-1" media="all" />

<script type="text/javascript" src="static/src/jQuery.js?2014-03-07-1"></script>

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
	<link rel="stylesheet" type="text/css"
		href="wm-xin-a/font-awesome.css?v=2014032314" media="all" />
	<div class="body" style="padding-bottom: 60px;">
		<article id="shareCover" class="toshare"
			onclick="$('#shareCover').toggleClass('on')">
		<table>
			<tr>
				<td colspan="2" style="text-align: right;"><img
					src="static/img/share_1.png?v=2014-03-07-1"
					style="width: 120px !important;" /> <img
					src="static/img/share_2.png?v=2014-03-07-1"
					style="width: 30px !important;" /></td>
			</tr>
			<tr>
				<td style="width: 50%;"><img
					src="static/img/share_4.png?v=2014-03-07-1" />
					<div>发送给朋友</div></td>
				<td><img src="static/img/share_3.png?v=2014-03-07-1" />
					<div>分享到朋友圈</div></td>
			</tr>
		</table>
		</article>
		<script>
			window.addEventListener("DOMContentLoaded", function() {
				var nav = document.querySelectorAll(".nav_10")[0];

				var evts = {
					handleEvent : function(evt) {
						if ("A" == evt.target.nodeName) {
							evt.target.classList.toggle("active");
						}
					}
				}
				nav.addEventListener("mousedown", evts, false);
				nav.addEventListener("mouseup", evts, false);
				nav.addEventListener("touchstart", evts, false);
				nav.addEventListener("touchend", evts, false);
			});
		</script>
		<div class="top_bar">
			<section>
			<div class="nav_10">
				<ul class="box">
					<li><a href="javascript:history.go(-1);">
							<p class="back2"></p> <span>返回</span>
					</a></li>
					<li><a href="tel:027-65681888">
							<p class="tel"></p> <span>联系电话</span>
					</a></li>
					<li><a href="index.jsp">
							<p class="home"></p> <span>首页</span>
					</a></li>
					<li><a href="addBlog.jsp">
							<p class="share"></p> <span>撰写博客</span>
					</a></li>
				</ul>
			</div>
			</section>
		</div>
		<section class="news_article"> <header>
		<h3 style="font-size: 14px;">理工汽车博客</h3>
		<small class="gray">让你享受售前售后优质的服务</small> </header> <article>
		<p>
			<br />
		<p>
			<a href="queryBlogById?id=${blog.blogid }"> <font
				style="text-align: center; font-size: x-large; font-weight: bold;">
					${blog.blogtitle } </font>
			</a> <br />
		</p>
		<p>${blog.blogtext }</p>
		<p>
			<br />
		</p>

		</article> </section>
		<section style="width:95%; margin:0px auto;">
		<div id="mcover"
			onclick="document.getElementById('mcover').style.display='';"
			style="display: none;">
			<img src="static/img/guide.png?=2014-03-07-1">
		</div>
		<div class="text" id="content">
			<div id="mess_share">
				<div id="share_1">
					<button class="button2"
						onclick="document.getElementById('mcover').style.display='block';">
						<img src="static/img/icon_msg.png?=2014-03-07-1">&nbsp;发送给朋友
					</button>
				</div>
				<div id="share_2">
					<button class="button2"
						onclick="document.getElementById('mcover').style.display='block';">
						<img src="static/img/icon_timeline.png?=2014-03-07-1">&nbsp;分享到朋友圈
					</button>
				</div>
				<div class="clr"></div>
			</div>
		</div>
		</section>
		<div style="padding-bottom: 0 !important;">
			<a href="javascript:window.scrollTo(0,0);"
				style="font-size: 12px; margin: 5px auto; display: block; color: #fff; text-align: center; line-height: 35px; background: #333; margin-bottom: -10px;">返回顶部</a>
		</div>



	</div>
	<footer style="overflow:visible;">
	<div class="weimob-copyright" style="padding-bottom: 50px;">
		<a
			href="weisite/home?pid=24137&bid=32449&wechatid=fromUsername&wxref=mp.weixin.qq.com">©
			理工汽车</a>
	</div>
	<span class="weimob-support" style="display: none;">©计本11-2班</span> </footer>
	<div mark="stat_code" style="width: 0px; height: 0px; display: none;">
	</div>
</body>


</body>
</html>
