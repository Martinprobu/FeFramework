<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<jsp:include page="../frame_top_css.jsp"  />
<!-- 顶部css -->

	<body>
					<c:if test="${source ==null }">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="index.php">首页</a>
							</li>
							<li class="active">商品管理</li>
							<li class="active">商品详情</li>
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
					</c:if>

					<div class="page-content">

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<!-- ================================================== Content内容  ================================================== Start<<<<<<<<<<<<<<<<<<<< -->	
								<div class="table-header">
									<button class="btn  btn-sm" id="backBut">   <!--返回按钮 其他颜色 btn-danger -->
										<i class="icon-reply icon-only" ></i>
									</button>
									商品详情
								</div>
												
								<div class="hr hr10 hr-dotted"></div>
									<div class="col-xs-12" id="addFormDiv"> 
										<form class="form-horizontal" role="form"  id="productUpateForm" name="productUpateForm" >
											<input value="${requestPojo.productId}" name="productId" mustneed="true" id="productId" type="hidden" />
											<input value="${requestPojo.sn}" name="sn" mustneed="true" id="sn" type="hidden" />
											
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
																<label class="col-sm-3 control-label no-padding-right" >商品名</label> 
																<label class="col-sm-3 control-label no-padding-right" >${requestPojo.title}</label> 
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">标签</label> 
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">
																			<c:forEach var="list" items="${myTagList}" varStatus="status" >
																				${list.tag} ,  
																			</c:forEach>
																</label> 
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">成本价格</label> 
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">${requestPojo.costPrice}</label> 
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">基准价格</label> 
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">${requestPojo.basePrice}</label> 
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">推荐语</label> 
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">${requestPojo.recommend}</label> 
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">单位</label> 
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">${requestPojo.unit}</label> 
															</div>
															<div class="space-4"></div>
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">缩略图片</label> 
																<div class="col-sm-6">
																		<img  src="${requestPojo.imageUrl}" />
																</div>
															</div>
															<div class="space-4"></div>
															
															
															
															<div class="form-group">
																<label class="col-sm-3 control-label no-padding-right" for="form-field-1">TOP图片</label> 
																<div class="col-sm-6">
																		<c:forEach var="list" items="${requestPojo.productTopImagesList}" varStatus="status" >  
																			<img src="${list.imageUrl}" width="150px" height="150px">
																		</c:forEach>
																</div>
															</div>
															<div class="space-4"></div>
													</div>
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 基本参数====================================================================================== End -->
	
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 类别       ====================================================================================== Start -->
													<div id="catalogtab" class="tab-pane">
														<div class="form-group">
															<c:forEach var="list" items="${myCatalogList}" varStatus="status" >
																${list.catalogName} , 
															</c:forEach>
														</div>
														<div class="space-4"></div>
													</div>
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 类别       ====================================================================================== End   -->
	
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 商品参数 ===================================================================================== Start -->
													<div id="paramtab" class="tab-pane">
														<div class="form-group">
															<c:forEach var="list" items="${myParameterList}" varStatus="status" >
																		${list.paramName} , 
																		${list.paramValue} <br> 
															</c:forEach>
														</div>
														<div class="space-4"></div>
													</div>
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 商品参数 ====================================================================================== End  -->
													
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== SKU	 ===================================================================================== Start -->
													<div id="skutab" class="tab-pane">
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right" for="form-field-1">上架</label> 
															<div class="col-sm-6">
																<input id="isGroundKey" value="${requestPojo.isGround}" type="hidden" />
																<input name="isGround" id="isGround" class="ace ace-switch ace-switch-7" type="checkbox" value="${requestPojo.isGround}" disabled >
																	<span class="lbl"></span>
															</div>
														</div>
														<div class="space-4"></div>
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right" for="form-field-1">总共最大库存</label> 
															<div class="col-sm-6">
																<label id="buyMaxLabel">${requestPojo.buyMax}</label>
															</div>
														</div>
														<div class="space-4"></div>
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right" for="form-field-1">开启SKU模式</label> 
															<div class="col-sm-6">
																<input id="isSkuKey" value="${requestPojo.isSku}" type="hidden" />
																<input name="isSku"  id="isSku" class="ace ace-switch ace-switch-7" type="checkbox" disabled />
																<span class="lbl"></span>
															</div>
														</div>
														<div class="space-20"></div>
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right" >SKU属性列表</label> 
															<div class="col-sm-6">
															</div>
														</div>
															
															<c:forEach var="list" items="${mySkuProList}" varStatus="status" >  
																<div class="form-group">
																	<label class="col-sm-3 control-label no-padding-right" >${list.proName}</label> 
																	<div class="col-sm-6">
																		<label>
																			<c:forTokens items="${list.proValueList}" delims="," var="name" >
