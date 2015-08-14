<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../frame_top_css.jsp"  />
<!-- 顶部css -->

<body>
		
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
 			</script>

<!-- 				<a class="menu-toggler" id="menu-toggler" href="#"> -->
<!-- 					<span class="menu-text"></span> -->
<!-- 				</a> -->

					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="index.php">首页</a>
							</li>
							<li class="active">供应商</li>
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
										<div class="widget-box">
											<input id="searchName" type="text" size="32" class="search-query" placeholder="输入商家名称" style="padding:10">
											<button id="searchBtn" class="btn btn-purple btn-sm">查询<i class="icon-search icon-on-right bigger-110"></i></button>
											<button class="btn btn-info btn-sm" id="addBtn">添加</button>
											<button class="btn btn-sm" id="removeBtn" >删除</button>
										</div>
										<div class="table-header">
											 供应商列表如下 
										</div>

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
														</div>
													</div>
												</div>
												
											<div id="pageTableDiv1">
												<table id="" class="table table-striped table-bordered table-hover dataTable" aria-describedby="sample-table-2_info">
													<thead>
														<tr>
															<th class="center">
																<label>
																	<input type="checkbox" class="ace" name="vendorId" id="allcheck"  />	<!-- 全选 -->
																	<span class="lbl"></span>
																</label>
															</th>
															<th class="sorting" name="vendorName" onclick="sortByCoulmns(this)" db-cloumns="vendor_name">
																<span class="tooltip-warning"  title=""  >商家名字</span>
															</th>
															<th name="linkName"  db-cloumns="link_name">
																<span class="tooltip-warning"   title=""  >联系法人</span>
															</th>
															<th name="mobilephone">手机</th>
															<th name="telephone">固话</th>
															<th name="salePrice">销售额</th>
															<th name="saleCounts">销售单数</th>
															<th name="status">状态</th>
															<th name="address">地址</th>
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
						<!-- 弹出页面demo1 
						<div id="addFormDiv" class="hide">
							<form class="form-horizontal" role="form">
									<input name="vendorId" type="hidden" />	
									<div class="form-group" style="position: relative; z-index: 9999;">
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
									 <div class="clearfix">
										<div class="col-md-offset-3 col-md-12">
											<button onclick="addFun()" id="addSaveFunButton" class="btn btn-info" type="button">
												<i class="icon-ok bigger-110"></i>
												保存 
											</button>
											&nbsp; &nbsp; 
											<button class="btn" type="reset">
												<i class="icon-undo bigger-110"></i>
												重置
											</button>
											&nbsp; &nbsp; 
											<div id="waitDiv4add" class="icon-spinner icon-spin orange bigger-240 hide" ></div>
										</div>
									</div>
									<div class="space-4"></div>
									<div class="space-4"></div>
								</form>
						</div>
						-->
									
					</div><!-- /.page-content -->

				
		
		<jsp:include page="../frame_bottom.jsp"  />
		
		<!-- 修改页面用 -->
		<form id="modifyForm" method="post">
			<input type="hidden" name="vendorId" />
			<input type="hidden" name="vendorName" />
			<input type="hidden" name="linkName" />
			<input type="hidden" name="mobilephone" />
			<input type="hidden" name="telephone" />
			<input type="hidden" name="address" />
		</form>
		
		<script type="text/javascript">
			
			// 全局变量  ================================================================================================================================================================ Start<<<<<<<<<<<<
			//	=========================================================================================================================================================================================
			//分页waiting 圆圈图片 div id
			var waitDivId = "WaitDiv4lsittable";
			
			//可用作分页, 可用作其他 ,json post方式
			var listUrl = "vendorList.php";
			var requestPojoList = [];
			var requestPojo = {'totalCount':2, 'totalPage':1, 'currentPage':1, 'number':10};	//全局的查询参数 
