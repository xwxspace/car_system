<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css"
	href="static/css/template/reset.css?2014-03-07-1" media="all" />

<link rel="stylesheet" type="text/css"
	href="static/css/template/weimob-ui-1-1.css?2014-03-07-1" media="all" />

<link rel="stylesheet" type="text/css"
	href="static/css/template/common.css?2014-03-07-1" media="all" />

<link rel="stylesheet" type="text/css"
	href="static/css/template/list-5.css?2014-03-07-1" media="all" />

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
</head>
<body onselectstart="return true;" ondragstart="return false;">
	<link rel="stylesheet" type="text/css"
		href="wm-xin-a/font-awesome.css?v=2014032314" media="all" />

	<div class="weimob-page">
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
		<div class="top_bar footer_bar">
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
					<li><a href="javascript:$('#shareCover').toggleClass('on');">
							<p class="share"></p> <span>分享</span>
					</a></li>
				</ul>
			</div>
			</section>
		</div>

		<!--
分享前控制
-->
		<script>
			document
					.addEventListener(
							'WeixinJSBridgeReady',
							function onBridgeReady() {
								window.shareData = {
									"imgUrl" : "img/static/70/68/52/image/20131220/20131220171802_13989.jpg",
									"timeLineLink" : "weisite/list?pid=24137&bid=32449&wechatid=fromUsername&ltid=51242&wxref=mp.weixin.qq.com",
									"sendFriendLink" : "weisite/list?pid=24137&bid=32449&wechatid=fromUsername&ltid=51242&wxref=mp.weixin.qq.com",
									"weiboLink" : "weisite/list?pid=24137&bid=32449&wechatid=fromUsername&ltid=51242&wxref=mp.weixin.qq.com",
									"tTitle" : "惊喜活动",
									"tContent" : "惊喜活动",
									"fTitle" : "惊喜活动",
									"fContent" : "惊喜活动",
									"wContent" : "惊喜活动"
								};

								// 发送给好友
								WeixinJSBridge
										.on(
												'menu:share:appmessage',
												function(argv) {
													WeixinJSBridge
															.invoke(
																	'sendAppMessage',
																	{
																		"img_url" : window.shareData.imgUrl,
																		"img_width" : "640",
																		"img_height" : "640",
																		"link" : window.shareData.sendFriendLink,
																		"desc" : window.shareData.fContent,
																		"title" : window.shareData.fTitle
																	},
																	function(
																			res) {
																		_report(
																				'send_msg',
																				res.err_msg);
																	})
												});

								// 分享到朋友圈
								WeixinJSBridge
										.on(
												'menu:share:timeline',
												function(argv) {
													WeixinJSBridge
															.invoke(
																	'shareTimeline',
																	{
																		"img_url" : window.shareData.imgUrl,
																		"img_width" : "640",
																		"img_height" : "640",
																		"link" : window.shareData.timeLineLink,
																		"desc" : window.shareData.tContent,
																		"title" : window.shareData.tTitle
																	},
																	function(
																			res) {
																		_report(
																				'timeline',
																				res.err_msg);
																	});
												});

								// 分享到微博
								WeixinJSBridge.on('menu:share:weibo', function(
										argv) {
									WeixinJSBridge.invoke('shareWeibo', {
										"content" : window.shareData.wContent,
										"url" : window.shareData.weiboLink,
									}, function(res) {
										_report('weibo', res.err_msg);
									});
								});
							}, false)
		</script>
		<div class="weimob-content">
			<div class="weimob-list">
				<a class="weimob-list-item" href="car_surprise_detail.jsp">
					<div class="weimob-list-item-title">积分兑换来啦！</div>
					<div class="weimob-list-item-image"
						style="background-image: url(img/static/70/68/52/image/20140221/20140221103157_31110.jpg)"></div>
					<div class="weimob-list-item-line">
						<div class="weimob-list-item-summary">超值积分兑换，不用钱就能买到您满意的物品！</div>
					</div>
					<div class="weimob-list-item-icon icon-arrow-r"></div>
				</a>
			</div>
		</div>
	</div>
	<footer style="overflow:visible;">
	<div class="weimob-copyright" style="padding-bottom: 50px;">
		<a
			href="weisite/home?pid=24137&bid=32449&wechatid=fromUsername&wxref=mp.weixin.qq.com">© 理工汽车</a>
	</div>
	<span class="weimob-support" style="display: none;">©计本11-2班提供</span> </footer>
	<div mark="stat_code" style="width: 0px; height: 0px; display: none;">
	</div>
</body>

</body>
</html>


