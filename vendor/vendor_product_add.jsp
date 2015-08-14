<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<jsp:include page="../frame_top_css.jsp"  />
<!-- 顶部css -->

	<body>

					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="index.php">首页</a>
							</li>
							<li class="active">供应商商品管理</li>
							<li class="active">商品添加</li>
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
								<div class="table-header">
									<button class="btn  btn-sm" id="backBut">   <!--返回按钮 其他颜色 btn-danger -->
										<i class="icon-reply icon-only" ></i>
									</button>
<!-- 									<button class="btn btn-sm" id="testBtn" >test</button> -->
									供应商 : <span style="font-weight:bold">${ requestPojo.vendorName }</span>  . 商品添加
								</div>
												
								<div class="hr hr10 hr-dotted"></div>
									<div class="col-xs-12" id="addFormDiv"> 
										<form class="form-horizontal" role="form"  id="productUpateForm" name="productUpateForm" >
											<input value="0" name="productId" id="productId" type="hidden" />
											<input value="${requestPojo.sn}" name="sn" id="sn" type="hidden" />
											<input value="${requestPojo.vendorId}" name="vendorId" id="vendorId" type="hidden" />
											<input type="hidden" name="vendorName" value="${ requestPojo.vendorName }" />
											
											<div class="tabbable">
												<ul class="nav nav-tabs" id="myTab">
													<li class="active">
														<a data-toggle="tab" href="#home">
															<i class="green icon-home bigger-110"></i>
															基本参数
														</a>
													</li>
	
													<li>
														<a data-toggle="tab" href="#catalogtab">
															 品类
														</a>
													</li>
													<li>
														<a data-toggle="tab" href="#paramtab">
															属性参数
														</a>
													</li>
													<li>
														<a data-toggle="tab" href="#skutab">
															SKU
														</a>
													</li>
													<li>
														<a data-toggle="tab" href="#descriptiontab">
															图文详情
														</a>
													</li>
												</ul>
	
												<div class="tab-content">
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 基本参数====================================================================================== Start -->
													<div id="home" class="tab-pane in active">
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">原商品名</label> 
																<div class="col-sm-6">
																	<input value="${requestPojo.pTitle}" name="pTitle" mustneed="true" id="pTitle" type="text" placeholder="请输入原商品品" class="col-xs-10 col-sm-8" /> <span style="color:red;">*</span>
																</div>
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">APP商品名</label> 
																<div class="col-sm-6">
																	<input value="${requestPojo.title}" name="title" mustneed="true" id="title" type="text" placeholder="请输入APP商品名" class="col-xs-10 col-sm-8" /> <span style="color:red;">*</span>
																</div>
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">标签</label> 
																<div class="col-sm-6">
																	<select multiple="" class="width-65 chosen-select tag-input-style" id="tagIdList" name="tagIdList" data-placeholder="点击选择标签...">
																		
																			<c:forEach var="list" items="${tagList}" varStatus="status" >
																				<option value="${list.tagId}" name="tagIdListOpt">${list.tag}</option>
																			</c:forEach>
																		
																	</select>
																</div>
																<input type="hidden" name="tagHtmlList" id="tagHtmlList" />
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">成本价格</label> 
																<div class="col-sm-6">
																	<input value="${requestPojo.costPrice}" name="costPrice" mustneed="true" id="costPrice" type="text" placeholder="请输入成本价格" class="col-xs-10 col-sm-8" /> <span style="color:red;">*</span>
																</div>
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">基准价格</label> 
																<div class="col-sm-6">
																	<input value="${requestPojo.basePrice}" name="basePrice" mustneed="true" id="basePrice" type="text" placeholder="请输基准价格" class="col-xs-10 col-sm-8" /> <span style="color:red;">*</span>
																</div>
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">出售价格</label> 
																<div class="col-sm-6">
																	<input value="${requestPojo.marketPrice}" name="marketPrice" mustneed="true" id="marketPrice" type="text" placeholder="请输入出售价格" class="col-xs-10 col-sm-8" /> <span style="color:red;">*</span>
																</div>
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">推荐语</label> 
																<div class="col-sm-6">
