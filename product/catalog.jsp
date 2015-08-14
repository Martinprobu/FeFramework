<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>大爆炸后台管理</title>
		<meta name="keywords" content="大爆炸,神奇百贷" />
		<meta name="description" content="大爆炸, 供应商页面" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<jsp:include page="../frame_top_css.jsp"  />
		
	</head>

	<body>
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="index.php">商品</a>
							</li>
							<li class="active">商品类别管理</li>
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
								<div class="col-sm-10">
									<div class="widget-box">
										<div class="widget-header header-color-blue2">
											<h4 class="lighter smaller">商品类别管理</h4>
										</div>

										<div class="widget-body">
										<div class="widget-box">
											<button class="btn btn-info btn-sm" id="addBtn">添加</button>
											<button class="btn btn-sm" id="removeBtn">删除</button>
										</div>
											
											<div class="widget-main padding-8">
												<div id="tree1" class="tree tree-selectable">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<!-- Modal -->
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
							  <div class="modal-dialog" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							        <h4 class="modal-title" id="myModalLabel">添加商品类别</h4>
							      </div>
							      <div class="modal-body">
							        <div id="addFormDiv" class="">
										<form class="form-horizontal" role="form">
												<input name="catalogId" id="catalogId" type="hidden">	
												<div class="form-group" style="position: relative; z-index: 9999;">
													<label class="col-sm-3 control-label no-padding-right" for="form-field-1">选择父类别</label> 
													<div class="col-sm-9">
														<select name="pid" id="pid" class="col-xs-10 col-sm-8">
															<option value="0">--根目录--</option>
														</select>
														
														<span style="color:red;">*</span>
													</div>
												</div>
												<div class="form-group" style="position: relative; z-index: 9999;">
													<label class="col-sm-3 control-label no-padding-right" for="form-field-1">新增类别名称</label> 
													<div class="col-sm-9">
														<input name="catalogName" mustneed="true" id="catalogName" type="text" placeholder="请输入商品类别名称" class="col-xs-10 col-sm-8"> <span style="color:red;">*</span>
													</div>
												</div>
											</form>
									</div>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							        <button onclick="addCatalogFun()" id="addCatalogSaveButton" class="btn btn-info" type="button">
												<i class="icon-ok bigger-110"></i>
												保存 
											</button>
											<!-- 等待圆圈 -->
									<div id="waitDiv4add" class="icon-spinner icon-spin orange bigger-240 hide" ></div>
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
		
		<jsp:include page="../frame_bottom.jsp"  />
		
		<script type="text/javascript">
		jQuery(function($){
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
        
        
         
		 loadTreeData();
         
         $("#addBtn").click(function(){
        	 $("#catalogId").val(0);
        	 $("#catalogName").val('');
			 $("#pid").val(0);
        	 $("#myModal").modal("show");
        	 refreshPid();//检查类别数据是否发生变化，如果有修改，则更新父节点列表
         });
         
         
         refreshPid();
		//=========================================================================================================================================================================================
		//树形 插件 =====================================================================================================================================================================End=======
		//=========================================================================================================================================================================================
		//===
		
		});
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
                               $("a").css("visibility","visible");
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
		 function refreshPage(){
			 window.location.href="catalog.php";
		 }
		var waitDivId = "waitDiv4add";
		
		var addFormDiv = "addFormDiv";	//添加/修改 xxx的form的Div id
		
		var addUrl = "catalogSave.php";
		
		function  modiFun(catalogId,catalogName,pid){
			 $("#catalogId").val(catalogId);
			 $("#catalogName").val(catalogName);
			 $("#pid").val(pid);
			 $("#myModal").modal("show");
		}
		//保存类别信息
		function addCatalogFun(){
			
			//模拟AngularJs的做法, html to json //最后参数true 表示在这一步就验证字段有效性
			var addJson = billAngularJS(addFormDiv, true);
			console.log("addJson", addJson);
			
			//如果难验证不通过
			if (!addJson) return;	
			addJson.catalogId = $("#catalogId").val();
			addJson.pid = $("#pid").val();
			var resultInfoTitle = "添加";
			//添加商家  Server Action  成功后再执行 sucessFun
			modiAjax(addUrl, addJson, waitDivId, true, resultInfoTitle, sucessFun);
			$("#myModal").modal("hide");
		}

		var sucessFun = function() {
				isRefresh = true;
				refreshPage();
		}
		
		var chekcedResultList = [];
		//删除列表按钮 事件
		var removeFun = function() {
			var resultInfoTitle = "删除";
			var removeUrl = "catalogRemove.php";
			modiAjax(removeUrl, chekcedResultList, waitDiv4add, true, resultInfoTitle, sucessFun);
		}
		//批量删除列表按钮 弹出框 
		var defaultPopWinRemove = function() {
			var items = $('#tree1' ).tree('selectedItems');  
	       	 for (var i in items) if (items.hasOwnProperty(i)) {  
	                var item = items[i];  
	                chekcedResultList[i] = item.additionalParameters['id'];  
	           } 
			if (items.length > 0) {
				var popRemoveDivMsg = "确定要删除已选列别? ";
				confirmPopWin(popRemoveDivMsg, removeFun);
			} else {		//表示还没有选择到超过一条数据
				var popRemoveDivMsg = " 先选择类别 , 才能进行删除操作 ";
				alterFun("提示", popRemoveDivMsg, 1000, 3);
			}
		}
		$("#removeBtn").click(defaultPopWinRemove);
		</script>
</body>
</html>