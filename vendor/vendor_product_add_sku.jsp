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
							<li class="active">SKU设置</li>
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
									供应商 : <span style="font-weight:bold">${ requestPojo.vendorName }</span>  . [ ${requestPojo.title} ] SKU设置
								</div>
												
								<div class="hr hr10 hr-dotted"></div>
									<div class="col-xs-12" id="addFormDiv"> 
										<form class="form-horizontal" role="form"  id="productUpateForm" name="productUpateForm" >
											<input value="${requestPojo.productId}" name="productId" id="productId" type="hidden" />
											<input value="${requestPojo.sn}" name="sn" id="sn" type="hidden" />
											<input value="${requestPojo.vendorId}" name="vendorId" id="vendorId" type="hidden" />
											<input value="${requestPojo.vendorName}" name="vendorName" id="vendorName" type="hidden" />
											<input value="" name="skuProps" id="skuProps" type="hidden" />
											
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span style="color:red">注意</span></label> 
												<div class="col-sm-6">
													<span style="color:red">添加商品基本信息成功, 以下是设置详细SKU信息 </span>
												</div>
											</div>
											
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">上架</label> 
												<div class="col-sm-6">
													<input name="isGround2" id="isGround2" type="hidden">
													<input name="isGround" id="isGround" class="ace ace-switch ace-switch-7" type="checkbox">
														<span class="lbl"></span>
													<!-- 等待圆圈 -->
													<div id="waitDivId" class="icon-spinner icon-spin orange bigger-240 hide" ></div>
												</div>
											</div>
											
											
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">开启SKU模式</label> 
												<div class="col-sm-6">
													<input name="isSku2"  id="isSku2" type="hidden" value="${requestPojo.isSku }"/>
													<input name="isSku" disabled="disabled" id="isSku" class="ace ace-switch ace-switch-7" type="checkbox" checked />
													<span class="lbl"></span>
												</div>
											</div>		
											
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">总SKU库存</label> 
												<div class="col-sm-6">
													<input type="text" class="input-mini" id="buyMax" name="buyMax" disabled="true" />
												</div>
											</div>
											<div class="space-4"></div>
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">单SKU库存</label> 
												<div class="col-sm-6">
													<input type="text" class="input-mini" id="skuMaxCounts" name="skuMaxCounts" />
													<input type="hidden" class="input-mini" id="skuMaxCountsOld" name="skuMaxCountsOld" />
												</div>
											</div>
											<div class="space-4"></div>
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">单SKU成本价格</label> 
												<div class="col-sm-6">
													<input type="text" class="input-mini" id="skuCostPrice" name="skuCostPrice" />参考商品成本价格：${requestPojo.costPrice}
												</div>
											</div>
											<div class="space-4"></div>
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">单SKU基准价格</label> 
												<div class="col-sm-6">
													<input type="text" class="input-mini" id="skuBasePrice" name="skuBasePrice" />参考商品基准价格：${requestPojo.basePrice}
												</div>
											</div>
											<div class="space-4"></div>
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1">单SKU市场价格</label> 
												<div class="col-sm-6">
													<input type="text" class="input-mini" id="skuMarketPrice" name="skuMarketPrice" />参考商品市场价格：${requestPojo.marketPrice}
												</div>
											</div>
											
											
											
											
											
											<!--  SKU List ======================================================================================================== Start  -->
											<div class="form-group">
												<label class="col-sm-3 control-label no-padding-right" for="form-field-1"><span style="color:red"></span></label> 
												<div class="col-sm-6">
														<div class="box propArea">
															<form action="#">
															<div>
															<c:forEach var="sku" items="${skuList}" varStatus="status" >
																	<section class="radiosClass">
																		<h5 id="h5_${sku.proId}">${sku.proName}</h5>
																		<div class="items J_radioGroup">
																			<c:forTokens items="${ sku.proValueList }" delims="," var="name" varStatus="status1">
																			   <label>
																			   		<c:forTokens items="${ sku.proValueIdList }" delims="," var="name1" varStatus="status2">
																			   			<c:if test="${status2.index == status1.index}">
																		  				    <input type="radio" 
																			  				    data-productId="${requestPojo.productId}" 
																			  				    value="${name1}" 
																			  				    data-prodId="${sku.proId}"
																			  				    onClick="Item.SelectionClick(${sku.proId},this,${skuListSize})" /> 
																							<span class="name_${sku.proId}">${name}</span>
																			   			</c:if>
																					</c:forTokens>
																				</label>
																			</c:forTokens>
																		</div>
																	</section>
																</c:forEach>
															
															</div>
															</form>
														</div>
												</div>
											</div>
											<!--  SKU List ======================================================================================================== End  -->
																				
											
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
								
								<!-- ================================================== skulist 页面  ================================================== Start>>>>>>>>>>>>>>>>>>>>>>>>>>> -->	
								<div class="form-group" id="skulistTab">
									<%-- <label class="col-sm-3 control-label no-padding-right" >单SKU详细信息</label> 
									<div class="col-sm-6">
											<table>
												<tr>
													<th>组合</th>
													<th>sku_props</th>
													<th>sku_hash</th>
													<th>base_price</th>
													<th>market_price</th>
													<th>cost_price</th>
													<th>create_time</th>
													<th>buy_max</th>
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
									</div> --%>
								</div>			
								<!-- ================================================== skulist页面  ================================================== End>>>>>>>>>>>>>>>>>>>>>>>>>>> -->	

								<div class="hr hr32 hr-dotted"></div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->

