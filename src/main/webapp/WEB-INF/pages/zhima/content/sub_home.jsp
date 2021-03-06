<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style type="text/css">
@media (min-width:992px) {
  header {
	background: #FFFFFF;
  }
  header .logo a {
    color: #17baef;
  }
  .banner {
	height: 260px;
  }
}
</style>

<div class="primary col-md-8 col-sm-12 col-xs-12">
<section class="section">
	<div class="section-inner">
		<h3 class="section-heading">文章推荐</h3>
		<c:forEach begin="1" end="6">
			<div class="article">
				<h2 class="heading">博客之初</h2>
				<img class="img-responsive" src="${pageContext.request.contextPath}/webresource/images/projects/project-featured.png"/>
				<div class="summary">
					<p>Hello, World! 程序猿都懂的。我想做自己的网站有一段时间了，现在终于陆陆续续着手做了，有句话说得好，当你开始的时候最难的部分已经解决了，所以，开始吧……</p>
					<a title="博客之初" href="${pageContext.request.contextPath}/single/1" target="_blank" class="readmore">阅读全文&gt;&gt;</a>
				</div>
				<p class="info"><span>2015-02-25</span><span>作者：Jackson</span><span>个人博客：[<a href="/jstt/web/">网站建设</a>]</span></p>   
			</div>
		</c:forEach>
	</div>
</section><!--//section-->
</div><!--//primary-->

<div class="secondary col-md-4 col-sm-12 col-xs-12">
	<aside class="section">
		<div class="section-inner">
			<div class="guanzhu">芝麻加糖微信号</div>
			<a href="/" class="weixin">
			<img style="width:100%; max-width:25rem;" src="${pageContext.request.contextPath}/webresource/images/weixin.png"/>
			</a>
		</div><!--//section-inner-->
	</aside><!--//aside-->
	<aside class="section">
		<div class="section-inner">
			<h3 class="section-heading lastest-head">最新文章</h3>
			<div class="content">
				<ul class="rank-list">
					<li><a href="/" target="_blank">阿里云服务器选型</a></li>
					<li><a href="/" target="_blank">数据库查询优化</a></li>
					<li><a href="/" target="_blank">Web应用的缓存设计模式</a></li>
					<li><a href="/" target="_blank">建立学习型组织</a></li>
					<li><a href="/" target="_blank">Java面试题解析</a></li>
					<li><a href="/" target="_blank">JVM内存模型</a></li>
				</ul>
			</div><!--//content-->
		</div><!--//section-inner-->
	</aside><!--//section-->
</div><!--//secondary-->    