// 			requestPojo.userId = 123;
			var pageTableDivId = "pageTableDiv1";
			var resultList = [];	//本页的  列表 //这数据保存起来可用来 修改某一行记录 
			var chekcedResultList = [];	//已选择按钮 
			
			
			var addUrl = "vendorAdd.php";		//添加/修改 xxx的url
			var removeUrl = "vendorRemove.php";		//删除 xxx的url
			var waitDiv4add = "waitDiv4add";	//添加/修改 xxx的等待图标,   目前用不了,  Bootbox的bug
			var addFormDiv = "addFormDiv";	//添加/修改 xxx的form的Div id
			
			//是否可修改
			var isModify = true;
			//是否可删除
			var isRemove = true;
			//是否可全选
			var isAllSelect = true;
			//列表最后一列里的自定义栏, 查看xxx列表, 没有的话就为 null
			var lastColumnHtmlList = [{class:"icon-zoom-in", title:"商品", method:"vendorCatalogList"}];
			// 全局变量  ================================================================================================================================================================ End>>>>>>>>>>>>>
			//	=========================================================================================================================================================================================
				
			
			
			// 查询  ================================================================================================================================================================== Start<<<<<<<<<<<<
			//	========================================================================================================================================================================================
			//刷新列表请求参数
			var refreshRequestPojo = function() {
				//每页多少条记录
				requestPojo.number = parseInt($("#everyPage").val());
				//搜索 供应商名字
				var vendorNameStr = $.trim($("#searchName").val());
// 				console.log("vendorNameStr > ", vendorNameStr);
				if (vendorNameStr === "") {
					requestPojo.vendorName = null;
				} else {
					requestPojo.vendorName = vendorNameStr;
				}
			}
			//商家列表  Server Action ，并填充前端table  @see frame_bottom.jsp
			var listFun = function() {
				//刷新参数
				refreshRequestPojo();
				//直接调后台
				defaultTableFillList(listUrl, requestPojo, pageTableDivId, isModify, isRemove, isAllSelect, lastColumnHtmlList, waitDivId, resultListReturn);
			}
			//return回此列表数据 
			var resultListReturn = function(data) {
				resultList = data;
			}
			//第一次load时运行一次
			listFun();
			//每页几条数据 refresh
			$("#everyPage").change(function() {
				listFun();
			});
			//商家名称 input
			$("#vendorName").change(refreshRequestPojo);
			//查询 按钮
			$("#searchBtn").click(listFun);
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
			
			// 添加商家  ============================================================================================================================================================= Start<<<<<<<<<<<<
			//	======================================================================================================================================================================================
			//添加商家按钮 弹出窗口  //此method不要了 
// 			var popAddDivHtml = $("#" + addFormDiv).html();
			//用以上html()方法的话有坑,,好大个啊,,哎 
			var popAddDivHtml = 
							'<form id="addFormDiv" class="form-horizontal" role="form">' + 
								'<input name="vendorId" type="hidden" />' +	
								'<div class="form-group" style="position: relative; z-index: 9999;">' + 
									'<label class="col-sm-3 control-label no-padding-right" for="form-field-1">商家名字</label>' +
									'<div class="col-sm-9">' +
										'<input name="vendorName" mustneed="true" id="vendorName" type="text" placeholder="请输入商家名字" class="col-xs-10 col-sm-8" /> <span style="color:red;">*</span>' +
									'</div>' +
								'</div>' +
								'<div class="space-4"></div>' +
								'<div class="form-group">' +
									'<label class="col-sm-3 control-label no-padding-right" for="form-field-1">联系法人</label>' +
									'<div class="col-sm-9">' + 
										'<input name="linkName" mustneed="true" id="linkName" type="text" placeholder="请输入联系法人" class="col-xs-10 col-sm-8" /> <span style="color:red;">*</span>' +
									'</div>' +
								'</div>' +
								'<div class="space-4"></div>' +
								'<div class="form-group">' + 
									'<label class="col-sm-3 control-label no-padding-right" for="form-field-1">手机</label>' +
									'<div class="col-sm-9">' +
										'<input validate="number" mustneed="true" name="mobilephone" id="mobilephone"  type="text"  placeholder="请输入手机" class="col-xs-10 col-sm-8"> <span style="color:red;">*</span>' +
									'</div>' +
								'</div>' +
								'<div class="space-4"></div>' +
								'<div class="form-group">' +
									'<label class="col-sm-3 control-label no-padding-right" for="form-field-1">固话</label>' +
									'<div class="col-sm-9">' +
										'<input validate="number" name="telephone" id="telephone" type="text"  placeholder="请输入固话" class="col-xs-10 col-sm-8">' +
									'</div>' +
								'</div>' +
								'<div class="space-4"></div>' +
								'<div class="form-group">' +
									'<label class="col-sm-3 control-label no-padding-right" for="form-field-1">地址</label>' +
									'<div class="col-sm-9">' +
										'<input name="address" id="address"  type="text"  placeholder="请输入地址" class="col-xs-10 col-sm-8">' +
									'</div>' +
								'</div>' +
								'<div class="space-4"></div>' +
								 '<div class="clearfix">' +
									'<div class="col-md-offset-3 col-md-12">' +
										'<button onclick="addFun()" id="addSaveFunButton" class="btn btn-info" type="button">' +
											'<i class="icon-ok bigger-110"></i>' +
											'保存 ' +
										'</button>' +
										'&nbsp; &nbsp; ' +
										'<button class="btn" type="reset">' +
											'<i class="icon-undo bigger-110"></i>' +
											'重置' +
										'</button>' +
										'&nbsp; &nbsp; ' +
										'<div id="waitDiv4add" class="icon-spinner icon-spin orange bigger-240 hide" ></div>' +
									'</div>' +
								'</div>' +
								'<div class="space-4"></div>' +
							'</form>' ;
			var popAddDivTitle = "添加商家";
			var defaultPopWinAdd = function() {

				defaultPopNoButtonWin(popAddDivHtml, popAddDivTitle);
				$('.date-picker').datepicker({
					autoclose : true
				}).next().on(ace.click_event, function() {
					$(this).prev().focus();
				});
			}
			//点击就弹出窗口
