<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- 
<script type="text/javascript">
(function(){
var url = "http://widget.weibo.com/distribution/comments.php?width=0&url=auto&ralateuid=3093895670&appkey=3725229042&dpc=1";
url = url.replace("url=auto", "url=" + encodeURIComponent(document.URL)); 
document.write('<iframe id="WBCommentFrame" src="' + url + '" scrolling="no" frameborder="0" style="width:100%"></iframe>');
})();
</script>
<script src="http://tjs.sjs.sinajs.cn/open/widget/js/widget/comment.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
window.WBComment.init({
    "id": "WBCommentFrame"
});
</script>
 -->

<script type="text/javascript" src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=3725229042" charset="utf-8"></script>
<script type="text/javascript">
$(function(){
	$(".content").html('<wb:comments url="auto" width="auto" appkey="3725229042" ralateuid="3093895670" ></wb:comments>');
});
</script>

<div class="primary col-md-8 col-sm-12 col-xs-12">
	<section class="section">
		<div class="section-inner">
		<h2 class="section-heading">最近访客</h2>
		<div class="content">
		</div><!--//content-->
		</div><!--//section-inner-->
	</section><!--//section-->
</div><!--//primary-->

<div class="secondary col-md-4 col-sm-12 col-xs-12">
	<aside class="section">
		<div class="section-inner">
		</div><!--//section-inner-->
	</aside><!--//aside-->
</div><!--//secondary-->