<%-- 																	<input value="${requestPojo.recommend}" name="recommend" mustneed="true" id="recommend" type="hidden" />  --%>
																	<textarea rows="3" cols="72" name="recommend" id="recommend" >${requestPojo.recommend}</textarea>
																</div>
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">单位</label> 
																<div class="col-sm-6">
																	<input value="${requestPojo.unit}" name="unit" mustneed="true" id="unit" type="text" placeholder="请输入商家单位" class="col-xs-10 col-sm-8" /> <span style="color:red;">*</span>
																</div>
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">缩略图片</label> 
																<div class="col-sm-6">
																	<input name="imageUrlOld" id="imageUrlOld" type="hidden" value="">
																		<img  src="${requestPojo.imageUrl}" />
																		<div class="widget-box">
																			<div class="widget-header">
																				<h5>缩略图上传</h5>
																				<span class="widget-toolbar">
																					<a href="#" data-action="collapse">
																						<i class="icon-chevron-up"></i>
																					</a>
																				</span>
																			</div>
																			<div class="widget-body">
																				<div class="widget-body-inner" style="display: block;">
																					<div class="widget-body">
																						<div class="widget-main">
																							<input multiple="" type="file" id="imageUrl" name="imageUrl" />
																							<label>
																								<input type="checkbox" name="file-format" id="imageUrl-format" class="ace" />
																								<span class="lbl">限制图片格式</span>
																							</label>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																</div>
															</div>
															<div class="space-4"></div>
															
															
															
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">TOP图片</label> 
																<div class="col-sm-6">
																	<div style=""> 
																		<c:forEach var="list" items="${requestPojo.productTopImagesList}" varStatus="status" >  
																			<img src="${list.imageUrl}" width="150px" height="150px">
																		</c:forEach>
																	</div>
																	<div class="widget-box">
																		<div class="widget-header">
																			<h5>TOP图上传</h5>
																			<span class="widget-toolbar">
																				<a href="#" data-action="collapse">
																					<i class="icon-chevron-up"></i>
																				</a>
																			</span>
																		</div>
																		<div class="widget-body">
																			<div class="widget-body-inner" style="display: block;">
																				<div class="widget-body">
																					<div class="widget-main">
																						<input multiple="" type="file" id="productTopImagesList" name="productTopImagesList" />
																						<label>
																							<input type="checkbox" name="file-format" id="imageUrl-format11" class="ace" />
																							<span class="lbl">限制图片格式</span>
																						</label>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="space-4"></div>
													</div>
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 基本参数====================================================================================== End -->
	
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 类别       ====================================================================================== Start -->
													<div id="catalogtab" class="tab-pane">
														<div id="tree1" class="tree tree-selectable">
														</div>
														<div class="space-4"></div>
														<input type="hidden" name="cataHtmlList" id="cataHtmlList" />
													</div>
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 类别       ====================================================================================== End   -->
	
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 商品参数 ===================================================================================== Start -->
													<div id="paramtab" class="tab-pane">
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right" for="form-field-1">属性模板</label> 
															<div class="col-sm-4">
																	<select class="form-control" id="proModelSele">
																		<c:forEach var="list" items="${parameterTemplateList}" varStatus="status" >
																			<option value="${list.paramTempId}">${list.paramTempName}</option>
																		</c:forEach>
																	</select>
																	<i class="icon-hand-right green"></i>
																	<div id="proModelSeleDiv">
																	</div>
<!-- 																	<a href="#modal-form" role="button" class="blue" data-toggle="modal">查看属性模板</a> -->
																	<button class="btn btn-xs" type="button" id="paramAddBtn">添加模板</button>
																	<button class="btn btn-xs" type="button" id="paramSimpleAddBtn">添加单条</button>
															</div>
														</div>
														<input type="hidden" name="paramHtmlList" id="paramHtmlList" />
														<div class="space-4"></div>
														<div id="paramAddBtnDiv">
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" ></label> 
																<div class="col-sm-3">
																	<input value="" name="pro"  type="text" placeholder="请输入属性 名" class="col-xs-10 col-sm-4" />
																		<input value="" name="provalue"  type="text" placeholder="请输入属性 值" class="col-xs-10 col-sm-4" />
																		<input value="" name="util"  type="text" placeholder="请输入单位" class="col-xs-10 col-sm-4" />
																</div>
															</div>
														</div>
														<div class="space-4"></div>
													</div>
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 商品参数 ====================================================================================== End  -->
													
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== SKU	 ===================================================================================== Start -->
													<div id="skutab" class="tab-pane">
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right" for="form-field-1">总共最大库存</label> 
															<div class="col-sm-6">
<%-- 																<input value="${requestPojo.buyMax}" name="buyMax" mustneed="true" id="buyMax" type="text" placeholder="请输入商家名字" class="col-xs-10 col-sm-8" /> <span style="color:red;">*</span> --%>
																<input value="${requestPojo.buyMax}" type="text" class="input-mini" id="buyMax" name="buyMax" />
															</div>
														</div>
														<div class="space-4"></div>
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right" for="form-field-1">SKU模板</label> 
															<div class="col-sm-4">
																	<select class="form-control" id="skuProTemplateSele">
																		<c:forEach var="list" items="${skuProTemplateList}" varStatus="status" >
																			<option value="${list.sproTempId}">${list.sproTempName}</option>
																		</c:forEach>
																	</select>
																	<i class="icon-hand-right green"></i>
<!-- 																	<a href="#modal-form2" role="button" class="blue" data-toggle="modal" id="skuModule">查看SKU模板</a> -->
																	<div id="skuProTemplateSeleDetail">
																	</div>
																	<button class="btn btn-xs" type="button" id="addSkuTemplBtn">添加模板</button>
																	<button class="btn btn-xs" type="button" id="addSkuSimpleBtn">添加单条</button>
																	<input type="hidden" name="skuHtmlList" id="skuHtmlList" />
															</div>
														</div>
														<div class="space-4"></div>
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right" >SKU配置</label> 
															<div class="col-sm-6">
															</div>
														</div>
														<input name="" id="" type="hidden" />
														<div id="skuProModelDiv">
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" >
																	<input value="" name="skuPro" type="text" placeholder="请输入 组名" />
																</label>
																<div class="col-sm-8">
