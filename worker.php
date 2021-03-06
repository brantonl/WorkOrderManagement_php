<?php require_once 'php_action/core.php'; ?>
<?php 
	$accessLevel = $_SESSION['accessLevel'];
	if ($accessLevel == 1){
		require_once 'includes/header.php';
	} else if ($accessLevel == 0){
		require_once 'includes/header1.php';
	}
?>


<div class="row">
	<div class="col-md-12">

		<ol class="breadcrumb">
		  <li><a href="dashboard.php">Home</a></li>
		  <li class="active">Worker </li>
		</ol>

		<div class="panel panel-default" <?php if ($accessLevel == 0 ){ ?> style="visibility:hidden" <?php }  ?>  >
			<div class="panel-heading">
				<div class="page-heading"> <i class="glyphicon glyphicon-edit"></i> Manage Worker</div>
			</div> <!-- /panel-heading -->
			<div class="panel-body">

				<div class="remove-messages"></div>

				<div class="div-action pull pull-right" style="padding-bottom:20px;">
					<button class="btn btn-default button1" data-toggle="modal" data-target="#addWorkerModel"<?php if ($accessLevel == 0 ){ ?> disabled <?php }  ?> > <i class="glyphicon glyphicon-plus-sign"></i> Add new worker </button>
				</div> <!-- /div-action -->				
				
				<table class="table" id="manageWorkerTable">
					<thead>
						<tr>							
							<th>Worker name</th>
							<th>Login</th>
							<th>Telephone</th>
							<th>Safty passport</th>
							<th>Access level</th>
							<th style="width:15%;">Options</th>
						</tr>
					</thead>
				</table>
				<!-- /table -->

			</div> <!-- /panel-body -->
		</div> <!-- /panel -->		
	</div> <!-- /col-md-12 -->
</div> <!-- /row -->

<div class="modal fade" id="addWorkerModel" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
    	
    	<form class="form-horizontal" id="submitWorkerForm" action="php_action/createWorker.php" method="POST">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title"><i class="fa fa-plus"></i> Add Worker</h4>
	      </div>
	      <div class="modal-body">
	      	<div id="add-worker-messages"></div>

	        <div class="form-group">
	        	<label for="workerName" class="col-sm-3 control-label">Worker Name </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control" id="workerName" placeholder="Worker Name" name="workerName" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->
			
			<div class="form-group">
	        	<label for="telephone" class="col-sm-3 control-label">Telephone </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="number" class="form-control" id="telephone" placeholder="Telephone" name="telephone" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->
					  
			<div class="form-group">
	        	<label for="cbrePassport" class="col-sm-3 control-label">CBRE Passport </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control" id="cbrePassport" placeholder="CBRE Passport" name="cbrePassport" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->
			  
	        <div class="form-group">
	        	<label for="accessLevel" class="col-sm-3 control-label">Access Level </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <select class="form-control" id="accessLevel" name="accessLevel">
				      	<option value="">~~SELECT~~</option>
				      	<option value="1">Admin</option>
				      	<option value="0">Worker</option>
				      </select>
				    </div>
	        </div> <!-- /form-group-->
		
			<div class="form-group">
	        	<label for="loginId" class="col-sm-3 control-label">Login Name </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control" id="loginId" placeholder="Login Name" name="loginId" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->
			  
			<div class="form-group">
	        	<label for="password" class="col-sm-3 control-label">Password </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="password" class="form-control" id="password" placeholder="password" name="password" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->
			
			<div class="form-group">
	        	<label for="password1" class="col-sm-3 control-label">Re-enter Password </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="password" class="form-control" id="password1" placeholder="Re-enter Password" name="password1" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->
			  
	      </div> <!-- /modal-body -->
	      
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        
	        <button type="submit" class="btn btn-primary" id="createWorkerBtn" data-loading-text="Loading..." autocomplete="off">Save Changes</button>
	      </div>
	      <!-- /modal-footer -->
     	</form>
	     <!-- /.form -->
    </div>
    <!-- /modal-content -->
  </div>
  <!-- /modal-dailog -->
</div>
<!-- / add modal -->

