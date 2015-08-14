<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="sidebar" id="sidebar">
	<script type="text/javascript">
		try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
	</script>
	
	<div class="sidebar-shortcuts" id="sidebar-shortcuts">
		<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
			<button class="btn btn-success">
				<i class="icon-signal"></i>
			</button>
	
			<button class="btn btn-info">
				<i class="icon-pencil"></i>
			</button>
	
			<button class="btn btn-warning">
				<i class="icon-group"></i>
			</button>
	
			<button class="btn btn-danger">
				<i class="icon-cogs"></i>
			</button>
		</div>
	
		<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
			<span class="btn btn-success"></span>
	
			<span class="btn btn-info"></span>
	
			<span class="btn btn-warning"></span>
	
			<span class="btn btn-danger"></span>
		</div>
	</div><!-- #sidebar-shortcuts -->
	
	<ul class="nav nav-list">
		
		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-group"></i>
				<span class="menu-text">供应商管理</span>
				<b class="arrow icon-angle-down"></b>
			</a>
	
			<ul class="submenu" style="display: block;">
				<li>
					<a href="javascript:openUrl('vendor.php')" show="vendor.php,vendor_add.php,vendor_product.php,vendor_product_modi.php">
						<i class="icon-double-angle-right"></i>
						供应商查询
					</a>
				</li>
			</ul>
		</li>
		
		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-inbox"></i>
				<span class="menu-text">商品管理</span>
				<b class="arrow icon-angle-down"></b>
			</a>
	
			<ul class="submenu">
				<li>
					<a href="javascript:openUrl('product.php')" show="product.php">
						<i class="icon-double-angle-right"></i>
						商品管理
					</a>
				</li>
				<li>
					<a href="javascript:openUrl('catalog.php')">
						<i class="icon-double-angle-right"></i>
						商品类别管理
					</a>
				</li>
				<li>
					<a href="javascript:openUrl('tag.php')">
						<i class="icon-double-angle-right"></i>
						商品标签管理
					</a>
				</li>
				<li>
					<a href="javascript:openUrl('banner.php')">
						<i class="icon-double-angle-right"></i>
						Banner管理
					</a>
				</li>
			</ul>
		</li>
		
		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-bar-chart"></i>
				<span class="menu-text">订单管理</span>
				<b class="arrow icon-angle-down"></b>
			</a>
	
			<ul class="submenu">
				<li>
					<a href="javascript:openUrl('order.php')">
						<i class="icon-double-angle-right"></i>
						订单管理
					</a>
				</li>
			</ul>
		</li>
		
		
		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-fighter-jet"></i>
				<span class="menu-text">物流管理</span>
				<b class="arrow icon-angle-down"></b>
			</a>
	
			<ul class="submenu">
				<li>
					<a href="tables.html">
						<i class="icon-double-angle-right"></i>
						到贷通知
					</a>
				</li>
			</ul>
		</li>
		
		
		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-credit-card"></i>
				<span class="menu-text">支付管理</span>
				<b class="arrow icon-angle-down"></b>
			</a>
	
<!-- 			<ul class="submenu"> -->
<!-- 				<li> -->
<!-- 					<a href="tables.html"> -->
<!-- 						<i class="icon-double-angle-right"></i> -->
<!-- 						用户收入 -->
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<a href="tables.html"> -->
<!-- 						<i class="icon-double-angle-right"></i> -->
<!-- 						商家支出 -->
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 			</ul> -->
		</li>
		
		
		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-gift"></i>
				<span class="menu-text">会员管理</span>
				<b class="arrow icon-angle-down"></b>
			</a>
	
			<ul class="submenu">
				<li>
					<a href="javascript:openUrl('users.php')">
						<i class="icon-double-angle-right"></i>
						会员查询
					</a>
				</li>
			</ul>
		</li>
		
		
		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-comments"></i>
				<span class="menu-text">用户反馈管理</span>
				<b class="arrow icon-angle-down"></b>
			</a>
	
			<ul class="submenu">
				<li>
					<a href="javascript:openUrl('suggest.php')">
						<i class="icon-double-angle-right"></i>
						用户反馈查询
					</a>
				</li>
			</ul>
		</li>
		
		
		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-calendar"></i>
				<span class="menu-text">日报管理</span>
				<b class="arrow icon-angle-down"></b>
			</a>
	
			<ul class="submenu">
				<li>
					<a href="javascript:openUrl('ncatalog.php')">
						<i class="icon-double-angle-right"></i>
						类型管理
					</a>
				</li>
				<li>
					<a href="javascript:openUrl('news.php')">
						<i class="icon-double-angle-right"></i>
						日报管理
					</a>
				</li>
			</ul>
		</li>
		
		
		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-book"></i>
				<span class="menu-text">报表统计</span>
				<b class="arrow icon-angle-down"></b>
			</a>
	
			<ul class="submenu">
				<li>
					<a href="javascript:openUrl('tagReport.php')">
						<i class="icon-double-angle-right"></i>
						标签统计
					</a>
				</li>
				<li>
					<a href="tables.html">
						<i class="icon-double-angle-right"></i>
						商家销售统计
					</a>
				</li>
				<li>
					<a href="tables.html">
						<i class="icon-double-angle-right"></i>
						订单量统计
					</a>
				</li>
				<li>
					<a href="tables.html">
						<i class="icon-double-angle-right"></i>
						商品销售统计
					</a>
				</li>
				<li>
					<a href="tables.html">
						<i class="icon-double-angle-right"></i>
						销售额统计
					</a>
				</li>
			</ul>
		</li>
		
		
		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-laptop"></i>
				<span class="menu-text">账号管理</span>
				<b class="arrow icon-angle-down"></b>
			</a>
	
<!-- 			<ul class="submenu"> -->
<!-- 				<li> -->
<!-- 					<a href="tables.html"> -->
<!-- 						<i class="icon-double-angle-right"></i> -->
<!-- 						账号查询 -->
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 			</ul> -->
		</li>
	
	
	
	
	</ul><!-- /.nav-list -->
	
	<div class="sidebar-collapse" id="sidebar-collapse">
		<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
	</div>
	
	<script type="text/javascript">
		try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
		
		function openUrl(url){
			$("#main").attr("src",url);
		}
	</script>
</div>