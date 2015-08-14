<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
								<div class="row">
								
									<div class="col-xs-12">
										<div class="table-header">
											<button class="btn  btn-sm" id="backBut">   <!--返回按钮 其他颜色 btn-danger -->
												<i class="icon-reply icon-only" ></i>
											</button>
											供应商 : <span style="font-weight:bold">${ vendorName }</span>   . 商品列表如下   
											<button class="btn btn-info btn-sm" id="addBtn">添加商品</button>
										</div>
										<form id="vendorIdForm" method="post"> <!-- 用到进和商品添加页面 -->
											<input name="vendorId" type="hidden" value="${ vendorId }" /> 
											<input name="vendorName" type="hidden" value="${ vendorName }" />
										</form> 

										<div class="table-responsive">
											<div id="sample-table-2_wrapper" class="dataTables_wrapper" role="grid">
												<div class="row">
													<div class="col-sm-6">
														<div id="sample-table-2_length" class="dataTables_length">
															<label>每页显示 
																<select id="everyPage" size="1" name="sample-table-2_length" aria-controls="sample-table-2">
																	<option value="10" selected="selected">10</option>
																	<option value="25">25</option>
																	<option value="50">50</option>
																	<option value="100">100</option>
																</select>条数据 &nbsp;
															</label>
															<!-- 刷新按钮 -->
															<a href="#" data-action="reload" id="reloadListBut" >
																<i class="icon-refresh"></i>
															</a>
															<!-- 等待圆圈 -->
															<div id="WaitDiv4lsittable" class="icon-spinner icon-spin orange bigger-240 hide" ></div>
<!-- 															<button class="btn btn-info btn-sm icon-external-link" id="upBtn">上架</button> -->
														</div>
													</div>
												</div>
												
											<div id="pageTableDiv1">
												<table id="" class="table table-striped table-bordered table-hover dataTable" aria-describedby="sample-table-2_info">
													<thead>
														<tr>
														
<!-- 															<th class="center"> -->
<!-- 																<label> -->
<!-- 																	<input type="checkbox" class="ace" name="productId" id="allcheck"  />	全选 -->
<!-- 																	<span class="lbl"></span> -->
<!-- 																</label> -->
<!-- 															</th> -->
																
															<th name="pTitle">原商品名</th>
															<th name="title">APP商品名</th>
															<th name="productId">商品id</th>
															<th name="sn">SN码</th>
															<th name="recommend">推荐语</th>
															<th name="marketPrice">市场价格</th>
															<th name="praiseCount">点赞数</th>
															<th name="relayCount">转发数</th>
															<th name="buyMax">库存</th>
															<th name="isGround" istrue="true" >是否上架</th>
															<th name="isFlash" istrue="true" >是否闪购</th>
															<th name="flashTime">闪购限时数</th>
															<th></th>
														</tr>	
													</thead>

														<tbody role="alert" aria-live="polite" aria-relevant="all">
														</tbody>
													</table>
													
													<div class="row" >
															<div class="col-sm-6">
																<div class="dataTables_info" id="pageCountDiv">第 1 到 1 条(共1条数据)</div>
															</div>
															<div class="col-sm-6">
																<div class="dataTables_paginate paging_bootstrap">
																	<ul class="pagination" id="pageNoDiv">
																		<li class="prev disabled"><a href="#"> << </a></li>
																		<li class="active"><a href="#">1</a></li>
																		<li><a href="#">2</a></li>
																		<li><a href="#">3</a></li>
																		<li><a href="#">...</a></li>
																		<li class="next"><a href="#"> >> </a></li>
																	</ul>
																</div>
															</div>
													</div>
												</div>
													
										</div>
										</div>
									</div>
								</div>
								<!-- ================================================== Content内容  ================================================== End>>>>>>>>>>>>>>>>>>>>>>>>>>> -->					

								<div class="hr hr32 hr-dotted"></div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->

				
				
				<!-- 修改页面用 -->
				<form id="modifyForm" method="post">
					<input type="hidden" name="basePrice" />
					<input type="hidden" name="buyMax" />
					<input type="hidden" name="buyMin" />
					<input type="hidden" name="catalogId" />
					<input type="hidden" name="catalogName" />
					<input type="hidden" name="costPrice" />
					<input type="hidden" name="createUserId" />
					<input type="hidden" name="imageUrl" />
					<input type="hidden" name="isFlash" />
					<input type="hidden" name="isGround" />
					<input type="hidden" name="isSku" />
					<input type="hidden" name="marketPrice" />
					<input type="hidden" name="praiseCount" />
					<input type="hidden" name="productId" />
					<input type="hidden" name="productTopImgCounts" />
					<input type="hidden" name="recommend" />
					<input type="hidden" name="relayCount" />
					<input type="hidden" name="sn" />
					<input type="hidden" name="title" />
					<input type="hidden" name="pTitle" />
					<input type="hidden" name="unit" />
					<input type="hidden" name="vendorId" />
					<input type="hidden" name="descriptionUrl" />
					<input type="hidden" name="vendorName" />
				</form>
				


		<jsp:include page="../frame_bottom.jsp"  />
		<!-- 底部模块及代共js -->
		
		<script type="text/javascript">
		
		// 全局变量  ================================================================================================================================================================ Start<<<<<<<<<<<<
		//	=========================================================================================================================================================================================
		//分页waiting 圆圈图片 div id
		var waitDivId = "WaitDiv4lsittable";
		
		//可用作分页, 可用作其他 ,json post方式
		var listUrl = "vendor_product_list.php";
		var requestPojoList = [];
		var requestPojo = {'totalCount':2, 'totalPage':1, 'currentPage':1, 'number':10};	//全局的查询参数 
		requestPojo.vendorId = ${vendorId};		//这种写法 不知道会不会有什么Bug,注意一下 
		console.log("requestPojo >> ", requestPojo);
		var pageTableDivId = "pageTableDiv1";
		var resultList = [];	//本页的  列表 //这数据保存起来可用来 修改某一行记录 
		var chekcedResultList = [];	//已选择按钮 
		
