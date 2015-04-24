<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/template" id="singleView-template">
	<h3 class="title">{{title}}</h3>
	<div class="info"><span>发布时间：{{createDt}}</span><span>作者：{{author}}</span><span>浏览：</span></div>
	{{contentHtml}}
</script>

<script type="text/javascript">
$(function(){
	var pathname = window.location.pathname;
	var paths = pathname.replace(rootUrl, "").split("/", -1);
	var singleView = function(artId){
		$.post(rootUrl+"/article/view/"+artId,null,
				function(resp){
			var el = $(".single");
			$(el).empty();
			var artTmp=_.template($("#singleView-template").html());
			var art=resp;
			$(el).append(artTmp({
				artId: art.id,
				title: art.title,
				headImg: art.headImg,
				contentDesc: art.contentDesc,
				contentHtml: art.contentHtml,
				author: art.author,
				createDt: $.format.date(new Date(art.createDt), 'yyyy-MM-dd')
			}));
		});
	};
	switch(paths.length){
	case 3:
		var artId = paths[2];
		singleView(artId);
		break;
	default:
		break;
	}
	var page = paths[1];
	(page=="") && (page="home");
});
</script>

<script type="text/javascript">
(function(){
var url = "http://widget.weibo.com/distribution/comments.php?width=0&url=auto&ralateuid=3093895670&appkey=3725229042&dpc=1";
url = url.replace("url=auto", "url=" + encodeURIComponent(document.URL)); 
$(".comment").html('<iframe id="WBCommentFrame" src="' + url + '" scrolling="no" frameborder="0" style="width:100%"></iframe>');
})();
</script>
<script src="http://tjs.sjs.sinajs.cn/open/widget/js/widget/comment.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
window.WBComment.init({
    "id": "WBCommentFrame"
});
</script>

<div class="primary col-md-8 col-sm-12 col-xs-12">
<section class="section">
	<div class="section-inner">
		<div class="single">
		</div>
		<div class="pager">
			<div class="article-link">
				<span>上一篇</span>
				<a>阿里云服务器选型</a>
			</div>
			<div class="clear"></div>
			<div class="article-link">
				<span>下一篇</span>
				<a>Web应用的缓存设计模式</a>
			</div>
		</div>
		<div class="comment">
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
			<h3 class="section-heading lastest-head">相关文章</h3>
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
