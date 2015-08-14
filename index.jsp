<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="frame_top_css.jsp"  />
<!-- 顶部css -->

<body>

			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			

					<div class="page-content">
					<!--
						<div class="page-header">
							<h1>
								供应商
								<small>
									<i class="icon-double-angle-right"></i>
									 查看
								</small>
							</h1>
						</div> /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="alert alert-block alert-success">
									<button type="button" class="close" data-dismiss="alert">
										<i class="icon-remove"></i>
									</button>
									<i class="icon-ok green"></i>
									欢迎使用
									<strong class="green">
										大爆炸后台管理
										<small>(v1.0)</small>
									</strong>
								</div>

								<div class="hr hr32 hr-dotted"></div>
								
								
								<div class="page-content">
									<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="icon-coffee green"></i>
												登陆 
											</h4>

											<div class="space-6"></div>

											<form id="regesterForm">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input validate="number" mustneed="true" type="text" class="form-control" placeholder="Username" name="adminId" ><!-- 生产环境要改成userName/screenName, 测试环境现在用userId -->
															<i class="icon-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="Password" name="passwd" >
															<i class="icon-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<button type="button" class="width-35 pull-right btn btn-sm btn-primary" id="loginBtn">
															<i class="icon-key"></i>
															确定
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

										</div><!-- /widget-main -->

									</div><!-- /widget-body -->
								</div><!-- /login-box -->


									</div>
								</div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>

		<jsp:include page="frame_bottom.jsp"  />
		<!-- 底部模块及代共js -->
		
		<script type="text/javascript">
	
		$("#loginBtn").click(function() {
			var resultInfoTitle = "登陆";
			var url = "login.php";
			var user = billAngularJS("regesterForm", true);
			console.log("user", user);
			//如果难验证不通过
			if (!user) return;	
			modiAjax(url, user, null, true, resultInfoTitle,successFun);
		});
		var successFun = function(){
			window.location.href = "main.php";
		}
		
		jQuery(function($){
			//判断是否有外层iframe , fix 在内层iframe里跟转到login页面 
			var checkOuterFrame = function() {
				if (window.location.href != top.location.href) {
					top.location.href = "main.php";
				}
			}
			checkOuterFrame();
		})

		</script>
	
</body>
</html>

