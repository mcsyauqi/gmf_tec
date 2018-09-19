<?php 
$page_now="training_super";
include 'navbar.php';
?>

<div class="main-panel">
				<div class="content">
					<div class="container-fluid">
						<h4 class="page-title">Employees Training</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
										<div class="card-header">
											<div class="card-title">Edit Training</div>
										</div>
										<div class="card-body">
											<form class="form-group">
												<label class="control-label col-sm-2" for="form_employee"><h7><strong>No. Pegawai</strong></h7></label>
													<label><input type="text" class="form-control form-control" id="defaultInput"></label>
											</form>
											<form class="form-group">
												<label class="control-label col-sm-2" for="form_employee"><h7><strong>Nama</strong></h7></label>
													<label><input type="text" class="form-control form-control" id="defaultInput"></label>
											</form>
											<form class="form-group">
												<label class="control-label col-sm-2" for="form_employee"><h7><strong>Unit</strong></h7></label>
													<label><select class="form-control form-control" id="defaultSelect" name="unit" >
														<option><?php echo $peg->unit;?></option>
														<option></option>
														<option>TEA-1</option>
														<option>TEA-2</option>
														<option>TEA-3</option>
														<option>TEA-4</option>
														<option>TEC-1</option>
														<option>TED-1</option>
														<option>TED-2</option>
														<option>TED-3</option>
														<option>TED-4</option>
														<option>TED-5</option>
														<option>TEL-1</option>
														<option>TEL-2</option>
														<option>TER-1</option>
														<option>TER-2</option>
														<option>TER-3</option>
														<option>TER-4</option>
														<option>TER-5</option>
													</select></label>
											</form>
											<form class="form-group">
												<h6 class="control-label col-sm-2" for="form_employee" style="margin-bottom: -1%"><strong>Human Factor</strong></h6>
												<br>
												<label class="control-label col-sm-2" for="form_employee">Actual Date</label>
													<label><input type="date" class="form-control form-control" id="defaultInput"></label>
												<label class="control-label col-sm-2" for="form_employee">Overdue Date</label>
													<label><input type="date" class="form-control form-control" id="defaultInput"></label>
											</form>
											<form class="form-group">
												<h6 class="control-label col-sm-2" for="form_employee" style="margin-bottom: -1%"><strong>CASR</strong></h6>
												<br>
												<label class="control-label col-sm-2" for="form_employee">Actual Date</label>
													<label><input type="date" class="form-control form-control" id="defaultInput"></label>
												<label class="control-label col-sm-2" for="form_employee">Overdue Date</label>
													<label><input type="date" class="form-control form-control" id="defaultInput"></label>
											</form>
											<div class="form-group">
												<h6 class="control-label col-sm-2" for="form_employee" style="margin-bottom: -1%"><strong>FTS</strong></h6>
												<br>
												<label class="control-label col-sm-2" for="form_employee">Actual Date</label>
													<label><input type="date" class="form-control form-control" id="defaultInput"></label>
											</div>
											<div class="form-group">
												<h6 class="control-label col-sm-2" for="form_employee" style="margin-bottom: -1%"><strong>SMS</strong></h6>
												<br>
												<label class="control-label col-sm-2" for="form_employee">Actual Date</label>
													<label><input type="date" class="form-control form-control" id="defaultInput"></label>
											</div>
											<div class="form-group">
												<h6 class="control-label col-sm-2" for="form_employee" style="margin-bottom: -1%"><strong>EWIS</strong></h6>
												<br>
												<label class="control-label col-sm-2" for="form_employee">Actual Date</label>
													<label><input type="date" class="form-control form-control" id="defaultInput"></label>
											</div>
											<div class="form-group">
												<h6 class="control-label col-sm-2" for="form_employee" style="margin-bottom: -1%"><strong>Module 10</strong></h6>
												<br>
												<label class="control-label col-sm-2" for="form_employee">Actual Date</label>
													<label><input type="date" class="form-control form-control" id="defaultInput"></label>
											</div>
											<div class="form-group">
												<h6 class="control-label col-sm-2" for="form_employee" style="margin-bottom: -1%"><strong>GMF QS</strong></h6>
												<br>
												<label class="control-label col-sm-2" for="form_employee">Actual Date</label>
													<label><input type="date" class="form-control form-control" id="defaultInput"></label>
											</div>
											<div class="form-group">
												<h6 class="control-label col-sm-2" for="form_employee" style="margin-bottom: -1%"><strong>BATK</strong></h6>
												<br>
												<label class="control-label col-sm-2" for="form_employee">Actual Date</label>
													<label><input type="date" class="form-control form-control" id="defaultInput"></label>
											</div>
											<div class="form-group">
												<h6 class="control-label col-sm-2" for="form_employee" style="margin-bottom: -1%"><strong>Basic Eng.</strong></h6>
												<br>
												<label class="control-label col-sm-2" for="form_employee">Actual Date</label>
													<label><input type="date" class="form-control form-control" id="defaultInput"></label>
											</div>
											<div class="form-group">
												<h6 class="control-label col-sm-2" for="form_employee" style="margin-bottom: -1%"><strong>Cont. Air</strong></h6>
												<br>
												<label class="control-label col-sm-2" for="form_employee">Actual Date</label>
													<label><input type="date" class="form-control form-control" id="defaultInput"></label>
											</div>
											<div class="form-group">
												<h6 class="control-label col-sm-2" for="form_employee" style="margin-bottom: -1%"><strong>Type Rating</strong></h6>
												<br>
												<label class="control-label col-sm-2" for="form_employee">Actual Date</label>
													<label><input type="date" class="form-control form-control" id="defaultInput"></label>
											</div>
										<div class="card-action">
											<button class="btn btn-primary">Edit</button>
											<a href="employees.html"><button class="btn btn-danger" style="margin-right:10px">Cancel</button></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>