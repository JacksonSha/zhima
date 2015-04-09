<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="zh">
<head>
<jsp:include page="../common/include.jsp"/>

<script type="text/javascript">
var rootUrl = "${pageContext.request.contextPath}";

$(function(){
	$(window).bind('scroll', function() {
	    if ($(window).scrollTop() > 30) {
	        $('header').addClass('navbar-fixed-top');
	    }
	    else {
	        $('header').removeClass('navbar-fixed-top');
	    }
	});
	var pathname = window.location.pathname;
	pathname = pathname.replace(rootUrl, "").split("/", -1);
	var page = pathname[1];
	(page=="") && (page="home");
	console.log(pathname,page);
	$.post(rootUrl+"/show/sub_"+page,null,function(resp){
		$(".container .row").empty().html(resp);
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
                        <li class="nav-item"><a class="scrollto" href="${pageContext.request.contextPath}/blog">博客</a></li>
                        <li class="nav-item"><a class="scrollto" href="${pageContext.request.contextPath}/about">关于我</a></li>
                        <li class="nav-item"><a class="scrollto" href="${pageContext.request.contextPath}/guest">留言板</a></li>
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav><!--//main-nav-->
        </div>
    </header>

	<div class="banner"></div>

	<div class="container sections-wrapper">
	<div class="row">
	</div><!--//row-->
	</div><!--//masonry-->

    <jsp:include page="../common/foot.jsp"/>
</body>
</html> 

