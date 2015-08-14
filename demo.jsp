<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>大爆炸B2C</title>
		<meta name="keywords" content="大爆炸,神奇百贷" />
		<meta name="description" content="大爆炸移动电商" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<jsp:include page="../frame_top_css.jsp"  />
		<!-- 顶部css -->
	</head>

	<body>
		<jsp:include page="../frame_top.jsp"  />
		<!-- 顶部模块  -->

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<jsp:include page="../frame_left.jsp"  />
				<!-- 左导航 -->
				
				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="index.php">首页</a>
							</li>
							<li class="active">供应商管理</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

					<div class="page-content">

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<!-- ================================================== Content内容  ================================================== Start<<<<<<<<<<<<<<<<<<<< -->			
								
								<!-- ================================================== Content内容  ================================================== End>>>>>>>>>>>>>>>>>>>>>>>>>>> -->					

								<div class="hr hr32 hr-dotted"></div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				<jsp:include page="../frame_right.jsp"  />
				<!-- 右设置 -->
				
				
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<jsp:include page="../frame_bottom.jsp"  />
		<!-- 底部模块及代共js -->
		
		<script type="text/javascript">
			
		

		</script>
	
</body>
</html>

