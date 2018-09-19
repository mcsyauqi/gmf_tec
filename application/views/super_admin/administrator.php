<?php 
$page_now="administrator";
include 'navbar.php';
?>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<div class="main-panel">
	<div class="content">
		<div class="container-fluid">
			<h4 class="page-title">Administrator List</h4>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<button class="btn btn-info" data-toggle="modal" data-target="#myModal"> Add Admin</button>
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
											<h4 class="modal-title" id="myModalLabel" style="position: absolute;">Add Admin </h4>    
										</div>
										<div class="modal-body">
											<form action="<?php echo site_url('Administrator/input_admin')?>" method="post">
												<div class="form-group">
													<label for="largeInput" style="margin-right: 95%">Nomor</label>
													<input type="text" class="form-control form-control" id="defaultInput" placeholder="Masukkan nomor pegawai" name="no_peg">
												</div>
												<div class="form-group">
													<label for="largeInput" style="margin-right: 95%">Tipe</label>
													<select class="form-control form-control" id="defaultSelect" name="tipe">
														<option>--Pilih Tipe--</option>
														<option value="super_admin">Super Admin</option>
														<option value="admin">Admin</option>
													</select>
												</div>
												<div class="form-group">
													<label for="largeInput" style="margin-right: 95%">Username</label>
													<input type="text" class="form-control form-control" id="defaultInput" placeholder="Masukkan Username" name="username">
												</div>
												<div class="form-group">
													<label for="largeInput" style="margin-right: 95%">Password</label>
													<input type="text" class="form-control form-control" id="defaultInput" placeholder="Masukkan Password" name="password">
												</div>
												<div class="card-action">
													<button class="btn btn-success">Add</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="container" style="overflow-x: scroll;">
							<table class="table table-striped table-bordered data" >
								<thead>
									<tr>			
										<th style="text-align: center">No. Peg</th>
										<th style="text-align: center">Nama</th>
										<th style="text-align: center">Username</th>
										<th style="text-align: center">Password</th>
										<th style="text-align: center">Edit</th>
										<th style="text-align: center">Delete</th>
									</tr>
								</thead>
								<tbody>
									<?php
									foreach ($user->result() as $us) 
									{
										?>
										<tr>
											<td><?php echo $us->no_peg;?></td>
											<td><?php echo $us->nama_peg;?></td>
											<td><?php echo $us->username;?></td>
											<td><?php echo $us->password;?></td>
											<td><i class="show-modal la la-edit" style="font-size:20px" data-no="<?php echo $us->no_peg;?>" data-peg="<?php echo $us->nama_peg;?>" data-user="<?php echo $us->username;?>" data-pass="<?php echo $us->password;?>"></i></td>

											<td><a id="hasil" href="Administrator/delete_admin/<?php echo $us->no_peg;?>"><i class="la la-remove" style="font-size: 20px"></i></a></td>
										</tr>
									<?php }
									?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalsLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalsLabel" style="position: absolute;">EDIT DATA</h4>    
			</div>
			<div class="modal-body">
				<form action="?" method="post">
					<div class="form-group">
						<label for="largeInput" style="margin-right: 95%">ID</label>
						<input type="text" class="form-control form-control" id="no_peg" placeholder="Masukkan ID">
					</div>
					<div class="form-group">
						<label for="largeInput" style="margin-right: 95%">Nama</label>
						<input type="text" class="form-control form-control" id="pegawai" placeholder="Masukkan Nama">
					</div>

					<div class="form-group">
						<label for="largeInput" style="margin-right: 95%">Username</label>
						<input type="text" class="form-control form-control" id="username" placeholder="Masukkan Username">
					</div>
					<div class="form-group">
						<label for="largeInput" style="margin-right: 95%">Password</label>
						<input type="text" class="form-control form-control" id="password" placeholder="Masukkan Password">
					</div>
					<div class="card-action">
						<button class="btn btn-success">Add</button>
						<a href="administrator.html"><button class="btn btn-danger"  style="margin-right:10px">Cancel</button></a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div> -->

<div id="edit" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">		
				<h4 class="modal-title"></h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<form action="<?php echo site_url('Administrator/update_admin')?>" method="post">
					<div class="form-group">
						<label for="largeInput" style="margin-right: 95%">ID</label>
						<input type="text" name="no_peg"  class="form-control form-control" id="no_peg" placeholder="Masukkan ID">
					</div>
					<div class="form-group">
						<label for="largeInput" style="margin-right: 95%">Nama</label>
						<input type="text" class="form-control form-control" id="pegawai" placeholder="Masukkan Nama">
					</div>

					<div class="form-group">
						<label for="largeInput" style="margin-right: 95%">Username</label>
						<input type="text" name="username" class="form-control form-control" id="username" placeholder="Masukkan Username">
					</div>
					<div class="form-group">
						<label for="largeInput" style="margin-right: 95%">Password</label>
						<input type="text" name="password" class="form-control form-control" id="password" placeholder="Masukkan Password">
					</div>
					<div class="card-action">
						<button class="btn btn-success" style="margin-top: 8px">Save</button>
						<button class="btn btn-danger" style="margin-right:10px;margin-top: 8px">Cancel</button></a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">


	$(document).on('click', '.show-modal', function() {
		$('.modal-title').text('Edit Administrator');
		$('#no_peg').val($(this).data('no'));
		$('#pegawai').val($(this).data('peg'));
		$('#username').val($(this).data('user'));
		$('#password').val($(this).data('pass'));
		$('#edit').modal('show');
	});
</script>

