<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>大爆炸B2C</title>
		<meta name="keywords" content="大爆炸,神奇百贷" />
		<meta name="description" content="大爆炸,首页" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
		<jsp:include page="frame_top_css.jsp"  />
		<!-- 顶部css -->
		
	</head>

	<body>
		<jsp:include page="frame_top.jsp"  />
		<!-- 顶部模块  -->

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<jsp:include page="frame_left.jsp"  />
				<!-- 左导航 -->
				
				<div class="main-content" id="mainDiv">
					<iframe name="main" id="main" marginheight="0" marginwidth="0" frameborder="0"  src="vendor.php"
					scrolling="no" style="width:100%; height:100%;"></iframe>
				</div><!-- /.main-content -->

				<jsp:include page="frame_right.jsp"  />
				<!-- 右设置 -->
				<!-- /#ace-settings-container -->
				
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!--[if IE] -->
<script type="text/javascript">
 	window.jQuery || document.write("<script src='/res/assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");
</script>
<!-- <![endif]-->

<script type="text/javascript">
	if("ontouchend" in document) document.write("<script src='/res/assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
</script>
<script src="/res/assets/js/bootstrap.min.js"></script>
<script src="/res/assets/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
  <script src="/res/assets/js/excanvas.min.js"></script>
<![endif]-->

<script src="/res/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="/res/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="/res/assets/js/jquery.slimscroll.min.js"></script>
<script src="/res/assets/js/jquery.easy-pie-chart.min.js"></script>
<script src="/res/assets/js/bootbox.min.js"></script>
<script src="/res/assets/js/jquery.gritter.min.js"></script>

<script src="/res/assets/js/date-time/bootstrap-datepicker.min.js"></script>
<script src="/res/assets/js/date-time/bootstrap-timepicker.min.js"></script>
<script src="/res/assets/js/fuelux/fuelux.spinner.min.js"></script>
<script src="/res/assets/js/fuelux/fuelux.tree.min.js"></script>
<script src="/res/assets/js/fuelux/fuelux.wizard.min.js"></script>

<script src="/res/assets/js/chosen.jquery.min.js"></script>
<script src="/res/assets/js/date-time/moment.min.js"></script>
<script src="/res/assets/js/date-time/daterangepicker.min.js"></script>
<script src="/res/assets/js/jquery.knob.min.js"></script>
<script src="/res/assets/js/jquery.autosize.min.js"></script>
<script src="/res/assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
<script src="/res/assets/js/jquery.maskedinput.min.js"></script>
<script src="/res/assets/js/bootstrap-tag.min.js"></script>

<script src="/res/assets/js/ace-elements.min.js"></script>
<script src="/res/assets/js/ace.min.js"></script>
		<!-- 底部模块及代共js -->
		<script type="text/javascript">
// 		jQuery(function($){
// 			var url = "index.php";
// 			$("#main").attr("src",url);
// 		});
		</script>
</body>
</html>

