<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="zh">

<head>
<jsp:include page="../../common/include.jsp"/>
<style type="text/css">
.banner {
	width: 100%;
    height: 0px;
	margin-top: 56px;
	background: #17baef;
}
@media (min-width:992px) {
  header {
	background: #FFFFFF;
  }
  header .logo a {
    color: #17baef;
  }
  .banner {
	height: 230px;
  }
}
</style>

<script type="text/javascript">
$(function(){
	$(window).bind('scroll', function() {
	    if ($(window).scrollTop() > 30) {
	        $('header').addClass('navbar-fixed-top');
	    }
	    else {
	        $('header').removeClass('navbar-fixed-top');
	    }
	});
});
</script>
</head>

<body>
    <!-- ******HEADER****** -->
    <header>  
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

	<div class="banner"></div>

	<div class="container sections-wrapper">
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

