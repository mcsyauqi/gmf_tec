<?php 
$page_now="v_pegawai_admin";
include 'v_navbar_admin.php';
?>
<script language="JavaScript" type="text/javascript">
function checkDelete(){
    return confirm('Apakah anda yakin ingin menghapus?');
}
</script>

<div class="main-panel">
	<div class="content">
		<div class="container-fluid">
			<h4 class="page-title">List of Employees</h4>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<a href="<?php echo site_url('admin/pegawai_admin/add_peg_admin');?>">
								<button class="btn btn-info">Add Employee</button></a>
							</div>
							<div class="container" style="overflow-x: auto;">
								<table class="table table-striped table-bordered data" style="width: 125%;">
									<thead>
										<tr>			
											<th style="text-align: center">No. Peg</th>
											<th style="text-align: center">Nama</th>
											<th style="text-align: center">Unit</th>
											<th style="text-align: center">Date of Joining</th>
											<th style="text-align: center">Function</th>
											<th style="text-align: center">Education</th>
											<th style="text-align: center">TOEIC</th>
											<th style="text-align: center">Assessment Level</th>
											<th style="text-align: center">Nilai Assessment</th>
											<th style="text-align: center">Tanggal Assessment</th>
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
												<td><?php echo $peg->unit;?></td>
												<td><?php
												$tgl_bener = strtotime($peg->tgl_masuk); 
												echo date("d-M-Y",$tgl_bener);?></td>
												<td><?php echo $peg->jabatan;?></td>
												<td><?php echo $peg->pendidikan;?></td>
												<td><?php echo $peg->TOEIC;?></td>
												<td><?php echo $peg->ass_level;?></td>
												<td><?php echo $peg->nilai_ass;?></td>
												<td><?php
												$tgl_ass = strtotime($peg->tgl_ass); 
												echo date("d-M-Y",$tgl_ass);?></td>
												
												<td><a href="pegawai_admin/edit_peg_admin/<?php echo $peg->no_peg;?>"><i class="la la-edit" style="font-size:20px"></i></a></td>
												<td><a  href="pegawai_admin/delete_peg_admin/<?php echo $peg->no_peg;?>" onclick="return checkDelete()" ><i class="la la-remove" style="font-size: 20px"></i></a></td>
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
