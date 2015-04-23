<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="zh">
<head>
<jsp:include page="../../common/include.jsp"/>
</head>

<body>
<!-- ******HEADER****** --> 
<header>
	<div class="container">                       
	<img class="profile-image img-responsive pull-left" src="${pageContext.request.contextPath}/webresource/images/profile.png" alt="Jackson Sha" />
	<div class="profile-content pull-left">
		<h1 class="name">芝麻加糖</h1>
		<h2 class="desc">生活不只有苟且，还有诗和远方。作为一个码农，深以为然。</h2>   
		<ul class="social list-inline" style="display:none;">
			<li><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
			<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
			<li><a href="#"><i class="fa fa-github-alt"></i></a></li>
			<li class="last-item"><a href="#"><i class="fa fa-hacker-news"></i></a></li>
		</ul>
	</div><!--//profile-->
	<a class="btn btn-cta-primary pull-right" href="mailto:stang003@163.com" target="_blank"><i class="fa fa-paper-plane"></i> Contact Me</a>              
	</div><!--//container-->
</header><!--//header-->

<div class="container sections-wrapper">
	<div class="row">
	<div class="primary col-md-8 col-sm-12 col-xs-12">
		<section class="about section">
			<div class="section-inner">
			<h2 class="heading">关于我</h2>
			<div class="content">
			<p>沙堂堂，90年生人，11年毕业于苏州大学数学系，上学期间写了几个小程序，并开始对编程感兴趣，从此踏上了码农的不归路。</p>    
			<p>个人非常喜欢三国，高晓松的演讲，汪峰的音乐，以及梦想中的骑行之旅。由于大学缺少恋爱经历，所以结婚比较早，目前已有一子，十分可爱。</p>
			<p>建立个人网站的想法早就有了，但是一直没有行动，现在工作快满4年，当初的雄心壮志也已不着痕迹。我认为，作为一个程序猿，如果没有自己的网站，就像一个公民没有自己的身份证一样。虽然个人网站已如昨日黄花，但是对我来说，这是一种情怀。</p>
			</div><!--//content-->
			</div><!--//section-inner-->                 
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
		<aside class="credits aside section" style="display:none;">
			<div class="section-inner">
				<h2 class="heading">Credits</h2>
				<div class="content">
					<ul class="list-unstyled">
					<li><a href="http://getbootstrap.com/" target="_blank"><i class="fa fa-external-link"></i> Bootstrap 3.2</a></li>
					<li><a href="http://fortawesome.github.io/Font-Awesome/" target="_blank"><i class="fa fa-external-link"></i> FontAwsome 4.1</a></li>
					<li><a href="http://jquery.com/" target="_blank"><i class="fa fa-external-link"></i> jQuery</a></li>
					<li><a href="http://caseyscarborough.com/projects/github-activity/" target="_blank"><i class="fa fa-external-link"></i> GitHub Activity Stream</a></li>
					<li><a href="https://github.com/sdepold/jquery-rss" target="_blank"><i class="fa fa-external-link"></i> jQuery RSS</a></li>
					<li>Profile image: <a href="https://www.flickr.com/photos/dotbenjamin/2577394151" target="_blank">Ben Smith</a></li>
					<li>iPad and iPhone mocks: <a href="https://dribbble.com/perlerar" target="_blank">Regy Perlera</a></li>
					</ul>
					<hr/>
					<p>This responsive HTML5 CSS3 site template is handcrafted by UX designer <a href="https://www.linkedin.com/in/xiaoying" target="_blank">Xiaoying Riley</a> at <a href="http://themes.3rdwavemedia.com/" target="_blank">3rd Wave Media</a> for developers and is <strong>FREE</strong> under the <a class="dotted-link" href="http://creativecommons.org/licenses/by/3.0/" target="_blank">Creative Commons Attribution 3.0 License</a></p>
					<p>We will improve or add new features to this template based on users' feedback so follow us on twitter to get notified when a new version is out!</p>
					<a class="btn btn-cta-secondary btn-follow" href="https://twitter.com/3rdwave_themes" target="_blank"><i class="fa fa-twitter"></i> Follow us</a>
					<a class="btn btn-cta-primary btn-download" href="http://themes.3rdwavemedia.com/website-templates/free-responsive-website-template-for-developers/" target="_blank"><i class="fa fa-download"></i> I want to download</a>
				</div><!--//content-->
			</div><!--//section-inner-->
		</aside><!--//section-->
	</div><!--//secondary-->    
	</div><!--//row-->
</div><!--//masonry-->

<jsp:include page="../../common/footer.jsp"/>
</body>
</html> 

