<?php 
$page_now="v_pegawai";
include 'v_navbar.php';
?>

<div class="main-panel">
	<div class="content">
		<div class="container-fluid">
			<h4 class="page-title">List of Employees</h4>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
						</div>
						<div class="container" style="overflow-x: scroll;">
							<table class="table table-striped table-bordered data" >
								<thead>
									<tr>			
										<th style="text-align: center">No. Peg</th>
										<th style="text-align: center">Nama</th>
										<th style="text-align: center">Bidang</th>
										<th style="text-align: center">Unit</th>
										<th style="text-align: center">Date of Joining</th>
										<th style="text-align: center">Function</th>
										<th style="text-align: center">Education</th>
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
											<td><?php echo $peg->bidang;?></td>
											<td><?php echo $peg->unit;?></td>
											<td><?php
											$tgl_bener = strtotime($peg->tgl_masuk); 
											echo date("d-M-Y",$tgl_bener);?></td>
											<td><?php echo $peg->jabatan;?></td>
											<td><?php echo $peg->pendidikan;?></td>
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