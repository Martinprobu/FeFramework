<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- ace settings handler -->

<script src="/res/assets/js/ace-extra.min.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="/res/assets/js/html5shiv.js"></script>
<script src="/res/assets/js/respond.min.js"></script>
<![endif]-->

<!-- basic scripts -->

<!--[if !IE]> 

		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
-->
<!-- <![endif]-->

<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

<!--[if !IE]>  -->

<script type="text/javascript">
	window.jQuery || document.write("<script src='/res/assets/js/jquery-2.0.3.min.js'>"+"<"+"script>");
</script>


<!-- <![endif]-->

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

<script src="/res/assets/js/markdown/markdown.min.js"></script>
<script src="/res/assets/js/markdown/bootstrap-markdown.min.js"></script>
<script src="/res/assets/js/jquery.hotkeys.min.js"></script>
<script src="/res/assets/js/bootstrap-wysiwyg.min.js"></script>



<!-- 以下两个js服务于 弹出窗 -->
<!-- <script src="/res/assets/js/bootstrap-modal.js"></script> -->
<!-- <script src="/res/assets/js/bootstrap-transition.js"></script> -->

<!-- <script src="/res/assets/js/spin.min.js"></script> -->

<!-- ace scripts -->

<script src="/res/assets/js/ace-elements.min.js"></script>
<script src="/res/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
	
	//toolkis	
	$('[data-rel=tooltip]').tooltip();
	
	/**	判断浏览器型号 你懂滴 
// 			var ua = navigator.userAgent.toLowerCase(); 
// 	    	(s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1] : 
// 	        (s = ua.match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] : 
// 	        (s = ua.match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] : 
// 	        (s = ua.match(/opera.([\d.]+)/)) ? Sys.opera = s[1] : 
// 	        (s = ua.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0; 
	**/
	
	/**
		Bootbox插件 Bug >>  楼主PS: 介贷实在是太坑了  
		1. input元素不能通过jquery.val() 拿出值
		2. dom不能进行dom方面的交互, 如某div的show ()与hide() 不生效 
	
	//Fix Bootbox 里的input元素不能通过jquery.val() 拿出值 ======================================================== Start
	//以下元素是 弹出 添加 商家 窗口里的 input //暂时不弹出html窗口
	var docChangIdList = "#name,#linkname,#mobilephone,#telephone,#address";	//此变量没用到,只是定义
	var inputDivId1 = "addVendorDiv";	//此变量没用到,只是定义, 弹出窗口的div id
	$(document).on('change', '#vendorName', function(e) {
		$('#vendorName').val($(this).val());
	});
	$(document).on('change', '#linkName', function(e) {
		$('#linkName').val($(this).val());
	});
	$(document).on('change', '#mobilephone', function(e) {
		$('#mobilephone').val($(this).val());
	});
	$(document).on('change', '#telephone', function(e) {
		$('#telephone').val($(this).val());
	});
	$(document).on('change', '#address', function(e) {
		$('#address').val($(this).val());
	});
	//Fix Bootbox 里的input元素不能通过jquery.val() 拿出值 ======================================================== End
	**/
	
	/**
		弹出 一个完全的单独窗口
		Safari用showModalDialog,  其他的平台用window.open,  IE不考虑 
	**/
	var openNormalWindow = function(openUrl, iWidth, iHeight) {
		var ua = navigator.userAgent.toLowerCase(); 

		if (ua.match(/version\/([\d.]+).*safari/)) {	//表示是苹果浏览器
			var windowStatus4showModalDialog = "dialogWidth:" + iWidth + "px;dialogHeight:" + iHeight + "px;center:1;status:0;";
			showModalDialog(openUrl, "", windowStatus4showModalDialog);
		} else {
			var iTop = (window.screen.availHeight-30-iHeight)/2;  //获得窗口的垂直位置; 
			var iLeft = (window.screen.availWidth-10-iWidth)/2;  //获得窗口的水平位置;
			var windowStatus4windowopen = "height="+iHeight+", width="+iWidth+", top="+iTop+", left="+iLeft + "directories=no,menubar=no,scrollbars=no,titlebar=no";
			window.open(openUrl, "", windowStatus4windowopen);
		}
	}
	
	/**
		重新显示左边导航栏
		由于前框架有些bug , 所以需要自己实现这个小功能,否则 左侧菜单不自动同步 
	**/
	 
	var freshMenu = function() {
		var submenu = $(".submenu li a");
		submenu.each(function(index){
			var showVal = $(this).attr("show");
			if (showVal != null && showVal != "") {
				var href_url_arr = showVal.split(',');
				var server_url_arr = document.location.href.split('/');
				var server_lasturl_arr = server_url_arr[server_url_arr.length - 1].split('.');
				//如果url pi配相同
				for (var i = 0 ; i < href_url_arr.length; i++) {
					if(href_url_arr[i].split('.')[0] == server_lasturl_arr[0]) {
						$(this).parent().parent().parent().attr("class", "active open");
						$(this).parent().attr("class", "active");
						return false;
					}
				}
			} else {
				var href_url_arr = $(this).attr("href").split('.');
				var server_url_arr = document.location.href.split('/');
				var server_lasturl_arr = server_url_arr[server_url_arr.length - 1].split('.');
				//如果url pi配相同
				if(href_url_arr[0] == server_lasturl_arr[0]) {
					$(this).parent().parent().parent().attr("class", "active open");
					$(this).parent().attr("class", "active");
					return false;
				}
			}
		});
	}
	freshMenu();
	
	
	/**
		等待 圆圈图片 模板方法/ 显示
		htmldemo: <div id="spinner1" class="icon-spinner icon-spin orange bigger-240 hide" ></div>
	**/
	var waitImgShow = function(waitDivId) {
		if (document.getElementById(waitDivId) != null) 
			document.getElementById(waitDivId).className = "icon-spinner icon-spin orange bigger-240";
// 		$("#" + waitDivId).attr("class", "icon-spinner icon-spin orange bigger-240");
	};
	/**
		等待 圆圈图片 模板方法/ 隐藏
		htmldemo: <div id="spinner1" class="icon-spinner icon-spin orange bigger-240 hide" ></div>
	**/
	var waitImgHide = function(waitDivId) {
		if (document.getElementById(waitDivId) != null) 
			document.getElementById(waitDivId).className = "icon-spinner icon-spin orange bigger-240 hide";
// 		$("#" + waitDivId).attr("class", "icon-spinner icon-spin orange bigger-240 hide");
	};
	
	/** ======================================================================================================================================================================================== **/
	/** ======================================================================================================================================================================================== **/
	/** ===============================================================弹出窗 commont fun===================================================================================================Start **/
	/** ======================================================================================================================================================================================== **/
	/**
		弹出吐丝模板方法
		title: 标题
		content: 内容
		timeout: 消失 千秒数
		classname: 1: gritter-success:成功的样式, 2: gritter-error:错误的样式, 3: gritter-center:居中, 
	**/
	var alterFun = function(title, content, timeout, classtype) {
		var classname = "gritter-success";
		switch(classtype)
		{
			case 1:
				classname = "gritter-success";
			  	break;
			case 2:
				classname = "gritter-error";
			  	break;
			case 3:
				classname = "gritter-center";
			  	break;
			default:
				classname = "gritter-success";
		}
		if (null == timeout) {
			timeout = 1000;
		}
		$.gritter.add({
			title: title,
			text: content,
			class_name: classname,
			time: timeout
		});
	}
	
	/**
		弹出default 没有按钮的窗口 模板方法
		还要自定义一下class: pop-window  ,主要是自定义其宽度， 因为 默认的modal是固定宽度的，bootbox也不例外 //主个目前不好用 
		注意: 要在弹出窗里 用一些高端的控件， 可能要在控件html外层再加一层 <div style="position: relative; z-index: 9999;">， 防止控件被弹出层阻住		
	**/
	var defaultPopNoButtonWin = function (msgHtml, title, closeFun) {
		bootbox.dialog({
			  // 退出dialog时的回调函数，包括用户使用ESC键及点击关闭
			 onEscape: function () {
		            bootbox.hideAll();
		            if (closeFun) {
		            	closeFun();
		            }
		      },
			 // dialog的内容
			 message: msgHtml,
			  // dialog的标题
			  title: title,
			  // 是否显示此dialog，默认true
			  show: true,
			  // 是否显示body的遮罩，默认true
			  backdrop: true,
			  // 是否显示关闭按钮，默认true
			  closeButton: true,
			  // 是否动画弹出dialog，IE10以下版本不支持
			  animate: true,
			  // dialog的类名
			  className: "pop-window",
			  // dialog底端按钮配置
		});
	}
	
	/**
		弹出confirm框  确定 取消
		@param fun 确认后需要执行的方法
		@param 执行方法的参数, 目前只设置一个,以后有可能加
	**/
	var confirmPopWin = function(msg, fun, param) {
		bootbox.confirm({
	        buttons: {
	            confirm: {
	                label: '确定',  
	                className: 'btn-success'  
	            },  
	            cancel: { 
	                label: '取消',  
	                className: 'btn-default'  
	            }  
	        },  
	        message: msg,  
	        callback: function(result) {
	            if(result) {
	            	console.log("confirmPopWin", result);
	            	if (param) {
		            	fun(param);
	            	} else {
	            		if (param == 0 || param != null ) {
			            	fun(param);
		            	} else {
		            		fun();
		            	}
	            	}
	            } else {
	                 
	            }  
	        }
		});
	}
	/**
		默认的错误提示, 吐丝方式	
	**/
	var defaultError = function () {
		alterFun("出于礼貌, 提示你一下 ", " 后台小错, 请找产品协商 ! 最好别打脸 . ", 10000, 2);
	}
	/** ======================================================================================================================================================================================== **/
	/** ===============================================================弹出窗 commont fun=====================================================================================================End **/
	/** ======================================================================================================================================================================================== **/
	/** ======================================================================================================================================================================================== **/
	
	/**
		调用后台修改的ajax的 defalut模板, 直接调用 
		@param url	服务端方法
		@param requestPojo	请求的obj
		@param waitDivId	等待的圆圈
		@param isBootboxHide	弹出窗是否消失
		@param successFun	如果成功后,要执行的确方法
	**/
	var modiAjax = function(url, requestPojo, waitDivId, isBootboxHide, resultInfoTitle, successFun) {
		waitImgShow(waitDivId);
		console.log("modiAjax url >" , url);
		$.ajax({
	        type : 'post',
	       	url : url,
	        dataType:'json',
			contentType:'application/json;charset=UTF-8',
	        data: JSON.stringify(requestPojo),
	        success : function(data) {
	        	console.log("modiAjax data > ", data);
	        	if (data.status >= 0) {
	        		alterFun(resultInfoTitle, "成功 . ", 3000, 1);
	        		if (successFun) {
	        			if (data) {
				        	successFun(data);
	        			} else {
	        				successFun();
	        			}
	        		}
	        	} else {
	        		alterFun(resultInfoTitle, "失败 . " + data.error_info, 3000, 2);
	        	}
	        	waitImgHide(waitDivId);
// 	        	if (isBootboxHide) {
// 	        		bootbox.hideAll();
// 	        	}
	        },
	        error : function() {
	        	alterFun(resultInfoTitle, "失败 . ", 3000, 2);
	        	defaultError();
	        	waitImgHide(waitDivId);
	        }
	     });
	}
	/**
		调用后台修改的ajax的 defalut模板, 直接调用 (有上传文件 )
		@param url	服务端方法
		@param requestPojo	请求的obj
		@param waitDivId	等待的圆圈
		@param successFun	如果成功后,要执行的确方法		//介里的参数是data 会返加data给此han数
	**/
	var modiAjax4Upload = function(url, requestPojo, waitDivId, resultInfoTitle, successFun) {
		waitImgShow(waitDivId);
		console.log("modiAjax url >" , url);
		
		$.ajax({
		    url: url ,
		    type: 'POST',
		    data: requestPojo,
		    async: false,
		    cache: false,
		    contentType: false,
		    processData: false,
		    success : function(data) {
	        	console.log("modiAjax data > ", data);
	        	if (data.status >= 0) {
	        		alterFun(resultInfoTitle, "成功 . ", 3000, 1);
	        		if (successFun) {
	        			if (data) {
				        	successFun(data);
	        			} else {
	        				successFun();
	        			}
	        		}
	        	} else {
	        		alterFun(resultInfoTitle, "失败 . " + data.error_info, 3000, 2);
	        	}
	        	waitImgHide(waitDivId);
	        },
	        error : function() {
	        	alterFun(resultInfoTitle, "失败 . ", 3000, 2);
	        	defaultError();
	        	waitImgHide(waitDivId);
	        }
		  });
	}
	/**
		调用后台ajax的defalut模板, 直接调用 
		@see fillPageTables()
		@param listUrl	服务端方法
		@param requestPojo	请求的obj
		@param divId	表格所在的div的id
		@param isModify	是否显示修改按钮
		@param isRemove	是否显示删除按钮
		@param lastColumnHtmlList	最后一列的追加按钮
		@param waitDivId	等待的圆圈
	**/
	var defaultTableFillList = function(listUrl, requestPojo, divId, isModify, isRemove, isAllSelect, lastColumnHtmlList, waitDivId, listReturn) {
		console.log("defaultTableFillList requestPojo > ", requestPojo);
		waitImgShow(waitDivId);
		$.ajax({
	        type : 'post',
	       	url : listUrl,
	        dataType:'json',
			contentType:'application/json;charset=UTF-8',
	        data: JSON.stringify(requestPojo),
	        success : function(data) {
	        	listReturn(data.result);
// 	        	console.log("resultData > ", resultData);
	        	console.log("ajaxlist data > ", data);
	        	//其实默认的话，其他三个参数都可以不用传, 不可倒数第二 三 最好是传，表示有修改按钮，有删除按钮, lastColumnHtmlList可能为null
	        	fillPageTables(divId, data, isModify, isRemove, isAllSelect, lastColumnHtmlList);
	        	waitImgHide(waitDivId);
	        },
	        error : function() {
	        	defaultError();
	        	waitImgHide(waitDivId);
	        }
	     });
	}
	/**
		填充分页表格模板方法, 一般在 ajaxlist() 模板里面自动调有了, 也可以独立调用
		divId: 分页div的id, 此div 包含一个表格table ,再下面一个div(分页信息)
		data: 表格
		isModify: 是否可以修改
		isRemove: 是否可以删除
		lastColumnHtmlList : 在最后一列追加的json列表 [{class:"icon-zoom-in", title:"商品", method:"js方法"}] //它就会生成 '<a class="blue" href="#"><i class="icon-zoom-in bigger-130">商品</i></a>'
		
		demo:
		var lastColumnHtmlList = [{class:"icon-external-link", title:"上架", method:"upStock"}];		//没有key表示只有一种情况 
		var lastColumnHtmlList = [{key1:"", class1:"icon-external-link", title1:"上架", method1:"upStock", class2:"icon-external-link", title2:"下架", method1:"downStock"}];	//有key(根据此属性判断是否真假)代表,是根据此key,选择title1还是title2
		
		@see ajaxlist()
		@desc
			在表格th列上 class="sorting_asc"/代表向上排序  class="sorting_desc"/代表可以排序  class="sorting"/代表可以排序
			
			以下是JS方法模板
			refreshCheckedList()	//checkbox 选择事件 页面是的所有,每选择一次都要刷新一下 chekcedVendorResultList
			modifySimplefun()		//单条的修改
			removeSimplefun()		//单条的删除
			currentPageList()		//指定页面 
			prevPageList() 			//前一页 
			nextPageList()			//后一页
			
			以下是全局参数
			var pageTableDiv = $("#pageTableDivId");	//pageTableDivId就是 此toble 所有的div 的id
			
		//test data 测试一下填充表格的方法
		var vendorListResult = {'totalCount':20, 'totalPage':2, 'currentPage':1, 'number':10, 'startIndex':1, 'endIndex':10,  'result': [{aa:12,bb:12},{aa:22,bb:77}]};
		var lastColumnJsonList = [{class:"icon-zoom-in", title:"商品", method:""}];
		var divId = "pageTableDiv1";
		fillPageTables(divId, vendorListResult, 0, true, true, lastColumnJsonList);
	**/
	var fillPageTables = function(divId, resultData, isModify, isRemove, isAllSelect, lastColumnHtmlList) {
		//生成html, 填充tableId为id的分页表格
		//如果 字符以 img, jng等结尾，侧 以<img src="/res/assets/avatars/user.jpg" /> 包装它
		var data = resultData.result;
// 		console.log("fillPageTables resultData > ", resultData);
		
		var fatherDiv = $("#" + divId);
		var tbody = fatherDiv.find("tbody");
		//先清除之前的tbody里面的html
		tbody.empty();
		
		//再用newTbodyHtml重新填充表格
		var newTbodyHtml = "";
		//循环 data列表 ================================================================ Start
		for (var i = 0; i < data.length; i ++) {
			newTbodyHtml += "<tr>";
			var thead = fatherDiv.find("thead");
			//可以优化，暂时先eq(0)先
			var id = thead.find("input").eq(0).attr("name");
			//这个id 的value作为 标记每行据的唯一， 用以 删除或者修改用
			if (isAllSelect) {
				//最左边的选择框 是否可以全选
				newTbodyHtml += '<td class="center sorting_1">'
								+ '<label>'
								+ '<input type="checkbox" class="ace" name="'  + divId + '"key="' + i + '" onclick="refreshCheckedList()">'	//这里的ckeckbox 的标识是key ,不是value,因为value已经被boottrap checkbox 占用了 
								+ '<span class="lbl"></span>'
								+ '</label>'
								+ '</td>;'
			}
			//循环这个data[i]里的 每个列
			thead.find("th").each(function() {
				var columnName = $(this).attr("name");
				if ($.trim(columnName) != "") {
					if ($(this).attr("istrue") == "true") {	//如果有istrue属性, 表示0:否, 1:是
						if (data[i][columnName] == 0) {
							newTbodyHtml += "<td>否</td>";
						} else {
							newTbodyHtml += "<td>是</td>";					
						}
					}
					else if ($(this).attr("date") == "true") {	//表示日期类型
						
					}
					else if ($(this).attr("time") == "true") {	//表示时间类型
						
					}
					else if ($(this).attr("datetime") == "true") {	//表示日期时间类型
						var timestamp3 = parseInt(data[i][columnName]);
						var newDate = new Date();
						newDate.setTime(timestamp3 * 1000);
						newTbodyHtml += "<td>" + newDate.toLocaleString() + "</td>";	
					}
					else if($.trim(columnName) == "orderType") {	 //订单状态 
						switch(data[i][columnName])
						{
							case 0:
								newTbodyHtml += "<td>待支付</td>";
							  break;
							case 1:
								newTbodyHtml += "<td>待收贷</td>";
							  break;
							case 2:
								newTbodyHtml += "<td>待评论</td>";
							  break;
							case 3:
								newTbodyHtml += "<td>已完成</td>";
							  break;
							case 4:
								newTbodyHtml += "<td>申请售后</td>";
							  break;
							case 5:
								newTbodyHtml += "<td>已退款</td>";
							  break;
							case 6:
								newTbodyHtml += "<td>已取消</td>";
							  break;
							default:
								newTbodyHtml += "<td>" + data[i][columnName] + "</td>";
						}
					}
					else if($.trim(columnName) == "vendorPayType") {	//供应商收款状态
						switch(data[i][columnName])
						{
							case 0:
								newTbodyHtml += "<td>未打款</td>";
							  break;
							case 1:
								newTbodyHtml += "<td>已打款</td>";
							  break;
							case 2:
								newTbodyHtml += "<td>已收款</td>";
							  break;
							default:
								newTbodyHtml += "<td>" + data[i][columnName] + "</td>";
						}
					}
					else if($.trim(columnName) == "platformId") {	//社交平台来源
						switch(data[i][columnName])
						{
							case 0:
								newTbodyHtml += "<td>手机</td>";
							  break;
							case 1:
								newTbodyHtml += "<td>微信</td>";
							  break;
							case 2:
								newTbodyHtml += "<td>QQ</td>";
							  break;
							default:
								newTbodyHtml += "<td>手机</td>";
						}
					}
					else if($.trim(columnName) == "type") {	 //banner状态
						switch(data[i][columnName])
						{
							case 0:
								newTbodyHtml += "<td>日报</td>";
							  break;
							case 1:
								newTbodyHtml += "<td>商品</td>";
							  break;
							case 2:
								newTbodyHtml += "<td>活动</td>";
							  break;
							default:
								newTbodyHtml += "<td>" + data[i][columnName] + "</td>";
						}
					}
					else {	//普通的属性 
						if (data[i][columnName] == null || data[i][columnName] == "null") {
							newTbodyHtml += "<td>&nbsp;</td>";
						} else {
							newTbodyHtml += "<td>" + data[i][columnName] + "</td>";
						}
					}
				}
			});
			
			//最后那一列
// 			if (lastColumnHtmlList && isModify && isRemove) {
					newTbodyHtml += '<td><div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">';
				
					//循环 最后一列的lastColumnHtmlList
					if (lastColumnHtmlList) {
						for (var jj = 0; jj < lastColumnHtmlList.length; jj++) {
							//demo
							//var lastColumnHtmlList = [{class:"icon-external-link", title:"上架", method:"upStock"}];		//没有key表示只有一种情况 
							//var lastColumnHtmlList = [{key:"isGround", class1:"icon-external-link", title1:"上架", method1:"upStock", class2:"icon-external-link", title2:"下架", method1:"downStock"}];	//有key(根据此属性判断是否真假)代表,是根据此key,选择title1还是title2
							//是否有 key元素, 
							if (lastColumnHtmlList[jj].key) {
								var columnName = lastColumnHtmlList[jj].key;
								if (data[i][columnName] || data[i][columnName] == 1) {		//如果此属性是true
									newTbodyHtml += '<a class="blue" href="javascript:'
										+ lastColumnHtmlList[jj].method2 + '(' + i + ')"><i class="' 
										+ lastColumnHtmlList[jj].class2 + ' bigger-130">'
										+ lastColumnHtmlList[jj].title2 
										+ ' </i></a>';
								} else {	//如果此属性是false
									newTbodyHtml += '<a class="blue" href="javascript:'
										+ lastColumnHtmlList[jj].method1 + '(' + i + ')"><i class="' 
										+ lastColumnHtmlList[jj].class1 + ' bigger-130">'
										+ lastColumnHtmlList[jj].title1 
										+ ' </i></a>';
								}
							}
							else if (lastColumnHtmlList[jj].key5) {	//如果有 key5元素, 代表是根据orderType判断状态的  
								var columnName = "orderType";
								switch(data[i][columnName])
								{
									case 0:
// 										newTbodyHtml += "<td>待支付</td>";
										newTbodyHtml += '<a class="blue" href="javascript:'
										+ lastColumnHtmlList[jj].method1 + '(' + i + ')"><i class="' 
										+ lastColumnHtmlList[jj].class1 + ' bigger-130">'
										+ lastColumnHtmlList[jj].title1 
										+ ' </i></a>';
									  break;
									case 1:
// 										newTbodyHtml += "<td>待收贷</td>";
										newTbodyHtml += '<a class="blue" href="javascript:'
										+ lastColumnHtmlList[jj].method1 + '(' + i + ')"><i class="' 
										+ lastColumnHtmlList[jj].class1 + ' bigger-130">'
										+ lastColumnHtmlList[jj].title1 
										+ ' </i></a>';
									  break;
									case 2:
// 										newTbodyHtml += "<td>待评论</td>";
										newTbodyHtml += '<a class="blue" href="javascript:'
										+ lastColumnHtmlList[jj].method1 + '(' + i + ')"><i class="' 
										+ lastColumnHtmlList[jj].class1 + ' bigger-130">'
										+ lastColumnHtmlList[jj].title1 
										+ ' </i></a>';
									  break;
									case 3:
// 										newTbodyHtml += "<td>已完成</td>";
										newTbodyHtml += '<a class="blue" href="javascript:'
										+ lastColumnHtmlList[jj].method1 + '(' + i + ')"><i class="' 
										+ lastColumnHtmlList[jj].class1 + ' bigger-130">'
										+ lastColumnHtmlList[jj].title1 
										+ ' </i></a>';
									  break;
									case 4:
// 										newTbodyHtml += "<td>申请售后</td>";
										newTbodyHtml += '<a class="blue" href="javascript:'
										+ lastColumnHtmlList[jj].method1 + '(' + i + ')"><i class="' 
										+ lastColumnHtmlList[jj].class1 + ' bigger-130">'
										+ lastColumnHtmlList[jj].title1 
										+ ' </i></a>';
									  break;
									case 5:
// 										newTbodyHtml += "<td>已退款</td>";
									  break;
									case 6:
// 										newTbodyHtml += "<td>已取消</td>";
									  break;
									default:
										newTbodyHtml += '<a class="blue" href="javascript:'
										+ lastColumnHtmlList[jj].method1 + '(' + i + ')"><i class="' 
										+ lastColumnHtmlList[jj].class1 + ' bigger-130">'
										+ lastColumnHtmlList[jj].title1 
										+ ' </i></a>';
								}
							}
							else {
								newTbodyHtml += '<a class="blue" href="javascript:'
											+ lastColumnHtmlList[jj].method + '(' + i + ')"><i class="' 
											+ lastColumnHtmlList[jj].class + ' bigger-130">'
											+ lastColumnHtmlList[jj].title 
											+ ' </i></a>';
							}
						}
					}
					//增加 修改列
					if (isModify) {
						newTbodyHtml += '<a class="green" href="javascript:modifySimplefun(' + i + ')"><i class="icon-pencil bigger-130"></i></a>';
					}
					//增加 删除列
					if (isRemove) {
						newTbodyHtml += '<a class="red" href="javascript:removeSimplefun(' + i + ')"><i class="icon-trash bigger-130"></i></a>';
					}
					newTbodyHtml += "</div></td>";
// 			}

			newTbodyHtml += "</tr>";
		}
		//循环 data列表 ================================================================ End
		
		//分页记录 html demo: 第 1 到 1 条(共1条数据)
		var pageCountDiv = fatherDiv.find("#pageCountDiv");
		var pageCountDivHtml = "第 " + resultData.startIndex 
							+ " 到 " + resultData.endIndex  +  " 条(共" +  resultData.totalCount + "条数据)";
		pageCountDiv.html(pageCountDivHtml);
		
		//分页页码 demo: << 1, 2, 3 >>
		var pageNoDiv = fatherDiv.find("#pageNoDiv");
		var pageNoDivHtml = "";
		if (resultData.currentPage == 1 || resultData.totalCount < 1) {
			pageNoDivHtml += '<li class="prev disabled"><a href="#"> << </a></li>';
		} else {
			pageNoDivHtml += '<li class="prev"><a href="javascript:prevPageList()"> << </a></li>';
		}
		//这里需要优化，因为以后页面太多时 
		for (var i = 1; i <= resultData.totalPage; i ++) {
			if (resultData.currentPage == i) {
				pageNoDivHtml += '<li class="active"><a href="#">' + i + '</a></li>';
			} else {
				pageNoDivHtml += '<li><a href="javascript:currentPageList(' + i + ')">' + i + '</a></li>';
			}
		}
		if (resultData.currentPage == resultData.totalPage || resultData.totalCount < 1) {
			pageNoDivHtml += '<li class="next disabled"><a href="#"> >> </a></li>';
		} else {
			pageNoDivHtml += '<li class="next"><a href="javascript:nextPageList()"> >> </a></li>';
		}
		pageNoDiv.html(pageNoDivHtml);
		
		tbody.html(newTbodyHtml);
	};
	
	/**
		分页中的点击排序方法 
	**/
	var sortFun = function(divId) {
		//生成html, 填充tableId为id的分页表格
		//先清除之前的html , 再重新填充表格
		console.log("fillPageTables divId > ", divId);
	};
	
	/**	
		点击修改 把一个requestPojo对象专过去  进入修改页面 / 或者是进入 另外一个吊丝页面 / 总之是submit类型的 
	**/
	var modifySimplePage = function(requestPojo, openUrl, waitDivId, modifyForm) {
		if (waitDivId != null && waitDivId != "") {
			waitImgShow(waitDivId);
		}
		
		//json同步html
		if (requestPojo != null) {
			billAngularJS4html(requestPojo, modifyForm);
		}
		var form = "#" + modifyForm;
		$(form).attr("action", openUrl);
		$(form).attr("method", "post");
		$(form).submit();
		
	}
	
	/**
		一个div里同步 一个json, 
		多用到添加 元素时,  需要完善, 要当于模拟AngularJS的绑定功能
		在这里顺便做简单的表单验证  dom的 validate属性 <其中 number:数字/电话号码等, >
		//介贷已经 被var formData = new FormData($("#productUpateForm")[0]); 彻底取代了, 886
		@divId div的id
		@isValidate 是否需要在这一步验证字段
		
		@return Obj
	**/
	var billAngularJS = function (divId, isValidate) {
		//指定div ,  此div里的所有input ,一改变都是同步到指定的json属性中, 
		var obj = {};
		var returnFlag = true;
		$("#" + divId).find("input").each(function() {
			var val = $(this).val();
			//验证字段
			if (isValidate) {
				//验证类型
				var validateType = $(this).attr("validate");	
				var mustneed = $(this).attr("mustneed");
				if (!validateSimple(val, validateType, mustneed)) {
					$(this).focus();	//此方法在bootbox里行不通
					returnFlag = false;
					return false;
				};
			}
			var name = $(this).attr("name");
			var type = $(this).attr("type");
			if(type !="checkbox"){
				if ("" != name && null != name && "" != val) {
					var evStr = "obj." + name + "='" + val + "'";
					eval(evStr); 
				} else {	//如果是空的
					var evStr = "obj." + name + "=''";
					eval(evStr); 
				}
			}
		});
		if (!returnFlag) return false; 
		return obj;
	}
	/**
		一个json里的key-value 同步一个div里的属性值 , 
		多用到添加 元素时,  需要完善, 要当于模拟AngularJS的绑定功能
		@angJson 传过来的div id
		@divId div的id
	**/
	var billAngularJS4html = function (angJson, divId) {
		//指定div ,  json属性 同步到 此div里的所有input 
// 		console.log("divId>>> ", divId);
// 		console.log("bill>>> ", $("#" + divId).find("input"));
		$("#" + divId).find("input").each(function() {
			var val = $(this).val();
// 			console.log("val > ", val);
			//每次都 循环一下 此json, 罪过 
			for (k in angJson) {
				if (k == $(this).attr("name")) {
					if (angJson[k] != null) {
						$(this).val(angJson[k]);
					}
					break;
				}
			}
		});
	}
	/*
		单个 类型 验证 
	*/
	var validateSimple = function (val, validateType, mustneed) {
//		mustneed
		//非空验证
		if (mustneed != null && mustneed != "") {
			if (val == "") {
				alterFun("验证信息", "不能为空");
				return false;
			}
		}
// 		validate
		//类型验证
		switch(validateType){
		    case "number":    
		      var reg = new RegExp("^[0-9]*$");
		      if(!reg.test(val)){
		    	  alterFun("验证信息", "请输入数字");
			      return false;
		      }
		      break; 
	    }
		return true;
	}
	
	/**
	树形结构对象
	**/
	var DataSourceTree = function(options) {
		this._data 	= options.data;
		this._delay = options.delay;
	}
	DataSourceTree.prototype.data = function(options, callback) {
		var self = this;
		var $data = null;

		if(!("name" in options) && !("type" in options)){
			$data = this._data;//the root tree
			callback({ data: $data });
			return;
		}
		else if("type" in options && options.type == "folder") {
			if("additionalParameters" in options && "children" in options.additionalParameters)
				$data = options.additionalParameters.children;
			else $data = {}//no data
		}
		
		if($data != null)//this setTimeout is only for mimicking some random delay
			setTimeout(function(){callback({ data: $data });} , parseInt(Math.random() * 500) + 200);

		//we have used static data here
		//but you can retrieve your data dynamically from a server using ajax call
		//checkout examples/treeview.html and examples/treeview.js for more info
	};
	
	 var changeIFrameHeight = function(){
     	var divHeight = document.body.clientHeight + 25;
     	if(divHeight < 700) {
     		divHeight = 700;
     	}
     	var styleDiv = window.parent.document.getElementById('mainDiv');
     	if (styleDiv != null) {
     		styleDiv.style.height = divHeight+"px";
     	}
 	}
	 
	 $(function(){
		 changeIFrameHeight();
		 setInterval(changeIFrameHeight,100);     	
	 });  
	 
	 /** ========================MD5==================================================================================================================================Start================= **/
	 	var hex_chr = "0123456789abcdef";
		function rhex(num)
		{
		str = ""; 
		for(j = 0; j <= 3; j++) 
		str += hex_chr.charAt((num >> (j * 8 + 4)) & 0x0F) + 
		hex_chr.charAt((num >> (j * 8)) & 0x0F); 
		return str;
		}
		function str2blks_MD5(str)
		{
		nblk = ((str.length + 8) >> 6) + 1; 
		blks = new Array(nblk * 16); 
		for(i = 0; i < nblk * 16; i++) blks[i] = 0; 
		for(i = 0; i < str.length; i++) 
		blks[i >> 2] |= str.charCodeAt(i) << ((i % 4) * 8); 
		blks[i >> 2] |= 0x80 << ((i % 4) * 8); 
		blks[nblk * 16 - 2] = str.length * 8; 
		return blks; 
		}
		function add(x, y)
		{
		var lsw = (x & 0xFFFF) + (y & 0xFFFF); 
		var msw = (x >> 16) + (y >> 16) + (lsw >> 16); 
		return (msw << 16) | (lsw & 0xFFFF); 
		} 
		function rol(num, cnt) 
		{ 
		return (num << cnt) | (num >>> (32 - cnt)); 
		} 
		function cmn(q, a, b, x, s, t) 
		{ 
		return add(rol(add(add(a, q), add(x, t)), s), b); 
		} 
		function ff(a, b, c, d, x, s, t) 
		{ 
		return cmn((b & c) | ((~b) & d), a, b, x, s, t); 
		} 
		function gg(a, b, c, d, x, s, t) 
		{ 
		return cmn((b & d) | (c & (~d)), a, b, x, s, t); 
		} 
		function hh(a, b, c, d, x, s, t) 
		{ 
		return cmn(b ^ c ^ d, a, b, x, s, t); 
		} 
		function ii(a, b, c, d, x, s, t) 
		{ 
		return cmn(c ^ (b | (~d)), a, b, x, s, t); 
		} 
		function MD5(str) 
		{ 
		x = str2blks_MD5(str); 
		var a = 1732584193; 
		var b = -271733879; 
		var c = -1732584194; 
		var d = 271733878; 
		for(i = 0; i < x.length; i += 16) 
		{ 
		var olda = a; 
		var oldb = b; 
		var oldc = c; 
		var oldd = d; 
		a = ff(a, b, c, d, x[i+ 0], 7 , -680876936); 
		d = ff(d, a, b, c, x[i+ 1], 12, -389564586); 
		c = ff(c, d, a, b, x[i+ 2], 17, 606105819); 
		b = ff(b, c, d, a, x[i+ 3], 22, -1044525330); 
		a = ff(a, b, c, d, x[i+ 4], 7 , -176418897); 
		d = ff(d, a, b, c, x[i+ 5], 12, 1200080426); 
		c = ff(c, d, a, b, x[i+ 6], 17, -1473231341); 
		b = ff(b, c, d, a, x[i+ 7], 22, -45705983); 
		a = ff(a, b, c, d, x[i+ 8], 7 , 1770035416); 
		d = ff(d, a, b, c, x[i+ 9], 12, -1958414417); 
		c = ff(c, d, a, b, x[i+10], 17, -42063); 
		b = ff(b, c, d, a, x[i+11], 22, -1990404162); 
		a = ff(a, b, c, d, x[i+12], 7 , 1804603682); 
		d = ff(d, a, b, c, x[i+13], 12, -40341101); 
		c = ff(c, d, a, b, x[i+14], 17, -1502002290); 
		b = ff(b, c, d, a, x[i+15], 22, 1236535329); 
		a = gg(a, b, c, d, x[i+ 1], 5 , -165796510); 
		d = gg(d, a, b, c, x[i+ 6], 9 , -1069501632); 
		c = gg(c, d, a, b, x[i+11], 14, 643717713); 
		b = gg(b, c, d, a, x[i+ 0], 20, -373897302); 
		a = gg(a, b, c, d, x[i+ 5], 5 , -701558691); 
		d = gg(d, a, b, c, x[i+10], 9 , 38016083); 
		c = gg(c, d, a, b, x[i+15], 14, -660478335); 
		b = gg(b, c, d, a, x[i+ 4], 20, -405537848); 
		a = gg(a, b, c, d, x[i+ 9], 5 , 568446438); 
		d = gg(d, a, b, c, x[i+14], 9 , -1019803690); 
		c = gg(c, d, a, b, x[i+ 3], 14, -187363961); 
		b = gg(b, c, d, a, x[i+ 8], 20, 1163531501); 
		a = gg(a, b, c, d, x[i+13], 5 , -1444681467); 
		d = gg(d, a, b, c, x[i+ 2], 9 , -51403784); 
		c = gg(c, d, a, b, x[i+ 7], 14, 1735328473); 
		b = gg(b, c, d, a, x[i+12], 20, -1926607734); 
		a = hh(a, b, c, d, x[i+ 5], 4 , -378558); 
		d = hh(d, a, b, c, x[i+ 8], 11, -2022574463); 
		c = hh(c, d, a, b, x[i+11], 16, 1839030562); 
		b = hh(b, c, d, a, x[i+14], 23, -35309556); 
		a = hh(a, b, c, d, x[i+ 1], 4 , -1530992060); 
		d = hh(d, a, b, c, x[i+ 4], 11, 1272893353); 
		c = hh(c, d, a, b, x[i+ 7], 16, -155497632); 
		b = hh(b, c, d, a, x[i+10], 23, -1094730640); 
		a = hh(a, b, c, d, x[i+13], 4 , 681279174); 
		d = hh(d, a, b, c, x[i+ 0], 11, -358537222); 
		c = hh(c, d, a, b, x[i+ 3], 16, -722521979); 
		b = hh(b, c, d, a, x[i+ 6], 23, 76029189); 
		a = hh(a, b, c, d, x[i+ 9], 4 , -640364487); 
		d = hh(d, a, b, c, x[i+12], 11, -421815835); 
		c = hh(c, d, a, b, x[i+15], 16, 530742520); 
		b = hh(b, c, d, a, x[i+ 2], 23, -995338651); 
		a = ii(a, b, c, d, x[i+ 0], 6 , -198630844); 
		d = ii(d, a, b, c, x[i+ 7], 10, 1126891415); 
		c = ii(c, d, a, b, x[i+14], 15, -1416354905); 
		b = ii(b, c, d, a, x[i+ 5], 21, -57434055); 
		a = ii(a, b, c, d, x[i+12], 6 , 1700485571); 
		d = ii(d, a, b, c, x[i+ 3], 10, -1894986606); 
		c = ii(c, d, a, b, x[i+10], 15, -1051523); 
		b = ii(b, c, d, a, x[i+ 1], 21, -2054922799); 
		a = ii(a, b, c, d, x[i+ 8], 6 , 1873313359); 
		d = ii(d, a, b, c, x[i+15], 10, -30611744); 
		c = ii(c, d, a, b, x[i+ 6], 15, -1560198380); 
		b = ii(b, c, d, a, x[i+13], 21, 1309151649); 
		a = ii(a, b, c, d, x[i+ 4], 6 , -145523070); 
		d = ii(d, a, b, c, x[i+11], 10, -1120210379); 
		c = ii(c, d, a, b, x[i+ 2], 15, 718787259); 
		b = ii(b, c, d, a, x[i+ 9], 21, -343485551); 
		a = add(a, olda); 
		b = add(b, oldb); 
		c = add(c, oldc); 
		d = add(d, oldd); 
		} 
		return rhex(a) + rhex(b) + rhex(c) + rhex(d); 
		}
	 /** ========================MD5===================================================================================================================================End================ **/
	
</script>
</html>