<?php 
$page_now="v_pegawai_admin";
include 'v_navbar_admin.php';
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
						<form method="post" action="<?php echo site_url('admin/Pegawai/input_peg_admin')?>">
						<div class="card-body">
							<div class="form-group">
								<label for="form_employee">ID</label>
								<input type="text" class="form-control form-control" id="defaultInput" placeholder="Masukkan ID" name="no_peg">
							</div>
							<div class="form-group">
								<label for="form_employee">Name</label>
								<input type="text" class="form-control form-control" id="defaultInput" placeholder="Masukkan Nama" name="nama_peg">
							</div>
							<div class="form-group">
								<label for="defaultSelect">Dinas</label>
								<select class="form-control form-control" id="defaultSelect" name="dinas">
									<option>--Pilih Dinas--</option>
									<option></option>
									<option>JKTTE</option>
								</select>
							</div>
							<div class="form-group">
								<label for="defaultSelect">Bidang</label>
								<select class="form-control form-control" id="defaultSelect" name="bidang">
									<option>--Pilih Bidang--</option>
									<option></option>
									<option>JKTTE</option>
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
								</select>
							</div>
							<div class="form-group">
								<label for="defaultSelect">Unit</label>
								<select class="form-control form-control" id="defaultSelect" name="unit">
									<option>--Pilih Unit--</option>
									<option></option>
									<option>JKTTE</option>
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
								</select>
							</div>
							<div class="form-group">
								<label for="defaultSelect">Function</label>
								<select class="form-control form-control" id="defaultSelect" name="jabatan">
									<option>--Pilih Function--</option>
									<option></option>
									<option>Development Engineer</option>
									<option>Engineering Expert</option>
									<option>General Manager</option>
									<option>Manager</option>
									<option>Secretary</option>
									<option>Senior Aircraft Data Officer</option>
									<option>Senior Development Engineer</option>
									<option>Senior Technical Publication Officer</option>
									<option>Technical Publication Officer</option>
									<option>Trainee for Development Engineer</option>
									<option>Vice President</option>
								</select>
							</div>
							<div class="form-group">
									<label for="defaultSelect">Education</label>
									<select class="form-control form-control" id="defaultSelect" name="pendidikan">
										<option>--Pendidikan Terakhir--</option>
										<option></option>
										<option>SLTA/SMK</option>
										<option>DIPLOMA III</option>
										<option>STRATA I</option>
										<option>STRATA II</option>
										<option>STRATA III</option>
									</select>
							</div>
							<div class="form-group">
								<label for="form_employee">Date Of Joining</label>
								<input type="date" class="form-control form-control" id="defaultInput" name="tgl_masuk">
							</div>
							<div class="form-group">
								<label for="form_employee">Date Of Birth</label>
								<input type="date" class="form-control form-control" id="defaultInput" name="tgl_lahir">
							</div>
							<div class="form-group">
									<label for="form_employee">TOEIC</label>
									<input type="text" class="form-control form-control" id="defaultInput" placeholder="Masukkan Nilai TOEIC" name="TOEIC">
								</div>
								<div class="form-group">
									<label for="defaultSelect">Assessment Level</label>
									<select class="form-control form-control" id="defaultSelect" placeholder="Masukkan Level" name="ass_level">
										<option></option>
										<option>Manager</option>
										<option>General Manager</option>
										<option>Vice President</option>
									</select>
								</div>	
								<div class="form-group">
									<label for="form_employee">Assessment Value</label>
									<input type="text" class="form-control form-control" id="defaultInput" placeholder="Masukkan Nilai Assessment" name="nilai_ass">
								</div>
								<div class="form-group">
									<label for="form_employee">Date Of Assessment</label>
									<input type="date" class="form-control form-control" id="defaultInput" name="tgl_ass">
								</div>
							<div class="card-action">
								<button class="btn btn-success">Add</button>
								<input type="button" class="btn btn-danger" value="Cancel" style="margin-right:10px" onclick="history.back();"/>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>