<%-- 		<jsp:include page="../frame_bottom.jsp"  /> --%>
		<%@ include  file="../frame_bottom.jsp"%>
		<script src="/res/assets/js/cart.js"></script>
		<!-- 底部模块及代共js -->
		
		<script type="text/javascript">
jQuery(function($){
		// 全局变量  ================================================================================================================================================================ Start<<<<<<<<<<<<
		//	=========================================================================================================================================================================================
		//waiting 圆圈图片 div id
		var waitDivId = "waitDivId";
		
		// 全局变量  ================================================================================================================================================================ End>>>>>>>>>>>>>
		//	=========================================================================================================================================================================================
		
		//返回 按钮 
		$("#backBut").click(function() {
			history.back();
		});
		
		var requestPojo = {};
		var url = "product_add_sku_list.php";
		requestPojo.productId = ${requestPojo.productId};
		modiAjax(url, requestPojo, waitDivId, loadSkuSuceFun);
		//load skudetail完成后的function
		var loadSkuSuceFun = function(data) {
			console.log("data >> ", data.reuslt);
		}
		
		//load时调用 
		
		//checkbox =======================================================start
		//是否开启上架
		var groundChan = function(){
			var groundCheck = document.getElementById("isGround");
			if(groundCheck.checked) { //开启sku
				$("#isGround2").val(1);
			} else {	//关闭sku
				$("#isGround2").val(1);
			}
		}
		$("#isGround").click(groundChan);
		groundChan();
		//是否开启sku
		var skuChan = function(){
			var skuCheck = document.getElementById("isSku");
			if(skuCheck.checked) { //开启sku
				$("#isSku2").val(1);
				$('#buyMax').attr("disabled", "");
			} else {	//关闭sku
				$("#isSku2").val(0);
				$('#buyMax').removeAttr("disabled");
			}
		}
		//$("#isSku").click(skuChan);
		skuChan();
		//checkbox =======================================================end 
			
		//spinner 插件 =====================================================================================================================================================================Start=======
		//=========================================================================================================================================================================================
// 		$('#buyMax').ace_spinner({value:0,min:0,max:100000,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
		$('#buyMax').val(${requestPojo.buyMax});	//初始化
		$('#skuMaxCounts').ace_spinner({value:0,min:0,max:100000,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
		$('#skuCostPrice').ace_spinner({value:0,min:0,max:100000,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
		$('#skuBasePrice').ace_spinner({value:0,min:0,max:100000,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
		$('#skuMarketPrice').ace_spinner({value:0,min:0,max:100000,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
		
		$("#skuMaxCounts").change(function(){
			
			var skuMaxCountsOld = parseInt($("#skuMaxCountsOld").val());	//旧的单库存
            var skuMaxCounts = parseInt($(this).val());			//新的单库存
            //库存与总库存相减
            var buyMax = parseInt($("#buyMax").val());
            if (skuMaxCounts > skuMaxCountsOld) {	//新的大于旧的
            	$("#buyMax").val((buyMax) + ((skuMaxCounts) - (skuMaxCountsOld)));
            } else if (skuMaxCounts < skuMaxCountsOld) {	//如果新的小于旧的 
            	$("#buyMax").val((buyMax) - ((skuMaxCountsOld) - (skuMaxCounts)));
            }
            $("#skuMaxCountsOld").val(skuMaxCounts);

		});
		//spinner 插件 =====================================================================================================================================================================End=======
		//=========================================================================================================================================================================================
		
		//保存事件 =====================================================================================================================================================================Start=====
		//=========================================================================================================================================================================================
		var valiate4addSaveFunButton = function() {
			//非空 ========================================start 
			return true;
		};
		var initSkuData = function(){
			var skusize = '${skuList.size()}';
			if('${isModify}' == 'false'){
				$("#buyMax").val('${requestPojo.buyMax}');
				$("#skuMaxCounts").val('${requestPojo.buyMax}');
				
				$("#skuCostPrice").val('${requestPojo.costPrice}');
				$("#skuBasePrice").val('${requestPojo.basePrice}');
				$("#skuMarketPrice").val('${requestPojo.marketPrice}');
				$("#addSaveFunButton").attr("disabled","disabled");
				
			}
		};
		
		initSkuData();
		
		
		
		//保存事件 =====================================================================================================================================================================End=====
		//=========================================================================================================================================================================================
		//=========================================================================================================================================================================================
		
		//=========================================================================================================================================================================================
		
			
			
});
		</script>
	
</body>
</html>

