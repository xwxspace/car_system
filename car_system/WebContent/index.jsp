<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="static/css/template/reset.css?2014-03-07-1" media="all" />
		
		<link rel="stylesheet" type="text/css" href="static/css/template/snower.css?2014-03-07-1" media="all" />
		
		<link rel="stylesheet" type="text/css" href="static/css/template/common.css?2014-03-07-1" media="all" />
		
		<link rel="stylesheet" type="text/css" href="static/css/template/home-19.css?2014-03-07-1" media="all" />
		
		<link rel="stylesheet" type="text/css" href="static/css/template/home-menu-2.css?2014-03-07-1" media="all" />
		
		<script type="text/javascript" src="static/src/template/maivl.js?2014-03-07-1"></script>
		
		<script type="text/javascript" src="static/src/jQuery.js?2014-03-07-1"></script>
		
		<script type="text/javascript" src="static/src/template/swipe.js?2014-03-07-1"></script>
		
		<script type="text/javascript" src="static/src/template/zepto.js?2014-03-07-1"></script>
		
		<title>  </title>
		
		<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
		<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
		<!-- Mobile Devices Support @begin -->
		<meta content="application/xhtml+xml;charset=UTF-8"	http-equiv="Content-Type">
		<meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
		<meta content="no-cache" http-equiv="pragma">
		<meta content="0" http-equiv="expires">
		<meta content="telephone=no, address=no" name="format-detection">
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<!-- apple devices fullscreen -->
		<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
		<!-- Mobile Devices Support @end -->
		<link rel="shortcut icon" href="static/img/favicon.ico" />
	</head>
	<body onselectstart="return true;" ondragstart="return false;">
	
		<link rel="stylesheet" type="text/css" href="wm-xin-a/font-awesome.css?v=2014032314" media="all" />
	
		<div class="body">
		<!-- 用户分类管理  -->
			<section>
				<ul class="list_ul">
				<!-- 
					<li>
						<a href="index_xc.jsp">
							<figure>
								<div>
									<img src="img/static/70/68/52/image/20131223/20131223144806_92304.jpg" />
								</div>
								<figcaption> 
									新车销售
									<p>
										新车销售
									</p>
								</figcaption> 
							</figure>
						</a>
					</li>
					<li>
						<a href="car_try.jsp"> 
							<figure>
								<div>
									<img src="img/static/70/68/52/image/20131204/20131204111443_16383.jpg" />
								</div>
								<figcaption> 
									试乘试驾
									<p>
										试乘试驾
									</p>
								</figcaption> 
							</figure>
						</a>
					</li>
					 -->
					<li>
						<a href="car_surprise.jsp"> 
							<figure>
								<div>
									<img src="img/static/70/68/52/image/20131220/20131220171802_13989.jpg" />
								</div>
								<figcaption> 
									惊喜活动
									<p>
										Surprise
									</p>
								</figcaption> 
							</figure>
						</a>
					</li>
					<li>
						<a href="car_try.jsp"> 
							<figure>
								<div>
									<img src="img/static/70/68/52/image/20131206/20131206165645_50337.jpg" />
								</div>
								<figcaption> 
									汽车知道
									<p>
										Know
									</p>
								</figcaption> 
							</figure>
						</a>
					</li>
					<li>
						<a href="queryBlogAction"> 
							<figure>
								<div>
									<img src="img/static/70/68/52/image/20131220/20131220134758_94272.jpg" />
								</div>
								<figcaption> 
									汽车博客
									<p>
										Blog
									</p>
								</figcaption> 
							</figure>
						</a>
					</li>
					<!-- 
					<li>
						<a href="car_help.jsp"> 
							<figure>
								<div>
									<img src="img/static/70/68/52/image/20131204/20131204112651_18224.jpg" />
								</div>
								<figcaption> 
									24小时救援
									<p>
										24小时救援
									</p>
								</figcaption>
							</figure>
						</a>
					</li>
					 -->
					<!-- 判断是否登陆 -->
					<c:if test="${status == null || ststus == '' }">
						<li>
							<a href="login.jsp"> 
								<figure>
									<div>
										<img src="img/static/70/68/52/image/20131220/20131220135109_72949.jpg" />
									</div>
									<figcaption> 
										登陆
										<p>
											Login
										</p>
									</figcaption> 
								</figure>
							</a>
						</li>
						<li>
							<a href="register.jsp"> 
								<figure>
									<div>
										<img src="img/static/70/68/52/image/20131204/20131204114037_44293.jpg" />
									</div>
									<figcaption> 
										加入我们
									<p>
										Join Us
									</p>
									</figcaption> 
								</figure>
							</a>
						</li>
					</c:if>
					<c:if test="${status == 'login' }">
						<li>
							<a href="logout.jsp"> 
								<figure>
									<div>
										<img src="img/static/70/68/52/image/20131220/20131220135109_72949.jpg" />
									</div>
									<figcaption> 
										欢迎&nbsp;&nbsp;${username }
										<p>
											Welcome！
										</p>
									</figcaption> 
								</figure>
							</a>
						</li>
					</c:if>
				</ul>
			</section>
		</div>
	
	
		<!-- 导航菜单   后台设置的快捷菜单 -->
		<div class="top_bar footer_bar" style="-webkit-transform: translate3d(0, 0, 0)">
			<nav>
			<ul class="top_menu">
				<li onClick="location.reload();"><span></span></li>
				<!-- 首页：刷新 -->
				<li><a href="tel:027-65681888"> <span class="icon-phone"></span><label
						class="homemenu_text">电话</label>
				</a></li>
			</ul>
			</nav>
	
	
		</div>
	
	
		<footer style="overflow:visible;">
			<div class="weimob-copyright" style="padding-bottom: 50px;">
				<a href="weisite/home?pid=24137&bid=32449&wechatid=fromUsername&wxref=mp.weixin.qq.com">© 理工汽车</a>
			</div>
		</footer>
		<div mark="stat_code" style="width: 0px; height: 0px; display: none;" ></div>
	
	</body>
</html>


