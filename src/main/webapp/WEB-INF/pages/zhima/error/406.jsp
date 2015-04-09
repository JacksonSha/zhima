<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../common/include.jsp"></jsp:include>

<script type="text/javascript">
var rootUrl = "${pageContext.request.contextPath}";
</script>
</head>

<body>
	<div class="wrapper">
    	<!-- HEADER -->
        <header>
            <h1></h1>
            <div class="hero-image"></div>
        </header>
    	<!-- END OF HEADER -->
        
        <!-- CONTENT -->
        <div class="content">
        <h2 class="copy greyFont"><span class="redFont">Not Acceptable</span></h2>
        <div style="margin-bottom:100px;"></div>
		<div class="clear"></div>
        </div>
        <!-- END OF CONTENT -->
        
        <!-- FOOTER -->
        <footer>
           <jsp:include page="../common/foot.jsp"></jsp:include>
        </footer>
        <!-- END OF FOOTER -->
    </div>
</body>
</html>
