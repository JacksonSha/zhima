<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/template" id="blogList-template">
<div class="article">
	<h2 class="heading">{{title}}</h2>
	<img class="img-responsive" src="{{headImg}}"/>
	<div class="summary">
		<p>{{contentDesc}}</p>
		<a title="{{title}}" href="${pageContext.request.contextPath}/single/{{artId}}" target="_blank" class="readmore">阅读全文&gt;&gt;</a>
	</div>
	<p class="info"><span>{{createDt}}</span><span>作者：{{author}}</span><span>个人博客：[<a href="/jstt/web/">网站建设</a>]</span></p>   
</div>
</script>

<script type="text/javascript">
$(function(){
	var pathname = window.location.pathname;
	var paths = pathname.replace(rootUrl, "").split("/", -1);
	//console.log(paths, paths.length);
	var listByDate = function(page){
		$.post(rootUrl+"/article/list/"+page,null,
				function(resp){
			var el = $(".articles");
			$(el).empty();
			var artTmp=_.template($("#blogList-template").html());
			for(var i=0;i<resp.length;i++){
				var art=resp[i];
				$(el).append(artTmp({
					artId: art.id,
					title: art.title,
					headImg: art.headImg,
					contentDesc: art.contentDesc,
					author: art.author,
					createDt: $.format.date(new Date(art.createDt), 'yyyy-MM-dd')
				}));
			}
		});
	};
	var listByTag = function(tag, page){
		$.post(rootUrl+"/article/list/"+tag+"/"+page,null,
				function(resp){
			var el = $(".articles");
			$(el).empty();
			var artTmp=_.template($("#articleList-template").html());
			for(var i=0;i<resp.length;i++){
				var art=resp[i];
				$(el).append(artTmp({
					artId: art.id,
					title: art.title,
					headImg: art.headImg,
					contentDesc: art.contentDesc,
					author: art.author,
					createDt: $.format.date(new Date(art.createDt), 'yyyy-MM-dd')
				}));
			}
		});
	};
	switch(paths.length){
	case 2:
		listByDate(1);
		break;
	case 3:
		var page = paths[2];
		listByDate(page);
		break;
	case 4:
		var tag = paths[2];
		var page = paths[3];
		listByTag(tag, page);
		break;
	default:
		break;
	}
});
</script>

<div class="primary col-md-8 col-sm-12 col-xs-12">
<section class="section">
	<div class="section-inner">
		<h3 class="section-heading">最新文章</h3>
		<div class="articles">
			<%-- <div class="article">
				<h2 class="heading">博客之初</h2>
				<img class="img-responsive" src="${pageContext.request.contextPath}/webresource/images/projects/project-featured.png"/>
				<div class="summary">
					<p>Hello, World! 程序猿都懂的。我想做自己的网站有一段时间了，现在终于陆陆续续着手做了，有句话说得好，当你开始的时候最难的部分已经解决了，所以，开始吧……</p>
					<a title="博客之初" href="${pageContext.request.contextPath}/" target="_blank" class="readmore">阅读全文&gt;&gt;</a>
				</div>
				<p class="info"><span>2015-02-25</span><span>作者：Jackson</span><span>个人博客：[<a href="/jstt/web/">网站建设</a>]</span></p>   
			</div> --%>
		</div>
		<div class="pager">
			<span>首页</span>
			<span>上一页</span>
			<span class="current-page">1</span>
			<span>2</span>
			<span>3</span>
			<span>4</span>
			<span>5</span>
			<span>下一页</span>
			<span>尾页</span>
		</div>
	</div>
</section><!--//section-->
</div><!--//primary-->

<div class="secondary col-md-4 col-sm-12 col-xs-12">
	<aside class="section">
		<div class="section-inner">
			<h3 class="section-heading">关注我</h3>
			<div class="content">
				<img style="width:100%;" src="http://www.yangqq.com/web/410/images/ad300x100.jpg"></img>
			</div><!--//content-->
		</div><!--//section-inner-->
	</aside><!--//aside-->
	<aside class="section">
		<div class="section-inner">
			<h3 class="section-heading">标签分类</h3>
			<div class="content">
				<ul class="tag-list">
					<li><a href="/">个人博客</a></li>
					<li><a href="/">web开发</a></li>
					<li><a href="/">前端设计</a></li>
					<li><a href="/">Html</a></li>
					<li><a href="/">CSS3</a></li>
					<li><a href="/">Html5+css3</a></li>
					<li><a href="/">百度</a></li>
					<li><a href="/">Javasript</a></li>
					<li><a href="/">web开发</a></li>
					<li><a href="/">前端设计</a></li>
					<li><a href="/">Html</a></li>
					<li><a href="/">CSS3</a></li>
					<li><a href="/">Html5+css3</a></li>
					<li><a href="/">百度</a></li>
				</ul>
				<div class="clear"></div>
			</div><!--//content-->
		</div><!--//section-inner-->
	</aside><!--//aside-->
	<aside class="section">
		<div class="section-inner">
			<h3 class="section-heading lastest-head">点击排行</h3>
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
	</aside><!--//aside-->
</div><!--//secondary-->