<%-- 																			    <input name="${list.proId}" type="radio" class="ace"  /> --%>
																				<span class="lbl">${name}, </span>
																			</c:forTokens>
																		</label>
																	</div>
																</div>
															</c:forEach>
														<div class="space-4"></div>
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right" >单SKU详细信息</label> 
															<div class="col-sm-6">
																	<table>
																		<tr>
																			<th>组合</th>
																			<th>SKU属性</th>
																			<th>SKU HASH</th>
																			<th>基准价格</th>
																			<th>市场价格</th>
																			<th>成本价格</th>
																			<th>创建时间</th>
																			<th>库存</th>
																		</tr>
																	<c:forEach var="list" items="${mySkuList}" varStatus="status" >
																		<tr>
																			<td>${list.skuContent}</td>
																			<td>${list.skuProps}</td>
																			<td>${list.skuHash}</td>
																			<td>${list.basePrice}</td>
																			<td>${list.marketPrice}</td>
																			<td>${list.costPrice}</td>
																			<td>${list.createTime}</td>
																			<td>${list.buyMax}</td>
																		</tr>
																	</c:forEach>
																</table>
															</div>
														</div>
															
														<div class="space-4"></div>
													</div>
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== SKU	 ===================================================================================== End   -->
													
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 商品详情html================================================================================== Start -->
													<div id="descriptiontab" class="tab-pane">
														<div class="wysiwyg-editor" id="descHtml" >${myDescHtml}</div>
													</div>
													<!-- =============================================================================================================================================================== -->
													<!-- =========================================================== 商品详情html ===================================================================================== End   -->
	
												</div>
											</div>
											
											
											<div class="clearfix form-actions">
												<div class="col-md-offset-3 col-md-9">
<!-- 													<button id="addSaveFunButton" class="btn btn-info" type="button"> -->
<!-- 														<i class="icon-ok bigger-110"></i> -->
<!-- 														修改 -->
<!-- 													</button> -->
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
								
								<!-- ================================================== SKU模板弹出窗口  ================================================== Start>>>>>>>>>>>>>>>>>>>>>>>>>>> -->	
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
		//判断 isSku, isGround
		if ($("#isGroundKey").val() > 0) {
			$("#isGround").attr("checked",true);
		} else {
			$("#isGround").attr("checked",false);
		}
		if ($("#isSkuKey").val() > 0) {
			$("#isSku").attr("checked",true);
		} else {
			$("#isSku").attr("checked",false);
		}
		//填充sku
// 		var skuList = ${list.proValueList};
// 		console.log("sku", skuList);
		
		
		//返回 按钮 
		$("#backBut").click(function() {
			history.back();
		});
		
		//sku最大库存 插件 =====================================================================================================================================================================Start=====
		//=========================================================================================================================================================================================
// 		$('#buyMax').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
		//sku最大库存 插件 =====================================================================================================================================================================End=====
		//=========================================================================================================================================================================================
			
		//多选列表 插件 =====================================================================================================================================================================Start=======
		//=========================================================================================================================================================================================
		$(".chosen-select").chosen(); 
		//多选列表 插件 =====================================================================================================================================================================End=======
		//=========================================================================================================================================================================================
		
		
		//editor 插件 =====================================================================================================================================================================Start=======
		//=========================================================================================================================================================================================
		//$('#descHtml').ace_wysiwyg();//this will create the default editor will all buttons
	
		//but we want to change a few buttons colors for the third style
		//editor 插件 =====================================================================================================================================================================End=======
		//=========================================================================================================================================================================================
		
		//修改事件 =====================================================================================================================================================================Start=====
		//=========================================================================================================================================================================================
		//更改标签(可以多个标签), 更改类别, 更改上传缩略图片,TOP图片, 更改商品基础信息, 更改SKU信息, 更改商品参数信息, 更改商品html详情信息
		//修改sku等商品 参数 
// 		var modifySimplefun = function(columnId) {
// 			console.log("modifyJon  ", resultList[columnId]);
// 			var openUrl = "vendor_product_modi.php";
// 			var modifyForm = "modifyForm";
// 			modifySimplePage(resultList[columnId], openUrl, waitDivId, modifyForm);
// 		}
		$("#addSaveFunButton").click(function(){
			
		});
		
		//修改事件 =====================================================================================================================================================================End=====
		//=========================================================================================================================================================================================
		
});
		</script>
	
</body>
</html>

