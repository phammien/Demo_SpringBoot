<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Home</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Home</h1>
			</div>
			<div class="col-lg-12">
				<input style="height: 40px;" type="text"/>
				<button class = "btn btn-primary">OK</button>
			</div>
			
		</div><!--/.row-->
		<br>
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						All equipments
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<table class="table table-striped table-hover">
							<thead>
								<tr style="font-weight: bold;">
									<th class="col-sm-1">ID</th>
									<th class="col-sm-2">Type</th>
									<th class="col-sm-2">Name</th>
									<th class="col-sm-2">Status</th>
									<th class="col-sm-3">Description</th>
									<th class="col-sm-2"></th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="item" items="${listEquipment}">
								<tr>
									<th class="col-sm-2">${item.ID }</th>
									<th class="col-sm-3">${item.type }</th>		
									<th class="col-sm-3">${item.name }</th>	
									<th class="col-sm-3">${item.status }</th>
									<th class="col-sm-3">${item.desciption }</th>
									<th class="col-sm-3"></th>								
								</tr>
							</c:forEach>
							</tbody>
						</table>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->