<?php 
$page_now="pegawai_admin";
include 'navbar.php';
?>

<div class="main-panel">
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<div class="card-title">Edit Employee</div>
						</div>
						<?php
						foreach ($pegawai -> result() as $peg) 
						{
							$no_peg = $peg->no_peg;

						}

						?>
						<form method="post" action="<?php echo site_url('Pegawai/update_pegawai')?>">
						<div class="card-body">
							<div class="form-group">
								<label for="form_employee">ID</label>
								<input type="text" class="form-control form-control" id="defaultInput" value="<?php echo $peg->no_peg;?>" name="no_peg">
							</div>
							<div class="form-group">
								<label for="form_employee">Name</label>
								<input type="text" class="form-control form-control" id="defaultInput" value="<?php echo $peg->nama_peg;?>" name="nama_peg">
							</div>
							<div class="form-group">
								<label for="defaultSelect">Dinas</label>
								<select class="form-control form-control" id="defaultSelect" name="dinas" >
									<option><?php echo $peg->dinas;?></option>
									<option></option>
									<option>JKTTE</option>
								</select>
							</div>
							<div class="form-group">
								<label for="defaultSelect">Bidang</label>
								<select class="form-control form-control" id="defaultSelect" name="bidang" >
									<option><?php echo $peg->bidang;?></option>
									<option></option>
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
								<select class="form-control form-control" id="defaultSelect" name="unit" >
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
								</select>
							</div>
							<div class="form-group">
								<label for="defaultSelect">Function</label>
								<select class="form-control form-control" id="defaultSelect" name="jabatan" >
									<option><?php echo $peg->jabatan;?></option>
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
								<label for="form_employee">Education</label>
								<input type="text" class="form-control form-control" id="defaultInput"  name="pendidikan" value="<?php echo $peg->pendidikan;?>">
							</div>
							<div class="form-group">
								<label for="form_employee">Date Of Joining</label>
								<input type="date" class="form-control form-control" id="defaultInput" name="tgl_masuk" value="<?php echo $peg->tgl_masuk;?>">
							</div>
							<div class="form-group">
								<label for="form_employee">Date Of Birth</label>
								<input type="date" class="form-control form-control" id="defaultInput" name="tgl_lahir" value="<?php echo $peg->tgl_lahir;?>">
							</div>
							<div class="card-action">
								<button class="btn btn-success" style="margin-left:1%">Save</button>
								
								<a href="<?php echo site_url('Pegawai/pegawai_admin')?>" class="btn btn-danger">Cancel</a>
							</div>
						</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>