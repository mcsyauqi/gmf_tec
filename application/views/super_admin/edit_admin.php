<?php 
$page_now="administrator";
include 'navbar.php';
?>

<div class="main-panel">
				<div class="content">
					<div class="container-fluid">
						<h4 class="page-title">Administrator Training</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
										<div class="card-header">
											<div class="card-title">Edit Administrator</div>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label for="largeInput">ID</label>
												<input type="text" class="form-control form-control" id="defaultInput" placeholder="Masukkan ID">
											</div>
											<div class="form-group">
												<label for="largeInput">Nama</label>
												<input type="text" class="form-control form-control" id="defaultInput" placeholder="Masukkan Nama">
											</div>
											<div class="form-group">
												<label for="defaultSelect">Unit</label>
												<select class="form-control form-control" id="defaultSelect">
													<option>--Pilih Unit--</option>
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<div class="form-group">
												<label for="largeInput">Username</label>
												<input type="text" class="form-control form-control" id="defaultInput" placeholder="Masukkan Username">
											</div>
											<div class="form-group">
												<label for="largeInput">Password</label>
												<input type="text" class="form-control form-control" id="defaultInput" placeholder="Masukkan Password">
											</div>
										</div> 
										<div class="card-action">
											<button class="btn btn-primary">Edit</button>
											<a href="administrator.html"> <button class="btn btn-danger" style="margin-right:10px">Cancel</button></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>