// 		var addUrl = "vendorAdd.php";		//添加/修改 xxx的url
// 		var removeUrl = "vendorRemove.php";		//删除 xxx的url
// 		var waitDiv4add = "waitDiv4add";	//添加/修改 xxx的等待图标,   目前用不了,  Bootbox的bug
// 		var addFormDiv = "addFormDiv";	//添加/修改 xxx的form的Div id
		
		//是否可修改
		var isModify = true;
		//是否可删除
		var isRemove = true;
		//是否可全选
		var isAllSelect = false;
		//列表最后一列里的自定义栏, 查看xxx列表, 没有的话就为 null   //upStock代表上架(进入上架页面,即sku设置), upWeb代表上贷(也有同样的sku页面设置), downStock代表下架(仅是一个异步方法,没有独立的页面) 
// 		var lastColumnHtmlList = [{class:"icon-external-link", title:"上架", method:"upStock"}];		//没有key表示只有一种情况 
		var lastColumnHtmlList = [{class:"icon-zoom-in", title:"详情", method:"simpleDetail"},{class:"icon-edit", title:"SKU配置", method:"skuDetail"}, {key:"isGround", class1:"icon-external-link", title1:"上架", method1:"upStock", class2:"icon-download-alt", title2:"下架", method2:"downStock"}];	//有key(根据此属性判断是否真假)代表,是根据此key,选择title1还是title2
		// 全局变量  ================================================================================================================================================================ End>>>>>>>>>>>>>
		//	=========================================================================================================================================================================================
			
			//返回 
			$("#backBut").click(function() {
				 var openUrl = "vendor.php";
				 window.location.href = openUrl;
			});
			
		
			// 查询  ================================================================================================================================================================== Start<<<<<<<<<<<<
			//	========================================================================================================================================================================================
			//刷新列表请求参数
			var refreshRequestPojo = function() {
				//每页多少条记录
				requestPojo.number = parseInt($("#everyPage").val());
			}
			//商家列表  Server Action ，并填充前端table  @see frame_bottom.jsp
			var listFun = function() {
				//刷新参数
				refreshRequestPojo();
				//直接调后台
				defaultTableFillList(listUrl, requestPojo, pageTableDivId, isModify, isRemove, isAllSelect, lastColumnHtmlList, waitDivId, vendorResultListReturn);
			}
			//return回此列表数据 
			var vendorResultListReturn = function(data) {
				resultList = data;
			}
			//第一次load时运行一次
			listFun();
			//每页几条数据 refresh
			$("#everyPage").change(function() {
				listFun();
			});
			//查询 按钮
			$("#productSearch").click(listFun);
			//查询 按钮
			$("#reloadListBut").click(listFun);
			
			//按商家名字 排序 Fun
			var sortByCoulmns = function(ths) {
				
				//先把其他字段的排序样式去了
				var dbColumn = $(ths).attr("db-cloumns");
				var className = $(ths).attr("class");
				var htmlName = $(ths).attr("name");
// 				console.log("  htmlName >>>>> ", htmlName);
				//把其他的 排序字段css还原为 $(ths).attr("class", "sorting");
// 				$(ths).parent().find("th[class=sorting name!=" + htmlName + "]").each(function() {
// 				$(ths).parent().find("th[class=sorting][class=sorting_desc][class=sorting_asc]").each(function() {
				$(ths).parent().find(".sorting,.sorting_desc,.sorting_asc").each(function() {
					 	var thisName = $(this).attr("name");
						if (thisName != htmlName) {
							$(this).attr("class", "sorting");
						}
				});
				if (className === "sorting") {	//还没排序  
					$(ths).attr("class", "sorting_asc");
					requestPojo.orderby = dbColumn + " asc";
				} else if (className === "sorting_desc") {
					$(ths).attr("class", "sorting");
					requestPojo.orderby = "update_time desc";
				} else if (className === "sorting_asc") {
					$(ths).attr("class", "sorting_desc");
					requestPojo.orderby = dbColumn + " desc";
				}
				console.log("sort requestobj > ", requestPojo);
				listFun();
				
			}
			// 查询  ================================================================================================================================================================== End>>>>>>>>>>>>>
			//	=======================================================================================================================================================================================
				
			// 分页  ================================================================================================================================================================== Start<<<<<<<<<<<<
			//	=======================================================================================================================================================================================
			//指定页码
			var currentPageList = function (page) {
				requestPojo.currentPage = page;
				listFun();
			}
			//前一页
			var prevPageList = function () {
				requestPojo.currentPage --;
				listFun();
			}
			//后一页
			var nextPageList = function () {
				requestPojo.currentPage ++;
				listFun();
			}
			// 分页  ==================================================================================================================================================================== End>>>>>>>>>>>>>
			//	=========================================================================================================================================================================================
				
			// 上下架  ==================================================================================================================================================================== Start>>>>>>>>>>>
			//	=========================================================================================================================================================================================
			//上架 
			var upStock = function(columnId) {
				console.log("modifyJon  ", resultList[columnId]);
				var resultInfoTitle = "上架商品";
				var url = "upStock.php";
				modiAjax(url, resultList[columnId], waitDivId, true, resultInfoTitle, listFun);
			}
			//下架 
			var downStock = function(columnId) {
				console.log("modifyJon  ", resultList[columnId]);
				var resultInfoTitle = "下架商品";
				var url = "downStock.php";	
				modiAjax(url, resultList[columnId], waitDivId, true, resultInfoTitle, listFun);
			}
			//查看详情
			var simpleDetail = function(columnId) {
				console.log("modifyJon  ", resultList[columnId]);
				var openUrl = "vendor_product_view.php";
				var modifyForm = "modifyForm";
				modifySimplePage(resultList[columnId], openUrl, waitDivId, modifyForm);
			}
			//skuDetail配置
			var skuDetail = function(columnId) {
				var openUrl = "product_add_sku.php";
				var modifyForm = "modifyForm";
				modifySimplePage(resultList[columnId], openUrl, waitDivId, modifyForm);
			}
			//修改sku等商品 参数 
			var modifySimplefun = function(columnId) {
				console.log("modifyJon  ", resultList[columnId]);
				var openUrl = "vendor_product_modi.php";
				var modifyForm = "modifyForm";
				modifySimplePage(resultList[columnId], openUrl, waitDivId, modifyForm);
			}
			
			//添加商品 
			var addProductFun = function() {
// 				console.log("modifyJon  ", resultList[0]);	//后台只用vendorId,vendorName
				var openUrl = "vendor_product_add.php";
				var modifyForm = "vendorIdForm";
				modifySimplePage(null, openUrl, waitDivId, modifyForm);
			}
			$("#addBtn").click(addProductFun);
			//删除 商品
			var removeSimplefun = function(columnId) {
				var popRemoveDivMsg = "确定要删除商品 ? ";
				confirmPopWin(popRemoveDivMsg, removeSimplefunGo, columnId);
			}
			var removeSimplefunGo = function(columnId) {
				console.log("modifyJon  ", resultList[columnId]);
				var resultInfoTitle = "删除商品";
				var url = "product_remo.php";	
				modiAjax(url, resultList[columnId], waitDivId, true, resultInfoTitle, listFun);
			}
			// 上下架  ==================================================================================================================================================================== End>>>>>>>>>>>>>
			//	=========================================================================================================================================================================================
	
		
		</script>
	
</body>
</html>