<!-- 																	<a href="javascript:addSkuSimple();">+</a> 作用是在后面加一个框 一期先不做  -->
																	<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />
																	<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />
																	<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />
																	<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />
																	<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />
																	<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />
																	<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />
																	<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />
																	<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />
																	<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />
																	<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />
																	<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span style="color:red">注意</span></label> 
															<div class="col-sm-6">
																<span style="color:red">每个SKU的  单SKU库存, 单SKU成本价格, 单SKU基准价格, 单SKU市场价格等 放在下一步骤设置  </span>
															</div>
														</div>
														<div class="space-4"></div>
													</div>
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== SKU	 ===================================================================================== End   -->
													
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 商品详情html================================================================================== Start -->
													<div id="descriptiontab" class="tab-pane">
														<div class="wysiwyg-editor" id="descHtml" ></div>
														<input type="hidden" name="descHtmlInput" id="descHtmlInput" value="" />	<!-- 商品 -->
														<div style="display:none;" id="descHtmlInputDiv">${myDescHtml}</div>
														<input type="hidden" name="descHtmlInputOld" id="descHtmlInputOld" value="">
														<div class="hr hr-double dotted"></div>
													</div>
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 商品详情html ===================================================================================== End   -->
	
												</div>
											</div>
											
											
											<div class="clearfix form-actions">
												<div class="col-md-offset-3 col-md-9">
													<button id="addSaveFunButton" class="btn btn-info" type="button">
														<i class="icon-ok bigger-110"></i>
														保存 
													</button>
<!-- 													&nbsp; &nbsp; &nbsp; -->
<!-- 													<button class="btn" type="reset" id="resetFunButton"> -->
<!-- 														<i class="icon-undo bigger-110"></i> -->
<!-- 														重置 -->
<!-- 													</button> -->
<!-- 													&nbsp; &nbsp;  -->
													<!-- 等待圆圈 -->
													<div id="waitDiv4add" class="icon-spinner icon-spin orange bigger-240 hide" ></div>
												</div>
											</div>
											
											<div class="space-4"></div>
										</form>
									</div>
								</div>
								<!-- ================================================== Content内容  ================================================== End>>>>>>>>>>>>>>>>>>>>>>>>>>> -->	
								
								<!-- ================================================== SKU模板弹出窗口  不用到================================================== Start>>>>>>>>>>>>>>>>>>>>>>>>>>> -->	
								<div id="modal-form2" class="modal" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
												<h4 class="blue bigger">SKU模板</h4>
											</div>

											<div class="modal-body overflow-visible">
												<div class="row">
													<div class="col-xs-12 col-sm-7">
																																						
													</div>
												</div>
											</div>

											<div class="modal-footer">
												<button class="btn btn-sm" data-dismiss="modal">
													<i class=""></i>
													确定
												</button>
											</div>
										</div>
									</div>
								</div><!-- PAGE CONTENT ENDS -->				
								<!-- ================================================== SKU模板弹出窗口  ================================================== End>>>>>>>>>>>>>>>>>>>>>>>>>>> -->	

								<div class="hr hr32 hr-dotted"></div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
					
					
					
				<!-- 第一步添加商品成功后, forward到sku设置页面用 -->
				<form id="modifyForm" method="post">
					<input type="hidden" name="buyMax" />
					<input type="hidden" name="costPrice" />
					<input type="hidden" name="marketPrice" />
					<input type="hidden" name="productId" />
					<input type="hidden" name="title" />	<!-- 相当于productName -->
					<input type="hidden" name="sn" />
					<input type="hidden" name="unit" />
					<input type="hidden" name="vendorId" value="${ requestPojo.vendorId }" />
					<input type="hidden" name="vendorName" value="${ requestPojo.vendorName }" />	<!-- 介贷直接通过页面获得 -->
				</form>


<%-- 		<jsp:include page="../frame_bottom.jsp"  /> --%>
		<%@ include  file="../frame_bottom.jsp"%>
		<!-- 底部模块及代共js -->
		
		<script type="text/javascript">
