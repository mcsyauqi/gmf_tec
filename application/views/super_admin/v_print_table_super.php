<?php
$page_now="v_print_table_super";
include 'v_koneksi_super.php';
$peg = mysqli_query($connect, "SELECT * from pegawai");
$total_peg = mysqli_num_rows($peg);
?>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>Export to PDF</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
</head>
<link rel="stylesheet" href="<?php echo base_url();?>assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
	<link rel="stylesheet" href="<?php echo base_url();?>assets/css/ready.css">
	<link rel="stylesheet" href="<?php echo base_url();?>assets/css/demo.css">
	<script src="<?php echo base_url();?>assets/js/code/highcharts.js"></script>
	<script src="<?php echo base_url();?>assets/js/code/modules/data.js"></script>
	<script src="<?php echo base_url();?>assets/js/code/modules/drilldown.js"></script>
	<link rel="stylesheet" href="<?php echo base_url();?>assets/dataTable/css/jquery.dataTables.css">
	<link rel="stylesheet" href="<?php echo base_url();?>assets/dataTable/css/dataTables.bootstrap4.css">
	<link rel="shortcut icon" href="<?php echo base_url();?>/assets/img/favicon.ico" type="image/x-icon"/>
<style type="text/css">
@media print{
	#non_print {
		display: none;
	} @page {size: landscape;}
}
}
</style>
	<div class="card-action">
		<button id="non_print" onclick="javascript:window.print()" class="btn btn-primary" style="margin-right: 2%; margin-top: 1%;margin-bottom: 1%;">Export</button>
	</div>
	<div class="content">
		<div class="container-fluid">
							<table class="table table-striped table-bordered data" style="width: 100%" rules="row" >
								<thead>
									<tr>			
										<th style="text-align: center; width: 5%">No. Peg</th>
										<th style="text-align: center; width: 7%">Name</th>
										<th style="text-align: center; width: 7%">Unit</th>
										<th style="text-align: center; width: 7%">Human Factor</th>
										<th style="text-align: center; width: 7%">CASR</th>
										<th style="text-align: center; width: 7%">FTS</th>
										<th style="text-align: center; width: 7%">SMS</th>
										<th style="text-align: center; width: 7%">EWIS</th>
										<th style="text-align: center; width: 7%">Module 10</th>
										<th style="text-align: center; width: 7%">GMF QS</th>
										<th style="text-align: center; width: 7%">BATK</th>
										<th style="text-align: center; width: 7%">Basic Eng.</th>
										<th style="text-align: center; width: 7%">Cont. Air</th>
										<th style="text-align: center; width: 7%">Type Rating</th>
										
									</tr>
								</thead>
								<tbody>
									<?php
									foreach ($training -> result() as $train) 
									{

										$no_peg = $train->no_peg;
										
										?>
										<tr>
											<td><?php echo $train->no_peg;?></td>
											<td><?php echo $train->nama_peg;?></td>
											<td><?php echo $train->unit;?></td>
											<!-- isi tabel human -->
											<?php
											date_default_timezone_set('Asia/Jakarta');
											$tgl_sekarang = date('Y-m-d');
											$pattern = '/([^0-9]+)/';
											$sekarang = preg_replace($pattern,'',$tgl_sekarang);
											$due = preg_replace($pattern,'',$train->due_human);
											$cek = (int)$due - $sekarang; 
											$done_bener = strtotime($train->done_human);

											$date = new DateTime($train->due_human);
											$now = new DateTime();
											$interval = $date->diff($now);
											?>

											<?php if ($done_bener!=0000-00-00) { ?>
												
												<?php if ($interval->days<=60 && $cek >= 0) { ?>
													<td ><span class="tipe3"><?php $done_bener = strtotime($train->done_human); ?>
													<?php echo date("d-M-Y",$done_bener);?></span></td> 
													<?php
												}
												elseif ($cek >= 0) { ?>
													<td ><span class="tipe1"><?php $done_bener = strtotime($train->done_human); ?>
													<?php echo date("d-M-Y",$done_bener);?></span></td> 
												<?php } 
												else { ?>
													<td ><span class="tipe2"><?php $done_bener = strtotime($train->done_human); 
													echo date("d-M-Y",$done_bener);?></span></td> 

												<?php } ?>

											<?php } else { ?>
												<td>
													<p style="background-color: grey; border-radius: 5px; color: white">  <?php echo ("N/A");?></p>
												</td>
												<?php 	
											} ?>
											<!-- akhir tabel human -->

											<!-- isi tabel cas -->
											<?php
											date_default_timezone_set('Asia/Jakarta');
											$tgl_sekarang = date('Y-m-d');
											$pattern = '/([^0-9]+)/';
											$sekarang = preg_replace($pattern,'',$tgl_sekarang);
											$due = preg_replace($pattern,'',$train->due_cas);
											$cek = (int)$due - $sekarang; 
											$done_bener = strtotime($train->done_cas);

											$date = new DateTime($train->due_cas);
											$now = new DateTime();
											$interval = $date->diff($now);

											?>


											<?php if ($done_bener!=0000-00-00) { ?>
												
												<?php if ($interval->days<=60 && $cek >= 0) { ?>
													<td ><span class="tipe3"><?php $done_bener = strtotime($train->done_cas); ?>
													<?php echo date("d-M-Y",$done_bener);?></span></td> 
													<?php
												}
												elseif ($cek >= 0) { ?>
													<td ><span class="tipe1"><?php $done_bener = strtotime($train->done_cas); ?>
													<?php echo date("d-M-Y",$done_bener);?></span></td> 
												<?php } 
												else { ?>
													<td ><span class="tipe2"><?php $done_bener = strtotime($train->done_cas); 
													echo date("d-M-Y",$done_bener);?></span></td> 

												<?php } ?>

											<?php } else { ?>
												<td>
													<p style="background-color: grey; border-radius: 5px; color: white">  <?php echo ("N/A");?></p>
												</td>
												<?php 	
											} ?>
											<!-- akhir tabel cas -->

											<!-- isi tabel fts -->
											<?php
											date_default_timezone_set('Asia/Jakarta');
											$tgl_sekarang = date('Y-m-d');
											$pattern = '/([^0-9]+)/';
											$sekarang = preg_replace($pattern,'',$tgl_sekarang);
											$done = preg_replace($pattern,'',$train->done_fts);
											$cek = $sekarang - $done; 
											$done_bener = strtotime($train->done_fts);
											?>

											<?php if ($done_bener!=0000-00-00) { ?>
												
												<?php if ($cek >= 0) { ?>
													<td><span class="tipe1"><?php $done_bener = strtotime($train->done_fts); ?>
													<?php echo date("d-M-Y",$done_bener);?></span></td> 
												<?php } 
												else { ?>
													<td><span class="tipe2"><?php $done_bener = strtotime($train->done_fts); 
													echo date("d-M-Y",$done_bener);?></span></td> 

												<?php } ?>

											<?php } else { ?>
												<td>
													<p style="background-color: grey; border-radius: 5px; color: white">  <?php echo ("N/A");?></p>
												</td>
												<?php 	
											} ?>
											<!-- akhir tabel fts -->

											<!-- isi tabel sms -->
											<?php
											date_default_timezone_set('Asia/Jakarta');
											$tgl_sekarang = date('Y-m-d');
											$pattern = '/([^0-9]+)/';
											$sekarang = preg_replace($pattern,'',$tgl_sekarang);
											$done = preg_replace($pattern,'',$train->done_sms);
											$cek = $sekarang - $done; 
											$done_bener = strtotime($train->done_sms);
											?>

											<?php if ($done_bener!=0000-00-00) { ?>
												
												<?php if ($cek >= 0) { ?>
													<td><span class="tipe1"><?php $done_bener = strtotime($train->done_sms); ?>
													<?php echo date("d-M-Y",$done_bener);?></span></td> 
												<?php } 
												else { ?>
													<td><span class="tipe2"><?php $done_bener = strtotime($train->done_sms); 
													echo date("d-M-Y",$done_bener);?></span></td> 

												<?php } ?>

											<?php } else { ?>
												<td>
													<p style="background-color: grey; border-radius: 5px; color: white">  <?php echo ("N/A");?></p>
												</td>
												<?php 	
											} ?>
											<!-- akhir tabel sms -->

											<!-- isi tabel ewis -->
											<?php
											date_default_timezone_set('Asia/Jakarta');
											$tgl_sekarang = date('Y-m-d');
											$pattern = '/([^0-9]+)/';
											$sekarang = preg_replace($pattern,'',$tgl_sekarang);
											$done = preg_replace($pattern,'',$train->done_ewis);
											$cek = $sekarang - $done; 
											$done_bener = strtotime($train->done_ewis);
											?>

											<?php if ($done_bener!=0000-00-00) { ?>
												
												<?php if ($cek >= 0) { ?>
													<td><span class="tipe1"><?php $done_bener = strtotime($train->done_ewis); ?>
													<?php echo date("d-M-Y",$done_bener);?></span></td> 
												<?php } 
												else { ?>
													<td><span class="tipe2"><?php $done_bener = strtotime($train->done_ewis); 
													echo date("d-M-Y",$done_bener);?></span></td> 

												<?php } ?>

											<?php } else { ?>
												<td>
													<p style="background-color: grey; border-radius: 5px; color: white">  <?php echo ("N/A");?></p>
												</td>
												<?php 	
											} ?>
											<!-- akhir tabel ewis -->

											<!-- isi tabel module -->
											<?php
											date_default_timezone_set('Asia/Jakarta');
											$tgl_sekarang = date('Y-m-d');
											$pattern = '/([^0-9]+)/';
											$sekarang = preg_replace($pattern,'',$tgl_sekarang);
											$done = preg_replace($pattern,'',$train->done_module);
											$cek = $sekarang - $done; 
											$done_bener = strtotime($train->done_module);
											?>

											<?php if ($done_bener!=0000-00-00) { ?>
												
												<?php if ($cek >= 0) { ?>
													<td><span class="tipe1"><?php $done_bener = strtotime($train->done_module); ?>
													<?php echo date("d-M-Y",$done_bener);?></span></td> 
												<?php } 
												else { ?>
													<td><span class="tipe2"><?php $done_bener = strtotime($train->done_module); 
													echo date("d-M-Y",$done_bener);?></span></td> 

												<?php } ?>

											<?php } else { ?>
												<td>
													<p style="background-color: grey; border-radius: 5px; color: white">  <?php echo ("N/A");?></p>
												</td>
												<?php 	
											} ?>
											<!-- akhir tabel module -->

											<!-- isi tabel gqs -->
											<?php
											date_default_timezone_set('Asia/Jakarta');
											$tgl_sekarang = date('Y-m-d');
											$pattern = '/([^0-9]+)/';
											$sekarang = preg_replace($pattern,'',$tgl_sekarang);
											$done = preg_replace($pattern,'',$train->done_gqs);
											$cek = $sekarang - $done; 
											$done_bener = strtotime($train->done_gqs);
											?>

											<?php if ($done_bener!=0000-00-00) { ?>
												
												<?php if ($cek >= 0) { ?>
													<td><span class="tipe1"><?php $done_bener = strtotime($train->done_gqs); ?>
													<?php echo date("d-M-Y",$done_bener);?></span></td> 
												<?php } 
												else { ?>
													<td><span class="tipe2"><?php $done_bener = strtotime($train->done_gqs); 
													echo date("d-M-Y",$done_bener);?></span></td> 

												<?php } ?>

											<?php } else { ?>
												<td>
													<p style="background-color: grey; border-radius: 5px; color: white">  <?php echo ("N/A");?></p>
												</td>
												<?php 	
											} ?>
											<!-- akhir tabel gqs -->

											<!-- isi tabel batk -->
											<?php
											date_default_timezone_set('Asia/Jakarta');
											$tgl_sekarang = date('Y-m-d');
											$pattern = '/([^0-9]+)/';
											$sekarang = preg_replace($pattern,'',$tgl_sekarang);
											$done = preg_replace($pattern,'',$train->done_batk);
											$cek = $sekarang - $done; 
											$done_bener = strtotime($train->done_batk);
											?>

											<?php if ($done_bener!=0000-00-00) { ?>
												
												<?php if ($cek >= 0) { ?>
													<td><span class="tipe1"><?php $done_bener = strtotime($train->done_batk); ?>
													<?php echo date("d-M-Y",$done_bener);?></span></td> 
												<?php } 
												else { ?>
													<td><span class="tipe2"><?php $done_bener = strtotime($train->done_batk); 
													echo date("d-M-Y",$done_bener);?></span></td> 

												<?php } ?>

											<?php } else { ?>
												<td>
													<p style="background-color: grey; border-radius: 5px; color: white">  <?php echo ("N/A");?></p>
												</td>
												<?php 	
											} ?>
											<!-- akhir tabel batk -->

											<!-- isi tabel basic -->
											<?php
											date_default_timezone_set('Asia/Jakarta');
											$tgl_sekarang = date('Y-m-d');
											$pattern = '/([^0-9]+)/';
											$sekarang = preg_replace($pattern,'',$tgl_sekarang);
											$done = preg_replace($pattern,'',$train->done_basic);
											$cek = $sekarang - $done; 
											$done_bener = strtotime($train->done_basic);
											?>

											<?php if ($done_bener!=0000-00-00) { ?>
												
												<?php if ($cek >= 0) { ?>
													<td><span class="tipe1"><?php $done_bener = strtotime($train->done_basic); ?>
													<?php echo date("d-M-Y",$done_bener);?></span></td> 
												<?php } 
												else { ?>
													<td><span class="tipe2"><?php $done_bener = strtotime($train->done_basic); 
													echo date("d-M-Y",$done_bener);?></span></td> 

												<?php } ?>

											<?php } else { ?>
												<td>
													<p style="background-color: grey; border-radius: 5px; color: white">  <?php echo ("N/A");?></p>
												</td>
												<?php 	
											} ?>
											<!-- akhir tabel basic -->

											<!-- isi tabel cont -->
											<?php
											date_default_timezone_set('Asia/Jakarta');
											$tgl_sekarang = date('Y-m-d');
											$pattern = '/([^0-9]+)/';
											$sekarang = preg_replace($pattern,'',$tgl_sekarang);
											$done = preg_replace($pattern,'',$train->done_cont);
											$cek = $sekarang - $done; 
											$done_bener = strtotime($train->done_cont);
											?>

											<?php if ($done_bener!=0000-00-00) { ?>
												
												<?php if ($cek >= 0) { ?>
													<td><span class="tipe1"><?php $done_bener = strtotime($train->done_cont); ?>
													<?php echo date("d-M-Y",$done_bener);?></span></td> 
												<?php } 
												else { ?>
													<td><span class="tipe2"><?php $done_bener = strtotime($train->done_cont); 
													echo date("d-M-Y",$done_bener);?></span></td> 

												<?php } ?>

											<?php } else { ?>
												<td>
													<p style="background-color: grey; border-radius: 5px; color: white">  <?php echo ("N/A");?></p>
												</td>
												<?php 	
											} ?>
											<!-- akhir tabel cont -->

											<!-- isi tabel typer1 -->
											<?php
											date_default_timezone_set('Asia/Jakarta');
											$tgl_sekarang = date('Y-m-d');
											$pattern = '/([^0-9]+)/';
											$sekarang = preg_replace($pattern,'',$tgl_sekarang);
											$done = preg_replace($pattern,'',$train->done_typer1);
											$cek = $sekarang - $done; 
											$done_bener = strtotime($train->done_typer1);
											?>

											<?php if ($done_bener!=0000-00-00) { ?>
												
												<?php if ($cek >= 0) { ?>
													<td style="align-content: center;"><span class="tipe1">
														<?php echo $train->stat_typer1;?></span></td> 
													<?php } 
													else { ?>
														<td><span class="tipe2"><?php $done_bener = strtotime($train->done_typer1); 
														echo date("d-M-Y",$done_bener);?></span></td> 

													<?php } ?>

												<?php } else { ?>
													<td>
														<p style="background-color: grey; border-radius: 5px; color: white;">  <?php echo ("N/A");?></p>
													</td>
													<?php 	
												} ?>
												<!-- akhir tabel typer1 -->

												<?php
												$atas = 0;
												$bawah = 0;
												if ($train->stat_human==5||$train->stat_human==4){
													$atas++;
												}
												if ($train->stat_cas==5||$train->stat_cas==4){
													$atas++;
												}
												if ($train->stat_fts==5){
													$atas++;
												}
												if ($train->stat_sms==5){
													$atas++;
												}
												if ($train->stat_ewis==5){
													$atas++;
												}
												if ($train->stat_module==5){
													$atas++;
												}
												if ($train->stat_gqs==5){
													$atas++;
												}
												if ($train->stat_batk==5){
													$atas++;
												}
												if ($train->stat_basic==5){
													$atas++;
												}
												if ($train->stat_cont==5){
													$atas++;
												}

												if ($train->stat_human!=NULL){
													$bawah++;
												}
												if ($train->stat_cas!=NULL){
													$bawah++;
												}
												if ($train->stat_fts!=NULL){
													$bawah++;
												}
												if ($train->stat_sms!=NULL){
													$bawah++;
												}
												if ($train->stat_ewis!=NULL){
													$bawah++;
												}
												if ($train->stat_module!=NULL){
													$bawah++;
												}
												if ($train->stat_gqs!=NULL){
													$bawah++;
												}
												if ($train->stat_batk!=NULL){
													$bawah++;
												}
												if ($train->stat_basic!=NULL){
													$bawah++;
												}
												if ($train->stat_cont!=NULL){
													$bawah++;
												}

												$total=($atas/$bawah)*100;
												$total = number_format($total, 2, '.', '');


												?>
											</tr>
										<?php }
										?>
									</tbody>
								</table>
							</div>
							
						</div>
						
<script src="<?php echo base_url();?>assets/js/core/jquery.3.2.1.min.js"></script>
<script src="<?php echo base_url();?>assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="<?php echo base_url();?>assets/js/core/popper.min.js"></script>
<script src="<?php echo base_url();?>assets/js/core/bootstrap.min.js"></script>
<script src="<?php echo base_url();?>assets/js/plugin/chartist/chartist.min.js"></script>
<script src="<?php echo base_url();?>assets/js/plugin/chartist/plugin/chartist-plugin-tooltip.min.js"></script>
<script src="<?php echo base_url();?>assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
<script src="<?php echo base_url();?>assets/js/plugin/jquery-mapael/jquery.mapael.min.js"></script>
<script src="<?php echo base_url();?>assets/js/plugin/chart-circle/circles.min.js"></script>
<script src="<?php echo base_url();?>assets/dataTable/js/jquery.dataTables.js"></script>
<script src="<?php echo base_url();?>assets/dataTable/js/dataTables.bootstrap4.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.data').DataTable();
	});
</script>