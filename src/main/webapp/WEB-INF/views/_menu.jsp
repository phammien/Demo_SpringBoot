
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
         
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="images/user.png" class="img-responsive" alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name"><h4>${admin.name }</h4></div>
				<div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		
		<ul class="nav menu">
			<li class="active"><a href="/home"> Home</a></li>
			<li><a href="/add">Add equipment</a></li>
			<li><a href="/modify">Modify equipment</a></li>
			<li><a href="/delete">Delete equipment</a></li>
			<li><a href="/logout">Logout</a></li>
		</ul>
	</div><!--/.sidebar-->