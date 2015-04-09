<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="zh">

<head>
<jsp:include page="../../common/include.jsp"/>
<style type="text/css">
/* ======= Header ======= */
.header {
  padding: 0;
  background: #17baef;
  color: #fff;
  position: fixed;
  width: 100%;
  border-top: 0;
  z-index: 10;
  top: 0;
}
.header.navbar-fixed-top {
  background: #fff;
  z-index: 9999;
  -webkit-box-shadow: 0 0 4px rgba(0, 0, 0, 0.4);
  -moz-box-shadow: 0 0 4px rgba(0, 0, 0, 0.4);
  box-shadow: 0 0 4px rgba(0, 0, 0, 0.4);
}
.header.navbar-fixed-top .logo a {
  color: #17baef;
}
.header.navbar-fixed-top .main-nav .nav .nav-item a {
  color: #666666;
}
.header .logo {
  margin: 0;
  font-size: 26px;
  padding-top: 10px;
}
.header .logo a {
  color: #fff;
}
.header .logo a:hover {
  text-decoration: none;
}
.header .main-nav button {
  background: #074f66;
  color: #fff !important;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  -ms-border-radius: 4px;
  -o-border-radius: 4px;
  border-radius: 4px;
  -moz-background-clip: padding;
  -webkit-background-clip: padding-box;
  background-clip: padding-box;
}
.header .main-nav button:focus {
  outline: none;
}
.header .main-nav button .icon-bar {
  background-color: #fff;
}
.header .main-nav .navbar-collapse {
  padding: 0;
}
.header .main-nav .nav .nav-item {
  font-weight: normal;
  margin-right: 30px;
  font-family: 'Montserrat', sans-serif;
}
.header .main-nav .nav .nav-item.active a {
  color: #17baef;
  background: none;
}
.header .main-nav .nav .nav-item a {
  color: #0a7396;
  -webkit-transition: none;
  -moz-transition: none;
  -ms-transition: none;
  -o-transition: none;
  font-size: 14px;
  padding: 15px 10px;
}
.header .main-nav .nav .nav-item a:hover {
  color: #074f66;
  background: none;
}
.header .main-nav .nav .nav-item a:focus {
  outline: none;
  background: none;
}
.header .main-nav .nav .nav-item a:active {
  outline: none;
  background: none;
}
.header .main-nav .nav .nav-item.active {
  color: #17baef;
}
.header .main-nav .nav .nav-item.last {
  margin-right: 0;
}

.banner {
background: url(${pageContext.request.contextPath}/webresource/images/xxxxx.jpg) top center;
height: 265px;
overflow: hidden;
}

@media (max-width: 767px) {
  .header .main-nav button {
    margin-right: 0;
  }
  .header .main-nav .navbar-collapse {
    padding-left: 15px;
    padding-right: 15px;
  }
  .banner {
  display: none;
	}
}

