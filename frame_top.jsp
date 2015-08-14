<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="navbar navbar-default" id="navbar">
	<script type="text/javascript">
		try{ace.settings.check('navbar' , 'fixed')}catch(e){}
	</script>
	<script type="text/javascript">
		function loginOut(){
			window.location.href="loginOut.php";
		}
	</script>

	<div class="navbar-container" id="navbar-container">
		<div class="navbar-header pull-left">
			<a href="#" class="navbar-brand">
				<small>
					<i class="icon-leaf"></i>
					大爆炸 后台管理
				</small>
			</a><!-- /.brand -->
		</div><!-- /.navbar-header -->

		<div class="navbar-header pull-right" role="navigation">
			<ul class="nav ace-nav">
				<li class="grey">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<i class="icon-tasks"></i>
						<span class="badge badge-grey">0</span>
					</a>

					<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
						<li class="dropdown-header">
							<i class="icon-ok"></i>
							任务列表
						</li>

						<li>
							 <a href="#">
								<div class="clearfix">
									<span class="pull-left">软件更新</span>
									<span class="pull-right">65%</span>
								</div>

								<div class="progress progress-mini ">
									<div style="width:65%" class="progress-bar "></div>
								</div>
							</a>
						</li>

						<li>
							<a href="#">
								查看任务详情
								<i class="icon-arrow-right"></i>
							</a>
						</li>
					</ul>
				</li>

				<li class="purple">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<i class="icon-bell-alt icon-animated-bell"></i>
						<span class="badge badge-important">0</span>
					</a>

					<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
						<li class="dropdown-header">
							<i class="icon-warning-sign"></i>
							n条通知
						</li>

						<li>
							<a href="#">
								<div class="clearfix">
									<span class="pull-left">
										<i class="btn btn-xs no-hover btn-pink icon-comment"></i>
										订单监控
									</span>
									<span class="pull-right badge badge-info">+N</span>
								</div>
							</a>
						</li>

						<li>
							<a href="#">
								查看所有通知
								<i class="icon-arrow-right"></i>
							</a>
						</li>
					</ul>
				</li>

				<li class="light-blue">
					<a data-toggle="dropdown" href="#" class="dropdown-toggle">
						<img class="nav-user-photo" src="/res/assets/avatars/user.jpg" alt="BillWu's Photo" />
						<span class="user-info">
							<small>Welcome, 哈哈</small>
							BillWu
						</span>
						<i class="icon-caret-down"></i>
					</a>

					<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
						<li>
							<a href="#">
								<i class="icon-cog"></i>
								设置
							</a>
						</li>

						<li>
							<a href="#">
								<i class="icon-user"></i>
								个人资料
							</a>
						</li>

						<li class="divider"></li>

						<li>
							<a href="#" onclick="loginOut()">
								<i class="icon-off"></i>
								退出
							</a>
						</li>
					</ul>
				</li>
			</ul><!-- /.ace-nav -->
		</div><!-- /.navbar-header -->
	</div><!-- /.container -->
</div>