<!-- edit worker -->
<div class="modal fade" id="editWorkerModal" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
    	
    	<form class="form-horizontal" id="editWorkerForm" action="php_action/editWorker.php" method="POST">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title"><i class="fa fa-edit"></i> Edit Worker</h4>
	      </div>
	      <div class="modal-body">

	      	<div id="edit-worker-messages"></div>

	      	<div class="modal-loading div-hide" style="width:50px; margin:auto;padding-top:50px; padding-bottom:50px;">
						<i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>
						<span class="sr-only">Loading...</span>
					</div>

		      <div class="edit-worker-result">
		      	<div class="form-group">
		        	<label for="editWorkerName" class="col-sm-3 control-label">Worker Name </label>
		        	<label class="col-sm-1 control-label">: </label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control" id="editWorkerName" placeholder="Worker Name" name="editWorkerName" autocomplete="off">
					    </div>
		        </div> <!-- /form-group--> 
				<div class="form-group">
		        	<label for="editTelephone" class="col-sm-3 control-label">Telephone </label>
		        	<label class="col-sm-1 control-label">: </label>
					    <div class="col-sm-8">
					      <input type="number" class="form-control" id="editTelephone" placeholder="Telephone" name="editTelephone" autocomplete="off">
					    </div>
		        </div> <!-- /form-group-->
				  
				<div class="form-group">
		        	<label for="editPassport" class="col-sm-3 control-label">CBRE Passport </label>
		        	<label class="col-sm-1 control-label">: </label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control" id="editPassport" placeholder="Passport" name="editPassport" autocomplete="off">
					    </div>
		        </div> <!-- /form-group-->
		      </div>         	        
		      <!-- /edit worker result -->

	      </div> <!-- /modal-body -->
	      
	      <div class="modal-footer editWorkerFooter">
	        <button type="button" class="btn btn-default" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Close</button>
	        
	        <button type="submit" class="btn btn-success" id="editWorkerBtn" data-loading-text="Loading..." autocomplete="off"> <i class="glyphicon glyphicon-ok-sign"></i> Save Changes</button>
	      </div>
	      <!-- /modal-footer -->
     	</form>
	     <!-- /.form -->
    </div>
    <!-- /modal-content -->
  </div>
  <!-- /modal-dailog -->
</div>
<!-- /edit worker -->

<!-- remove worker -->
<div class="modal fade" tabindex="-1" role="dialog" id="removeMemberModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><i class="glyphicon glyphicon-trash"></i> Remove Worker</h4>
      </div>
      <div class="modal-body">
        <p>Do you really want to remove me?</p>
      </div>
      <div class="modal-footer removeStationFooter">
        <button type="button" class="btn btn-default" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> No</button>
        <button type="button" class="btn btn-primary" id="removeWorkerBtn" data-loading-text="Loading..."> <i class="glyphicon glyphicon-ok-sign"></i> Yes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- /remove station -->

<!-- edit worker password-->
<div class="modal fade" id="editPasswordModal" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
    	
    	<form class="form-horizontal" id="editPasswordForm" action="php_action/editWorkerPassword.php" method="POST">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title"><i class="fa fa-edit"></i> Edit Worker Password</h4>
	      </div>
	      <div class="modal-body">

	      	<div id="edit-password-messages"></div>

	      	<div class="modal-loading div-hide" style="width:50px; margin:auto;padding-top:50px; padding-bottom:50px;">
						<i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>
						<span class="sr-only">Loading...</span>
					</div>

		      <div class="edit-password-result">
		      	<div class="form-group">
		        	<label for="editOrgPassword" class="col-sm-3 control-label">Orginal Password </label>
		        	<label class="col-sm-1 control-label">: </label>
					    <div class="col-sm-8">
					      <input type="password" class="form-control" id="editOrgPassword" placeholder="Orginal password" name="editOrgPassword" autocomplete="off">
					    </div>
		        </div> <!-- /form-group--> 
				  
				<div class="form-group">
		        	<label for="editPassword1" class="col-sm-3 control-label">New Password </label>
		        	<label class="col-sm-1 control-label">: </label>
					    <div class="col-sm-8">
					      <input type="password" class="form-control" id="editPassword1" placeholder="New Password" name="editPassword1" autocomplete="off">
					    </div>
		        </div> <!-- /form-group-->
				  
				<div class="form-group">
		        	<label for="editPassword2" class="col-sm-3 control-label">Re-enter password </label>
		        	<label class="col-sm-1 control-label">: </label>
					    <div class="col-sm-8">
					      <input type="password" class="form-control" id="editPassword2" placeholder="Re-enter password" name="editPassword2" autocomplete="off">
					    </div>
		        </div> <!-- /form-group-->
		      </div>         	        
		      <!-- /edit worker result -->

	      </div> <!-- /modal-body -->
	      
	      <div class="modal-footer editPasswordFooter">
	        <button type="button" class="btn btn-default" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Close</button>
	        
	        <button type="submit" class="btn btn-success" id="editPasswordBtn" data-loading-text="Loading..." autocomplete="off"> <i class="glyphicon glyphicon-ok-sign"></i> Save Changes</button>
	      </div>
	      <!-- /modal-footer -->
     	</form>
	     <!-- /.form -->
    </div>
    <!-- /modal-content -->
  </div>
  <!-- /modal-dailog -->
</div>
<!-- /edit worker -->

<script src="custom/js/worker.js"></script>

<?php require_once 'includes/footer.php'; ?>