<?php 
$page_now="v_administrator_super";
include 'v_navbar_super.php';
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
									<option>JKTTEA</option>
									<option>JKTTEC</option>
									<option>JKTTED</option>
									<option>JKTTEJ</option>
									<option>JKTTEL</option>
									<option>JKTTEN</option>
									<option>JKTTEQ</option>
									<option>JKTTER</option>
									<option>JKTTEX</option>
									<option>JKTTEZ</option>
									<option>JKTTE</option>
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