.bloglist { width: 740px; overflow: hidden; background: url(../images/r_line.jpg) repeat-y right; }
.bloglist h3 { margin: 20px 0 10px 0; color: #333 }
.bloglist h3:first-child a {color: #f00;background: url(/skin/blog/images/new.gif) no-repeat 330px;display: block;}
.bloglist figure { float: left; width: 183px; }
.bloglist figure img { padding: 4px; border: #f4f2f2 1px solid; width: 175px; }
.bloglist ul { float: left; width: 520px; margin: 10px 0px 0 15px; line-height: 20px; }


/* <div class="section-inner">
	<div class="article">
		<h2 class="heading">博客之初</h2>
		<img class="img-responsive" src="${pageContext.request.contextPath}/webresource/images/projects/project-featured.png"/>
		<div class="summary">
			<p>Hello, World! 程序猿都懂的。我想做自己的网站有一段时间了，现在终于陆陆续续着手做了，有句话说得好，当你开始的时候最难的部分已经解决了，所以，开始吧……</p>
			<a title="博客之初" href="#" target="_blank" class="readmore">阅读全文&gt;&gt;</a>
		</div>
		<p class="info"><span>2015-02-25</span><span>作者：Jackson</span><span>个人博客：[<a href="/jstt/web/">网站建设</a>]</span></p>   
	</div>
</div>
 */
.section-inner .article { padding-top: 1rem; padding-bottom: 1rem; border-bottom: 0.1rem solid #ccc; }
.section-inner .article .heading {}
.section-inner .article img { width:30%; float:left; margin:0.5rem 0rem; }
.section-inner .article .summary { width:65%; float:right; }
.section-inner .article .info { clear:both; margin:0rem; color:#999; font-size: 1.5rem; }

.section-inner .article .summary a {
background: #FF6458;
color: #fff;
padding: 0.5rem 1rem;
float: right;
margin: 0rem;
font-size: 1rem;
text-decoration: none;
}

.container{
max-width:90rem;
}

.section-inner .article .summary a:hover{
background-color: #EB4437;
}

@media (max-width: 560px) {
.section-inner .article img { width:100%; float:none; margin:1rem 0; }
.section-inner .article .summary { width:100%; float:none; margin-bottom: 1rem; }
.section-inner .article .summary a { float:none; }
}

.explore-banner {
/* position: relative; */
overflow: hidden;
width: 100%;
color: #fff;
font-size: 14px;
margin-top:50px;
height: 220px;
}

.explore-banner .explore-bg {
/* position: absolute; */
width: 100%;
height: 100%;
text-align: left;
overflow: hidden;
}

.explore-banner .bg-gradient {
/* position: absolute; */
overflow: hidden;
z-index: 2;
height: 100%;
width: 100%;
min-width: 900px;
background-color: #999;
}

.explore-banner .bg-img {
overflow: hidden;
position: absolute;
margin-top: -50px;
width: 38%;
min-width: 600px;
min-height: 369px;
opacity: 0;
background-size: cover;
-webkit-transition: opacity .6s ease-in-out;
transition: opacity .6s ease-in-out;
}

.explore-banner .bg-img.load {
opacity: .7;
}

.wrapper {
position: relative;
margin: 0 auto;
border: 0;
}

.explore-banner .explore-info {
z-index: 2;
margin: 0 auto 20px auto;
text-align: center;
overflow: hidden;
}

.explore-banner .title {
margin: 25px 0 3px 0;
font-size: 32px;
font-family: "\5FAE\8F6F\96C5\9ED1","helvetica neue",arial,sans-serif;
font-weight: 500;
text-shadow: none;
}

.explore-banner .follow-explore {
margin-bottom: 15px;
}

.rbtn {
background: #E53E49;
background: linear-gradient( #E53E49, #D43636);
box-shadow: inset 0 1px 0 rgba(255,255,255,.08),0 1px 0 rgba(255,255,255,.3);
text-shadow: 0 -1px 0 rgba(0,0,0,.1);
color: #fff;
border: 1px solid #C90000;
}
.btn {
display: inline-block;
line-height: 1;
border-radius: 2px;
font-size: 14px;
padding: 0 12px;
height: 28px;
line-height: 28px;
background: #fff;
background: linear-gradient( #FAFAFA, #F2F2F2);
border: 1px solid #D9D9D9;
cursor: pointer;
text-decoration: none;
color: #444;
white-space: nowrap;
-moz-user-select: none;
-webkit-user-select: none;
user-select: none;
text-shadow: 0 1px 0 rgba(255,255,255,.5);
text-align: center;
}

.explore-banner .info {
display: block;
padding-bottom: 15px;
margin: 0 auto;
width: 35%;
}

.explore-banner .follow-title {
position: relative;
padding-bottom: 15px;
width: 300px;
margin: 0 auto;
}

.explore-banner .followers {
display: inline-block;
overflow: hidden;
max-width: 30%;
height: 48px;
}
.explore-banner .followers .icon.show, .explore-banner .followers .follower-item.show {
opacity: 1;
}
.explore-banner .followers .follower-item {
position: relative;
display: inline-block;
margin-right: 10px;
width: 48px;
opacity: 0;
transition: opacity .2s ease-in-out;
}
.explore-banner .followers .follower-item img {
width: 48px;
height: 48px;
vertical-align: middle;
border: 0;
border-radius: 50%;
}
</style>
</head>

<body>
    <!-- ******HEADER****** -->
    <header id="header" class="header">  
        <div class="container">            
            <h1 class="logo pull-left">
                <a class="scrollto" href="#promo">
                    <span class="logo-title">芝麻加糖</span>
                </a>
            </h1><!--//logo-->              
            <nav id="main-nav" class="main-nav navbar-right" role="navigation">
                <div class="navbar-header">
                    <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button><!--//nav-toggle-->
                </div><!--//navbar-header-->            
                <div class="navbar-collapse collapse" id="navbar-collapse" aria-expanded="false" style="height: 1px;">
                    <ul class="nav navbar-nav">
                        <li class="nav-item sr-only active"><a class="scrollto" href="#promo">首页</a></li>
                        <li class="nav-item"><a class="scrollto" href="${pageContext.request.contextPath}">首页</a></li>
                        <li class="nav-item"><a class="scrollto" href="#features">博客</a></li>
                        <li class="nav-item"><a class="scrollto" href="${pageContext.request.contextPath}/about">关于我</a></li>
                        <li class="nav-item"><a class="scrollto" href="#docs">留言板</a></li>
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav><!--//main-nav-->
        </div>
    </header>
<%-- 
	<div class="explore-banner">
		<div class="explore-bg" style="background-color: rgb(84, 170, 169);">
			<div class="bg-gradient" style="background-image: linear-gradient(to top, rgb(8, 131, 127) 0%,  rgb(197, 216, 216) 20%, rgb(42, 199, 197) 100%); background-position: initial initial; background-repeat: initial initial;/* display: none; */"></div>
			<!-- <div class="bg-gradient"
				style="background-image: linear-gradient(to right, rgb(84, 170, 169) 0%, rgba(84, 170, 169, 0) 0%, rgba(84, 170, 169, 0) 0%, rgb(84, 170, 169) 30%, rgb(84, 170, 169) 100%); background-position: initial initial; background-repeat: initial initial;"></div>
			 <img
				src="${pageContext.request.contextPath}/webresource/images/10x1.jpg"
				class="bg-img load" style="left: -60px; z-index: 2;">
			 -->
		</div>
		
		<div class="wrapper explore-info" style="/* width: 992px; */">
			<h1 class="title">扁平化ui</h1>
			<a data-urlname="bianpinghuaui" href="#" onclick="return false;"
				class="follow-explore btn rbtn"><span class="text"> 关注</span></a>
			<div class="info">扁平化设计是指舍弃渐变、阴影、高光等拟物化的视觉效果，从而打造出一种看上去更加平面的界面风格。</div>
			<div class="follow-title">
				<i class="icon"></i><span>Ta 们已关注</span>
			</div>
			<div class="followers">
				<a href="/mike19/" rel="nofollow" class="follower-item show">
				<img src="${pageContext.request.contextPath}/webresource/images/f8a57f0ea15f2ebca3537067ca884dadf012899f1838-VBu86z_sq140sf.jpg"/></a>
				<a href="/mike19/" rel="nofollow" class="follower-item show">
				<img src="${pageContext.request.contextPath}/webresource/images/f8a57f0ea15f2ebca3537067ca884dadf012899f1838-VBu86z_sq140sf.jpg"/></a>
				<a href="/mike19/" rel="nofollow" class="follower-item show">
				<img src="${pageContext.request.contextPath}/webresource/images/f8a57f0ea15f2ebca3537067ca884dadf012899f1838-VBu86z_sq140sf.jpg"/></a>
				<a href="/mike19/" rel="nofollow" class="follower-item show">
				<img src="${pageContext.request.contextPath}/webresource/images/f8a57f0ea15f2ebca3537067ca884dadf012899f1838-VBu86z_sq140sf.jpg"/></a>
				<a href="/mike19/" rel="nofollow" class="follower-item show">
				<img src="${pageContext.request.contextPath}/webresource/images/f8a57f0ea15f2ebca3537067ca884dadf012899f1838-VBu86z_sq140sf.jpg"/></a>
			</div>
		</div>
	</div>
 --%>
	<!-- <div class="banner"></div> -->

	<div class="container sections-wrapper" style="margin-top:50px;">
	<div class="row">
		<div class="primary col-md-8 col-sm-12 col-xs-12">
		
<section class="latest section">

<div class="section-inner">
	<div class="article">
		<h2 class="heading">博客之初</h2>
		<img class="img-responsive" src="${pageContext.request.contextPath}/webresource/images/projects/project-featured.png"/>
		<div class="summary">
			<p>Hello, World! 程序猿都懂的。我想做自己的网站有一段时间了，现在终于陆陆续续着手做了，有句话说得好，当你开始的时候最难的部分已经解决了，所以，开始吧……</p>
			<a title="博客之初" href="#" target="_blank" class="readmore">阅读全文&gt;&gt;</a>
		</div>
		<p class="info"><span>2015-02-25</span><span>作者：Jackson</span><span>个人博客：[<a href="/jstt/web/">网站建设</a>]</span></p>   
	</div>
	
	<div class="article">
		<h2 class="heading">博客之初</h2>
		<img class="img-responsive" src="${pageContext.request.contextPath}/webresource/images/projects/project-featured.png"/>
		<div class="summary">
			<p>Hello, World! 程序猿都懂的。我想做自己的网站有一段时间了，现在终于陆陆续续着手做了，有句话说得好，当你开始的时候最难的部分已经解决了，所以，开始吧……</p>
			<a title="博客之初" href="#" target="_blank" class="readmore">阅读全文&gt;&gt;</a>
		</div>
		<p class="info"><span>2015-02-25</span><span>作者：Jackson</span><span>个人博客：[<a href="/jstt/web/">网站建设</a>]</span></p>   
	</div>
	<div class="article">
		<h2 class="heading">博客之初</h2>
		<img class="img-responsive" src="${pageContext.request.contextPath}/webresource/images/projects/project-featured.png"/>
		<div class="summary">
			<p>Hello, World! 程序猿都懂的。我想做自己的网站有一段时间了，现在终于陆陆续续着手做了，有句话说得好，当你开始的时候最难的部分已经解决了，所以，开始吧……</p>
			<a title="博客之初" href="#" target="_blank" class="readmore">阅读全文&gt;&gt;</a>
		</div>
		<p class="info"><span>2015-02-25</span><span>作者：Jackson</span><span>个人博客：[<a href="/jstt/web/">网站建设</a>]</span></p>   
	</div>
	<div class="article">
		<h2 class="heading">博客之初</h2>
		<img class="img-responsive" src="${pageContext.request.contextPath}/webresource/images/projects/project-featured.png"/>
		<div class="summary">
			<p>Hello, World! 程序猿都懂的。我想做自己的网站有一段时间了，现在终于陆陆续续着手做了，有句话说得好，当你开始的时候最难的部分已经解决了，所以，开始吧……</p>
			<a title="博客之初" href="#" target="_blank" class="readmore">阅读全文&gt;&gt;</a>
		</div>
		<p class="info"><span>2015-02-25</span><span>作者：Jackson</span><span>个人博客：[<a href="/jstt/web/">网站建设</a>]</span></p>   
	</div>
</div>

<%--
<div class="section-inner">
<h2 class="heading">博客之初</h2>
<div class="content">

<div class="item featured text-center">
<h3 class="title">2015/03/21</h3>
<div class="featured-image">
<img class="img-responsive project-image" src="${pageContext.request.contextPath}/webresource/images/projects/project-featured.png" alt="project name" />
<!-- <div class="ribbon">
<div class="text">New</div>
</div> -->
</div>
<div class="desc text-left">
<p>Hello, World! 程序猿都懂的。我想做自己的网站有一段时间了，现在终于陆陆续续着手做了，有句话说得好，当你开始的时候最难的部分已经解决了，所以，开始吧……</p>
</div><!--//desc-->
</div><!--//item-->
</div><!--//content-->
</div><!--//section-inner-->
 --%>
</section><!--//section-->
                
		</div><!--//primary-->
		<div class="secondary col-md-4 col-sm-12 col-xs-12">
			<aside class="info aside section">
				<div class="section-inner">
					<h2 class="heading sr-only">基本信息</h2>
					<div class="content">
						<ul class="list-unstyled">
						<li><i class="fa fa-map-marker"></i><span class="sr-only">籍贯:</span>江苏南通</li>
						<li><i class="fa fa-envelope-o"></i><span class="sr-only">邮箱:</span><a href="#">stang003@163.com</a></li>
						<li><i class="fa fa-link"></i><span class="sr-only">个人博客:</span><a href="#">http://www.stangtang.com</a></li>
						</ul>
					</div><!--//content-->  
				</div><!--//section-inner-->                 
			</aside><!--//aside-->
			<aside class="list music aside section">
				<div class="section-inner">
					<h2 class="heading">热门文章</h2>
					<div class="content">
						<ul class="list-unstyled">
							<li><i class="fa"></i> <a href="#">Hello, World!</a></li>
						</ul>
					</div><!--//content-->
				</div><!--//section-inner-->
			</aside><!--//section-->
                
		</div><!--//secondary-->    
	</div><!--//row-->
	</div><!--//masonry-->

    <jsp:include page="../../common/foot.jsp"/>
</body>
</html> 

