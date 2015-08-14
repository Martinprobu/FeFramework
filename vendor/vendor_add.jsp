<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../frame_top_css.jsp"  />
<!-- 顶部css -->

	<body>
		
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

				
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="index.php">首页</a>
							</li>
							<li class="active">
								<a href="vendor.php">供应商</a>
							</li>
							<li class="active">供应商 添加
							</li>
						</ul><!-- .breadcrumb -->

					</div>

					<div class="page-content">

						<div class="row" style="z-index:98">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<!-- ================================================== Content内容  ================================================== Start<<<<<<<<<<<<<<<<<<<< -->								
								<div class="hr hr10 hr-dotted"></div>
									<div class="col-xs-12" id="addFormDiv"> 
										<form class="form-horizontal" role="form">
											<input name="vendorId" type="hidden" />	
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">商家名字</label> 
												<div class="col-sm-9">
													<input name="vendorName" mustneed="true" id="vendorName" type="text" placeholder="请输入商家名字" class="col-xs-10 col-sm-8" /> <span style="color:red;">*</span>
												</div>
											</div>
											<div class="space-4"></div>
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">联系法人</label>
												<div class="col-sm-9">
													<input name="linkName" mustneed="true" id="linkName" type="text" placeholder="请输入联系法人" class="col-xs-10 col-sm-8" /> <span style="color:red;">*</span>
												</div>
											</div>
											<div class="space-4"></div>
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">手机</label>
												<div class="col-sm-9">
													<input validate="number" mustneed="true" name="mobilephone" id="mobilephone"  type="text"  placeholder="请输入手机" class="col-xs-10 col-sm-8"> <span style="color:red;">*</span>
												</div>
											</div>
											<div class="space-4"></div>
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">固话</label>
												<div class="col-sm-9">
													<input validate="number" name="telephone" id="telephone" type="text"  placeholder="请输入固话" class="col-xs-10 col-sm-8">  
												</div>
											</div>
											<div class="space-4"></div>
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">地址</label>
												<div class="col-sm-9">
													<input name="address" id="address"  type="text"  placeholder="请输入地址" class="col-xs-10 col-sm-8">
												</div>
											</div>
											<div class="space-4"></div>
											
											<div class="clearfix form-actions">
												<div class="col-md-offset-3 col-md-9">
													<button id="addSaveFunButton" click="addFun" class="btn btn-info" type="button">
														<i class="icon-ok bigger-110"></i>
														保存 
													</button>
													&nbsp; &nbsp; &nbsp;
													<button class="btn" type="reset" id="resetFunButton">
														<i class="icon-undo bigger-110"></i>
														重置
													</button>
													&nbsp; &nbsp; 
													<!-- 等待圆圈 -->
													<div id="waitDiv4add" class="icon-spinner icon-spin orange bigger-240 hide" ></div>
												</div>
											</div>
											
											<div class="space-4"></div>
										</form>
									</div>
								</div>
								<!-- ================================================== Content内容  ================================================== End>>>>>>>>>>>>>>>>>>>>>>>>>>> -->								


								<div class="hr hr32 hr-dotted"></div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
									
					</div><!-- /.page-content -->
		
		<jsp:include page="../frame_bottom.jsp"  />
		
		<script type="text/javascript">
		// 全局变量  ================================================================================================================================================================ Start<<<<<<<<<<<<
		//	=========================================================================================================================================================================================
		//分页waiting 圆圈图片 div id
		var waitDivId = "waitDiv4add";
		
		var addFormDiv = "addFormDiv";	//添加/修改 xxx的form的Div id
		
		var addUrl = "vendorAdd_save.php";		//添加/修改 xxx的url
		// 全局变量  ================================================================================================================================================================ End>>>>>>>>>>>>>
		//	=========================================================================================================================================================================================
		
		//添加商家 Server Action 	
		var addFun = function() {
			//模拟AngularJs的做法, html to json //最后参数true 表示在这一步就验证字段有效性
			var addJson = billAngularJS(addFormDiv, true);
			console.log("addJson", addJson);
			//如果难验证不通过
			if (!addJson) return;	
			var resultInfoTitle = "添加";
			//添加商家  Server Action  成功后再执行 sucessFun
			modiAjax(addUrl, addJson, waitDivId, true, resultInfoTitle, sucessFun);
		}
		var sucessFun = function() {
// 			$("#resetFunButton").click();
			defaultPopNoButtonWin("成功", "添加供应商", sucessFunFun);
		}
		var sucessFunFun = function() {		//成功后的回调method
			$("#resetFunButton").click();
		}
		
		$("#addSaveFunButton").click(addFun);
		
		
		</script>
</body>
</html>