jQuery(function($){
		// 全局变量  ================================================================================================================================================================ Start<<<<<<<<<<<<
		//	=========================================================================================================================================================================================
		//waiting 圆圈图片 div id
		var waitDivId = "waitDiv4add";
		
		// 全局变量  ================================================================================================================================================================ End>>>>>>>>>>>>>
		//	=========================================================================================================================================================================================
		
		//返回 按钮 
		$("#backBut").click(function() {
			history.back();
		});
		
		//sku最大库存 插件 =====================================================================================================================================================================Start=====
		//=========================================================================================================================================================================================
// 		$('#buyMax').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
		//sku最大库存 插件 =====================================================================================================================================================================End=====
		//=========================================================================================================================================================================================
		//上图片插件 =====================================================================================================================================================================Start=====
		//=========================================================================================================================================================================================
		$('#imageUrl').ace_file_input({
			style:'well',
			btn_choose:'把图片拖拉或点击选择',
			btn_change:null,
			no_icon:'icon-cloud-upload',
			droppable:true,
			whitelist:'gif|png|jpg|jpeg',
			thumbnail:'small'//large | fit
			//,icon_remove:null//set null, to hide remove/reset button
			,before_change:function(files, dropped) {
				//Check an example below
				//or examples/file-upload.html
				return true;
			}
		/**
			,before_remove : function() {
				alert("remove");
				return true;
			}*/
			,
			preview_error : function(filename, error_code) {
// 				alert("preview_error");
				//name of the file that failed
				//error_code values
				//1 = 'FILE_LOAD_FAILED',
				//2 = 'IMAGE_LOAD_FAILED',
				//3 = 'THUMBNAIL_FAILED'
				//alert(error_code);
			}
	
		}).on('change', function(){
			//console.log($(this).data('ace_input_files'));
			//console.log($(this).data('ace_input_method'));
				
		});
		
		//dynamically change allowed formats by changing before_change callback function
		$('#imageUrl-format').removeAttr('checked').on('change', function() {
			var before_change
			var btn_choose
			var no_icon
			if(this.checked) {
				btn_choose = "拖放图片或者点击选择 ";
				no_icon = "icon-picture";
				before_change = function(files, dropped) {
					var allowed_files = [];
					for(var i = 0 ; i < files.length; i++) {
						var file = files[i];
						if(typeof file === "string") {
							//IE8 and browsers that don't support File Object
							if(! (/\.(jpe?g|png|gif|bmp)$/i).test(file) ) return false;
						}
						else {
							var type = $.trim(file.type);
							if( ( type.length > 0 && ! (/^image\/(jpe?g|png|gif|bmp)$/i).test(type) )
									|| ( type.length == 0 && ! (/\.(jpe?g|png|gif|bmp)$/i).test(file.name) )//for android's default browser which gives an empty string for file.type
								) continue;//not an image so don't keep this file
						}
						
						allowed_files.push(file);
					}
					if(allowed_files.length == 0) return false;
	
					return allowed_files;
				}
			}
			else {
				btn_choose = "拖放文件或者点击选择 ";
				no_icon = "icon-cloud-upload";
				before_change = function(files, dropped) {
					return files;
				}
			}
			var file_input = $('#imageUrl');
			file_input.ace_file_input('update_settings', {'before_change':before_change, 'btn_choose': btn_choose, 'no_icon':no_icon});
			file_input.ace_file_input('reset_input');
			
		});
// 		$('#imageUrl-format').attr("checked", "checked");
		
		$('#productTopImagesList').ace_file_input({
			style:'well',
			btn_choose:'把图片拖拉或点击选择',
			btn_change:null,
			no_icon:'icon-cloud-upload',
			droppable:true,
			thumbnail:'small'//large | fit
			//,icon_remove:null//set null, to hide remove/reset button
			/**,before_change:function(files, dropped) {
				//Check an example below
				//or examples/file-upload.html
				return true;
			}*/
			/**,before_remove : function() {
				return true;
			}*/
			,
			preview_error : function(filename, error_code) {
				//name of the file that failed
				//error_code values
				//1 = 'FILE_LOAD_FAILED',
				//2 = 'IMAGE_LOAD_FAILED',
				//3 = 'THUMBNAIL_FAILED'
				//alert(error_code);
			}
	
		}).on('change', function(){
			//console.log($(this).data('ace_input_files'));
			//console.log($(this).data('ace_input_method'));
		});
		
		$('#imageUrl-format11').removeAttr('checked').on('change', function() {
			var before_change
			var btn_choose
			var no_icon
			if(this.checked) {
				btn_choose = "拖放图片或者点击选择 ";
				no_icon = "icon-picture";
				before_change = function(files, dropped) {
					var allowed_files = [];
					for(var i = 0 ; i < files.length; i++) {
						var file = files[i];
						if(typeof file === "string") {
							//IE8 and browsers that don't support File Object
							if(! (/\.(jpe?g|png|gif|bmp)$/i).test(file) ) return false;
						}
						else {
							var type = $.trim(file.type);
							if( ( type.length > 0 && ! (/^image\/(jpe?g|png|gif|bmp)$/i).test(type) )
									|| ( type.length == 0 && ! (/\.(jpe?g|png|gif|bmp)$/i).test(file.name) )//for android's default browser which gives an empty string for file.type
								) continue;//not an image so don't keep this file
						}
						
						allowed_files.push(file);
					}
					if(allowed_files.length == 0) return false;
	
					return allowed_files;
				}
			}
			else {
				btn_choose = "拖放文件或者点击选择 ";
				no_icon = "icon-cloud-upload";
				before_change = function(files, dropped) {
					return files;
				}
			}
			var file_input2 = $('#productTopImagesList');
			file_input2.ace_file_input('update_settings', {'before_change':before_change, 'btn_choose': btn_choose, 'no_icon':no_icon});
			file_input2.ace_file_input('reset_input');
		});
		//上图片插件 =====================================================================================================================================================================End=======
		//=========================================================================================================================================================================================
			
		//=========================================================================================================================================================================================
		//树形 插件 =====================================================================================================================================================================Start=====
		var isRefresh = true;
        
        //刷新类别树节点选择列表
        function refreshPid(){
       	 //$("#pid").append();
       	 if(isRefresh){
	        	 $.get("catalogList.php",{},function(data){
	        		 $("#pid option").remove();
	        		 $("#pid").append("<option value='0'>--根目录--</option>");
	        		 $(data.result).each(function(i,item){
	        			  $("#pid").append("<option value='"+item.catalogId+"'>"+item.catalogName+"</option>");
	        		 });
	        	 });
	        	 isRefresh = false;
       	 }
        }
		var DataSourceTree = function (options) {
  			this.url = options.url;
  		 }

        DataSourceTree.prototype.data = function (options, callback) {
               var self = this;
               var $data = null;

               var param = null

               if (!("name" in options) && !("type" in options)) {
                   param = 0;//load the first level  
               }
               else if ("type" in options && options.type == "folder") {
                   if ("additionalParameters" in options && "children" in options.additionalParameters) {
                       param = options.additionalParameters["id"];
                   }
               }

               if (param != null) { 
                   $.ajax({
                       url: this.url,
                       data: 'pid=' + param,
                       type: 'POST',
                       dataType: 'json',
                       success: function (response) {
                               callback({ data: response.result })
                       },
                       error: function (response) {
                           //console.log(response);
                       }
                   })
               }
           };
		 
		 function loadTreeData(){
			 //$("#tree1").removeData("fu.tree");
            // $("#tree1").unbind('click.fu.tree');
        	 //加载商品类别treedata
             $('#tree1').ace_tree({
     			dataSource: new DataSourceTree({ url: 'catalogListByPid.php' }) ,
     			multiSelect:true,
     			loadingHTML:'<div class="tree-loading"><i class="icon-refresh icon-spin blue"></i></div>',
     			'open-icon' : 'icon-minus',
     			'close-icon' : 'icon-plus',
     			'selectable' : true,
     			'selected-icon' : 'icon-ok',
     			'unselected-icon' : 'icon-remove'
     		});
         }
		loadTreeData();
		refreshPid();
		//=========================================================================================================================================================================================
		//树形 插件 =====================================================================================================================================================================End=======
		//=========================================================================================================================================================================================
		//=========================================================================================================================================================================================
			
			
		//spinner 插件 =====================================================================================================================================================================Start=======
		//=========================================================================================================================================================================================
		$('#buyMax').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
		$('#skuMaxCounts').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
		$('#skuCostPrice').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
		$('#skuBasePrice').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
		$('#skuMarketPrice').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
		//spinner 插件 =====================================================================================================================================================================End=======
		//=========================================================================================================================================================================================
			
		//多选列表 插件 =====================================================================================================================================================================Start=======
		//=========================================================================================================================================================================================
		$(".chosen-select").chosen(); 			//介贷 只能放在第一个tab ,有组件bug 
		//多选列表 插件 =====================================================================================================================================================================End=======
		//=========================================================================================================================================================================================
		
		//sku模板选择框 change
		var skuProTemplateSeleCach = [];
		var skuProTemplateSeleFun = function() {
			var resultInfoTitle = "查看sku模板";
			var url = "showSkuTemDetail.php?id=" + $(this).val() ; 
// 			var skuProTempPro = {};
// 			skuProTempPro.sproTempId = $(this).val();
			$.ajax({
		        type : 'get',
		       	url : url,
// 		        dataType:'json',
// 				contentType:'application/json;charset=UTF-8',
// 		        data: skuProTempPro,
		        success : function(data) {
		        	$("#skuProTemplateSeleDetail").html(data.result);
		        	skuProTemplateSeleCach = data.SkuProTempProList;
		        },
		        error : function() {
		        	alterFun(resultInfoTitle, "失败 . ", 3000, 2);
		        	defaultError();
		        }
		     });
		}
		$("#skuProTemplateSele").change(skuProTemplateSeleFun);
		//属性模板选择框  change
		var proModelSeleCach = [];
		var proModelSeleFun = function() {
			var resultInfoTitle = "查看属性模板";
			var url = "showProTemDetail.php?id=" + $(this).val() ; 
// 			var skuProTempPro = {};
// 			skuProTempPro.sproTempId = $(this).val();
			$.ajax({
		        type : 'get',
		       	url : url,
// 		        dataType:'json',
// 				contentType:'application/json;charset=UTF-8',
// 		        data: skuProTempPro,
		        success : function(data) {
		        	proModelSeleCach = data.result;
// 	        		console.log("proModelSeleCach >>>>", proModelSeleCach);
		        	var outHtml = "";
		        	for (pro in proModelSeleCach) {
// 		        		console.log("pro >>>>", pro);
		        		outHtml += "&nbsp;&nbsp;&nbsp;&nbsp;" + proModelSeleCach[pro].paramName;
		        		outHtml += "/" + proModelSeleCach[pro].paramUil;
		        	}
		        	$("#proModelSeleDiv").html(outHtml);
		        },
		        error : function() {
		        	alterFun(resultInfoTitle, "失败 . ", 3000, 2);
		        	defaultError();
		        }
		     });
		}
		$("#proModelSele").change(proModelSeleFun);
		
		//属性模板添加按钮fun
		var paramAddBtnFun = function() {
			for (var pro in proModelSeleCach) {
				//每个数组 生成一行
				var appDiv = '<div class="form-group">' 
							+ '<label class="col-sm-3 control-label no-padding-right" ></label>' 
							+ '<div class="col-sm-3">'
								+ '<input value="'+ proModelSeleCach[pro].paramName + '" name="pro"  type="text" placeholder="请输入属性 名" class="col-xs-10 col-sm-4" />'
								+ '<input value="" name="provalue" type="text" placeholder="请输入属性 值" class="col-xs-10 col-sm-4" />'
								+ '<input value="'+ proModelSeleCach[pro].paramUil + '" name="util" type="text" placeholder="请输入单位" class="col-xs-10 col-sm-4" />'
							+ '</div>'
							+ '</div>';
				$("#paramAddBtnDiv").append(appDiv);
			}
		}
		$("#paramAddBtn").click(paramAddBtnFun);
		
		//属性参数单条添加
		var paramSimpleAddBtnFun = function() {
			var appDiv = '<div class="form-group">' 
				+ '<label class="col-sm-3 control-label no-padding-right" ></label>' 
				+ '<div class="col-sm-3">'
					+ '<input value="" name="pro"  type="text" placeholder="请输入属性 名" class="col-xs-10 col-sm-4" />'
					+ '<input value="" name="provalue"  type="text" placeholder="请输入属性 值" class="col-xs-10 col-sm-4" />'
					+ '<input value="" name="util"  type="text" placeholder="请输入单位" class="col-xs-10 col-sm-4" />'
				+ '</div>'
				+ '</div>';
			$("#paramAddBtnDiv").append(appDiv);
		}
		$("#paramSimpleAddBtn").click(paramSimpleAddBtnFun);
		
		//SKU模板添加按钮fun
		var addSkuTemplBtnFun = function() {
			var appDiv = '<div class="form-group">'
							+ '<label class="col-sm-3 control-label no-padding-right" >'
							+ '<input value="' + skuProTemplateSeleCach[0].proName + '" name="skuPro" type="text" placeholder="请输入 组名" />'
							+ '</label>' 
							+ '<div class="col-sm-6">'
							+ '<a href="javascript:addSkuSimple();">+</a>';
			for (var pro in skuProTemplateSeleCach) {
				appDiv += '<input value="' + skuProTemplateSeleCach[pro].proValue + '" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />';
			}
			appDiv	+= '</div></div>';
			console.log("appDiv ", appDiv);
			$("#skuProModelDiv").append(appDiv);
		}
		$("#addSkuTemplBtn").click(addSkuTemplBtnFun);
		//SKU添加单条按钮fun 
		var addSkuSimpleBtnFun = function() {
			var appDiv = '<div class="form-group">'
							+ '<label class="col-sm-3 control-label no-padding-right" >'
							+ '<input value="" name="skuPro" type="text" placeholder="请输入 组名" />'
							+ '</label>' 
							+ '<div class="col-sm-8">'
// 							+ '<a href="javascript:addSkuSimple();">+</a>'
				 			+ '<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />'
				 			+ '<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />'
				 			+ '<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />'
				 			+ '<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />'
				 			+ '<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />'
				 			+ '<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />'
				 			+ '<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />'
				 			+ '<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />'
				 			+ '<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />'
				 			+ '<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />'
				 			+ '<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />'
				 			+ '<input value="" name="skuProVal" type="text" placeholder="请输入 属性名" class="col-sm-3" />'
							+ '</div></div>';
			console.log("appDiv ", appDiv);
			$("#skuProModelDiv").append(appDiv);
		}
		$("#addSkuSimpleBtn").click(addSkuSimpleBtnFun);
		
		//editor 插件 =====================================================================================================================================================================Start=======
		//=========================================================================================================================================================================================
		//$('#descHtml').ace_wysiwyg();//this will create the default editor will all buttons
	
		//but we want to change a few buttons colors for the third style
		$('#descHtml').ace_wysiwyg({
			toolbar:
			[
				'font',
				null,
				'fontSize',
				null,
				{name:'bold', className:'btn-info'},
				{name:'italic', className:'btn-info'},
				{name:'strikethrough', className:'btn-info'},
				{name:'underline', className:'btn-info'},
				null,
				{name:'insertunorderedlist', className:'btn-success'},
				{name:'insertorderedlist', className:'btn-success'},
				{name:'outdent', className:'btn-purple'},
				{name:'indent', className:'btn-purple'},
				null,
				{name:'justifyleft', className:'btn-primary'},
				{name:'justifycenter', className:'btn-primary'},
				{name:'justifyright', className:'btn-primary'},
				{name:'justifyfull', className:'btn-inverse'},
				null,
				{name:'createLink', className:'btn-pink'},
				{name:'unlink', className:'btn-pink'},
				null,
				{name:'insertImage', className:'btn-success'},
				null,
				'foreColor',
				null,
				{name:'undo', className:'btn-grey'},
				{name:'redo', className:'btn-grey'}
			],
			'wysiwyg': {
				fileUploadError: showErrorAlert
			}
		}).prev().addClass('wysiwyg-style2'); 
		function showErrorAlert (reason, detail) {
			var msg='';
			if (reason==='unsupported-file-type') { msg = "Unsupported format " +detail; }
			else {
				console.log("error uploading file", reason, detail);
			}
			$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'+ 
			 '<strong>File upload error</strong> '+msg+' </div>').prependTo('#alerts');
		}
		//Add Image Resize Functionality to Chrome and Safari
		//webkit browsers don't have image resize functionality when content is editable
		//so let's add something using jQuery UI resizable
		//another option would be opening a dialog for user to enter dimensions.
		if ( typeof jQuery.ui !== 'undefined' && /applewebkit/.test(navigator.userAgent.toLowerCase()) ) {
			
			var lastResizableImg = null;
			function destroyResizable() {
				if(lastResizableImg == null) return;
				lastResizableImg.resizable( "destroy" );
				lastResizableImg.removeData('resizable');
				lastResizableImg = null;
			}

			var enableImageResize = function() {
				$('.wysiwyg-editor')
				.on('mousedown', function(e) {
					var target = $(e.target);
					if( e.target instanceof HTMLImageElement ) {
						if( !target.data('resizable') ) {
							target.resizable({
								aspectRatio: e.target.width / e.target.height,
							});
							target.data('resizable', true);
							
							if( lastResizableImg != null ) {//disable previous resizable image
								lastResizableImg.resizable( "destroy" );
								lastResizableImg.removeData('resizable');
							}
							lastResizableImg = target;
						}
					}
				})
				.on('click', function(e) {
					if( lastResizableImg != null && !(e.target instanceof HTMLImageElement) ) {
						destroyResizable();
					}
				})
				.on('keydown', function() {
					destroyResizable();
				});
		    }
			
			enableImageResize();

			/**
			//or we can load the jQuery UI dynamically only if needed
			if (typeof jQuery.ui !== 'undefined') enableImageResize();
			else {//load jQuery UI if not loaded
				$.getScript($path_assets+"/js/jquery-ui-1.10.3.custom.min.js", function(data, textStatus, jqxhr) {
					if('ontouchend' in document) {//also load touch-punch for touch devices
						$.getScript($path_assets+"/js/jquery.ui.touch-punch.min.js", function(data, textStatus, jqxhr) {
							enableImageResize();
						});
					} else	enableImageResize();
				});
			}
			*/
		}
		//editor 插件 =====================================================================================================================================================================End=======
		//=========================================================================================================================================================================================
		//初始化 editer
		$("#descHtml")[0].innerHTML = $("#descHtmlInputDiv").html();
		var oldAllMD5 = MD5($("#productUpateForm").serialize());
		//保存事件 =====================================================================================================================================================================Start=====
		//=========================================================================================================================================================================================
		var valiate4addSaveFunButton = function() {
			//非空 ========================================start 
			
			if ($("#pTitle").val() == "") {
				alterFun("验证信息", "原商品名，不能为空");
				return false;
			}
			if ($("#title").val() == "") {
				alterFun("验证信息", "APP商品名，不能为空");
				return false;
			}
			if ($("#tagIdList").val() == null || $("#tagIdList").val() == "") {
				alterFun("验证信息", "标签，不能为空");
				return false;
			}
			if ($("#costPrice").val() == "") {
				alterFun("验证信息", "成本价格，不能为空");
				return false;
			}
			if ($("#basePrice").val() == "") {
				alterFun("验证信息", "基准价格，不能为空");
				return false;
			}
			if ($("#marketPrice").val() == "") {
				alterFun("验证信息", "出售价格，不能为空");
				return false;
			}
			if ($("#recommend").val() == "") {
				alterFun("验证信息", "推荐语，不能为空");
				return false;
			}
			if ($("#unit").val() == "") {
				alterFun("验证信息", "单位，不能为空");
				return false;
			}
			if ($("#descHtml")[0].innerHTML == "" || $("#descHtml")[0].innerHTML == null) {
				alterFun("验证信息", "图文详情，不能为空");
				return false;
			}
			//非空 ========================================end
// 			var reg = new RegExp("^[0-9]*$");
// 			var reg = new RegExp("^\d+(.\d+)+\d+$");
// 			var reg = /^([0-9]\d*)(\.{0,1}\d*[1-9])?$/;   
			var reg = /^\d+\.\d+$/;   
		      if(!reg.test($("#costPrice").val())){
		    	  alterFun("验证信息", "成本价格，请输入数字");
			      return false;
		      }
		      if(!reg.test($("#basePrice").val())){
		    	  alterFun("验证信息", "基准价格，请输入数字");
			      return false;
		      }
		      if(!reg.test($("#marketPrice").val())){
		    	  alterFun("验证信息", "出售价格，请输入数字");
			      return false;
		      }
		      
		      //unit字符不能超过两个
		      if ($("#unit").val().length > 2) {
				alterFun("验证信息", "单位: 字符超限");
				return false;
			}
		    if($("#recommend").val().length > 80){
					alterFun("验证信息", "推荐语不能超过80个字，请更改保存");
					return false;
			}
			return true;
		}
		
		//更改标签(可以多个标签), 更改类别, 更改上传缩略图片,TOP图片, 更改商品基础信息, 更改SKU信息, 更改商品参数信息, 更改商品html详情信息
		$("#addSaveFunButton").click(function(){
			
			//标签 
			var tagHtmlList = "";
			$("#tagIdList_chosen").find("ul li a.search-choice-close").each(function(index) {
				var val = $(this).attr("data-option-array-index");
// 				console.log(">>> ", document.getElementsByName("tagIdListOpt")[index].value);
				if (index == 0) {
					tagHtmlList += document.getElementsByName("tagIdListOpt")[val].value;
				} else {
					tagHtmlList += tagHtmlList + "," + document.getElementsByName("tagIdListOpt")[val].value;
				}
			});
			$("#tagHtmlList").val(tagHtmlList);
// 			console.log($("#tagIdList_chosen").find("ul:first").html());
			if(!valiate4addSaveFunButton()){
				return;
			};//	校验 
			
			//整体 对比是否更新 
			newAllMD5 = MD5($("#productUpateForm").serialize());
			if (newAllMD5 === oldAllMD5) {
				alterFun("验证信息", "并没有更改,请更改再保存");
			}
			
			//类别 
			var cataHtmlList = "";
			var items = $('#tree1' ).tree('selectedItems');
			var chekcedResultList = [];
	       	for (var i in items) if (items.hasOwnProperty(i)) {
                var item = items[i];
                console.log("items[i]", items[i].id);
//                 chekcedResultList[i] = item.additionalParameters['id'];
                if (i == 0) {
	                cataHtmlList = items[i].id;
                } else {
	                cataHtmlList += "," + items[i].id;
                }
	        }
	       	
	       	if (cataHtmlList == "") {
				alterFun("验证信息", "品类,请选择");
				return;
			}
// 	       	console.log("cataHtmlList", cataHtmlList);
	       	$("#cataHtmlList").val(cataHtmlList);
	       	
	       	//属性参数
	       	var paramHtmlList = "";
// 	       	console.log("xxxxxx", $("#paramAddBtnDiv").find("div.form-group"));
	       	$("#paramAddBtnDiv").find("div.form-group").each(function() {
	       		var pro = $(this).find("input[name=pro]").val();
	       		var val = $(this).find("input[name=provalue]").val();
	       		var util = $(this).find("input[name=util]").val();
	       		if (val != null && val != "" && pro != null & pro != "") {
	       			paramHtmlList += pro + ":" + val + ":" + util + ";"
	       		}
	       		console.log("paramHtmlList > ", paramHtmlList);
	       	});
	       	$("#paramHtmlList").val(paramHtmlList);
//        		console.log("paramHtmlList >>> ", paramHtmlList);
	       	//SKU参数
	       	var skuHtmlList = "";
// 	       	console.log("xxxxxx", $("#skuProModelDiv").find("div.form-group"));
	       	$("#skuProModelDiv").find("div.form-group").each(function() {
	       		var pro = $(this).find("input[name=skuPro]").val();
	       		if (pro != null && pro != "") {
	       			var skuHtmlList2 = "";
		       		$(this).find("input[name=skuProVal]").each(function(){
		       			console.log("val >>> ", $(this).val());	
			       		if ($(this).val() != null && $(this).val() != "") {
			       			skuHtmlList2 += $(this).val() + ",";
			       		}
		       		});
		       		if (skuHtmlList2 != "") {
		       			skuHtmlList += pro + "," + skuHtmlList2.substr(0, skuHtmlList2.length - 1) + ";";
		       		}
	       		}
	       		console.log("skuHtmlList > ", skuHtmlList);
	       	});
	       	if(skuHtmlList == ""){
	       		alterFun("验证信息", "SKU,请至少添加一条");
				return;
	       	}
	       	$("#skuHtmlList").val(skuHtmlList);
       		console.log("skuHtmlList >>> ", skuHtmlList);
// 	       	return;
	       	//Editor框
			$("#descHtmlInput").val($("#descHtml")[0].innerHTML);
			
			var formData = new FormData($("#productUpateForm")[0]);
			var url = "product_add.php";
			var resultInfoTitle = "保存商品信息";
// 			console.log("#descHtml", $("#descHtml")[0].innerHTML);
// 			console.log("#descHtmlInput", $("#descHtmlInput").val());
			modiAjax4Upload(url, formData, waitDivId, resultInfoTitle, uploadSuce);
		});
		//添加商品成功事件 
		var uploadProductObj;
		function uploadSuce(data) {
// 			history.back();
			//添加成功后, 就可以 添加sku 详情信息了 
			//转到 添加 sku页面 
			uploadProductObj = data.result;
			console.log("uploadProductObj >  ", uploadProductObj);
			var modifyForm = "modifyForm";
			
			var openUrl = "product_add_sku.php";
			
			modifySimplePage(uploadProductObj, openUrl, null, modifyForm);
			
		}
		//保存事件 =====================================================================================================================================================================End=====
		//=========================================================================================================================================================================================
		
		//test button
		$("#testBtn").click(function() {
			
			var uploadProductObj = {
										"productId":1,
										"buyMax":1,
										"costPrice":1,
										"marketPrice":1,
										"title":"dddddd",
										"sn":"dddddd",
										"unit":"gggg"
									};
			console.log("uploadProductObj >  ", uploadProductObj);
			var modifyForm = "modifyForm";
			
			var openUrl = "product_add_sku.php";
			
			modifySimplePage(uploadProductObj, openUrl, null, modifyForm);
		});
		
});
		</script>
	
</body>
</html>

