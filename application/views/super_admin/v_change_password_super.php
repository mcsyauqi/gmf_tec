<?php 
$page_now="v_pegawai_super";
include 'v_navbar_super.php';
?>

<div class="main-panel">
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<div class="card-title">Add Employee</div>
						</div>
						<div class="card-body">
							<form method="post" action="<?php echo site_url('pegawai/input_pegawai')?>">
								<div class="form-group">
									<label for="form_employee">Password saat ini*</label>
									<input type="text" class="form-control form-control" id="defaultInput" placeholder="Masukkan Password Saat Ini" name="no_peg">
								</div>
								<div class="form-group">
									<label for="form_employee">Password baru*</label>
									<input type="text" class="form-control form-control" id="defaultInput" placeholder="Masukkan Password Baru" name="nama_peg">
								</div>
								<div class="form-group">
									<label for="form_employee">Konfirmasi password baru*</label>
									<input type="text" class="form-control form-control" id="defaultInput" placeholder="Ulangi Password Baru" name="pendidikan">
								</div>
								<div class="card-action">
									<button class="btn btn-success">Add</button>
									<a href="employees.html"><button class="btn btn-danger" style="margin-right:10px">Cancel</button></a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>