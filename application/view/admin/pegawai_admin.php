<?php 
$page_now="pegawai_admin";
include 'navbar.php';
?>
<div class="main-panel">
	<div class="content">
		<div class="container-fluid">
			<h4 class="page-title">List of Employees</h4>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<a href="<?php echo site_url('Pegawai/add_peg_admin');?>">
								<button class="btn btn-info">Add Employee</button></a>
							</div>
							<div class="container" style="overflow-x: scroll;">
								<table class="table table-striped table-bordered data" >
									<thead>
										<tr>			
											<th style="text-align: center">No. Peg</th>
											<th style="text-align: center">Nama</th>
											<!-- <th style="text-align: center">Bidang</th> -->
											<th style="text-align: center">Unit</th>
											<th style="text-align: center">Date of Joining</th>
											<th style="text-align: center">Function</th>
											<th style="text-align: center">Education</th>
											<th style="text-align: center">Edit</th>
											<th style="text-align: center">Delete</th>
										</tr>
									</thead>
									<tbody>
										<?php
										foreach ($pegawai as $peg) 
										{

											$no_peg = $peg->no_peg;
											?>
											<tr>
												<td><?php echo $peg->no_peg;?></td>
												<td><?php echo $peg->nama_peg;?></td>
												<!-- <td><?php echo $peg->bidang;?></td> -->
												<td><?php echo $peg->unit;?></td>
												<td><?php
												$tgl_bener = strtotime($peg->tgl_masuk); 
												echo date("d-M-Y",$tgl_bener);?></td>
												<td><?php echo $peg->jabatan;?></td>
												<td><?php echo $peg->pendidikan;?></td>
												<td><a href="edit_peg_admin/<?php echo $peg->no_peg;?>"><i class="la la-edit" style="font-size:20px"></i></a></td>
												<td><a id="hasil" href="delete_peg_admin/<?php echo $peg->no_peg;?>"><i class="la la-remove" style="font-size: 20px"></i></a></td>

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