// 			$("#addBtn").click(defaultPopWinAdd);	//没用了,现在直接location到一个新的页面 
			$("#addBtn").click(function() {
				window.location.href = "vendor_add.php";
			});
			
			// 添加商家  ============================================================================================================================================================= End>>>>>>>>>>>>>
			//	=====================================================================================================================================================================================
			
			// 全选删除  ============================================================================================================================================================= Start<<<<<<<<<<<<
			//	======================================================================================================================================================================================
			//checkbox 选择事件 页面是的所有,每选择一次都要刷新一下 chekcedResultList
			var refreshCheckedList = function () {
				var pageTableDiv = $("#" + pageTableDivId);
				//先清空此列表
				chekcedResultList = [];
				pageTableDiv.find("input:checked").each(function () {
					var id= $(this).attr("key");
					if (!isNaN(id)) {	//检查是否是数字  
						chekcedResultList.push(resultList[id]);
					}
				});
				console.log("chekcedResultList >> ", chekcedResultList);
			}
			//全选按扭 事件 
			$("#allcheck").click(function() {
				var showFlag = document.getElementById("allcheck").checked;
				var pageTableDiv = $("#" + pageTableDivId);
				var checkList = document.getElementsByName(pageTableDivId);		 //这里的 checkbox name 定义有点不太好,以后可能有Bug 
				//先全选显示出来
				if (showFlag) {		//表示已经有选择  可以取消全选 
					//先清空此列表
// 					pageTableDiv.find(":checkbox[id!=allcheck]").each(function () {
// 						$(this).removeAttr("checked");
// 					});
					//这里用jquery 实现不了/why?,就用js一手代码了
					for (k in checkList) {
						checkList[k].checked = true;
// 						console.log("checkListN > ", checkList[k]);
					}
				} else {	//表示还没有选择  需要全选 
					for (k in checkList) {
						checkList[k].checked = false;
// 						console.log("checkListN2 > ", checkList[k]);
					}
				}
				//再刷新chekck列表 
				refreshCheckedList();
			});
			
			//批量删除商家按钮 事件
			var removeFun = function() {
				var resultInfoTitle = "删除";
				modiAjax(removeUrl, chekcedResultList, waitDiv4add, true, resultInfoTitle, listFun);
			}
			//批量删除商家按钮 弹出框 
			var defaultPopWinRemove = function() {
				if (chekcedResultList.length > 0) {
					var popRemoveDivMsg = "确定要删除商家 ? ";
					confirmPopWin(popRemoveDivMsg, removeFun);
				} else {		//表示还没有选择到超过一条数据
					var popRemoveDivMsg = " 先选择商家 , 才能进行删除操作 ";
					alterFun("提示", popRemoveDivMsg, 1000, 3);
				}
			}
			$("#removeBtn").click(defaultPopWinRemove);
			// 全选删除   ============================================================================================================================================================== End>>>>>>>>>>>>>
			//	=======================================================================================================================================================================================
			
			//  最后一列的操作(修改,删除等)  ========================================================================================================================================== Start<<<<<<<<<<<<
			//	========================================================================================================================================================================================
			//单条的修改 供应商
			var modifySimplefun = function(columnId) {
				console.log("modifyJon  ", resultList[columnId]);
				var openUrl = "vendor_modi.php";	
				var modifyForm = "modifyForm";
				modifySimplePage(resultList[columnId], openUrl, waitDivId, modifyForm);
			}
			//单条的删除供应商
			var removeSimplefun = function(columnId) {
				var popRemoveDivMsg = "确定要删除商家 ? ";
				confirmPopWin(popRemoveDivMsg, removeSimplefunGo, columnId);
			}
			var removeSimplefunGo = function(columnId) {
				console.log("removeVenodrJon ", resultList);
				if (!columnId) {	//这里传过去,如果是0,会成null了.
					columnId = 0;
				}
				
				var resultInfoTitle = "删除";
				var removeList = [];
				removeList.push(resultList[columnId]);
				modiAjax(removeUrl, removeList, waitDiv4add, true, resultInfoTitle, listFun);
			}
			//单条的 商家对应 的商品目录列表
			//@param columnId 列名
			var vendorCatalogList = function(columnId) {
				
				 var openUrl = "vendor_product.php?vendorId=" + resultList[columnId].vendorId 
						 	+ "&vendorName=" + encodeURIComponent(encodeURIComponent(resultList[columnId].vendorName));	
				 window.location.href = openUrl;
				 
// 				 var openUrl = "vendor_product.php?vendorId=" + resultList[columnId].vendorId 
// 						 	+ "&vendorName=" + encodeURIComponent(encodeURIComponent(resultList[columnId].vendorName));	//弹出窗口的url
// 				 var iWidth = 1000; //弹出窗口的宽度
// 				 var iHeight = 800; //弹出窗口的高度
// 				 //用window.open苹果是打不开的 
// 				 openNormalWindow(openUrl, iWidth, iHeight);
			}
			//  最后一列的操作(修改,删除等)  ========================================================================================================================================== End>>>>>>>>>>>>>
			//	=====================================================================================================================================================================================
				
			
			
		</script>
</body>
</html>