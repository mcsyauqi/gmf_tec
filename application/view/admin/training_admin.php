<?php 
  $page_now="training_admin";
  include 'navbar.php';
?>
$connect = mysqli_connect('localhost','root','','db_gmf');
$peg = mysqli_query($connect, "SELECT * from pegawai");
$total_peg = mysqli_num_rows($peg);

?>
<style type="text/css">
.tipe1 {
	background-color: green;
	border-radius: 5px;
	padding: 8px;
	color: white;
}
.tipe2 {
	background-color: red;
	border-radius: 5px;
	padding: 8px;
	color: white;
}
</style>

<div class="main-panel">
	<div class="content">
		<div class="container-fluid">
			<h4 class="page-title">Training Compliance</h4>
			<div class="row">
				<div class="col-md-12" style="max-width: 100%; width: auto;">
					<div class="card">
						<div class="card-header" style="margin-top: -1%; text-align: center;">
							<p class="demo">
								<div class="dropdown">

									<button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">

										Export as

									</button>

									<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">

										<a class="dropdown-item" href="#">Excel</a>
										<a class="dropdown-item" id="non_print" onclick="javascript:window.print()">PDF</a>

									</ul>

								</div>
							</p>
						</div>
						<div class="container" style="overflow-x: scroll;">
							<table class="table table-striped table-bordered data" style="width: 175%" rules="row" >
								<thead>
									<tr>			
										<th style="text-align: center; width: 5%">No. Peg</th>
										<th style="text-align: center; width: 7%">Name</th>
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
										<th style="text-align: center; width: 13%">Progress Training</th>
										<th style="text-align: center; width: 5%">Edit</th>
										
									</tr>
								</thead>
								<tbody>
									<?php
									foreach ($training -> result() as $train) 
									{

										$no_peg = $train->no_peg;
										// $train = $train->no_peg;
										?>
										<tr>
											<td><?php echo $train->no_peg;?></td>
											<td><?php echo $train->nama_peg;?></td>

											<!-- isi tabel human -->
											<?php
											date_default_timezone_set('Asia/Jakarta');
											$tgl_sekarang = date('Y-m-d');
											$pattern = '/([^0-9]+)/';
											$sekarang = preg_replace($pattern,'',$tgl_sekarang);
											$due = preg_replace($pattern,'',$train->due_human);
											$cek = $due - $sekarang; 
											$done_bener = strtotime($train->done_human);
											?>


											<?php if ($done_bener!=0000-00-00) { ?>
												
												<?php if ($cek >= 0) { ?>
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
											$cek = $due - $sekarang; 
											$done_bener = strtotime($train->done_cas);
											?>

											<?php if ($done_bener!=0000-00-00) { ?>
												
												<?php if ($cek >= 0) { ?>
													<td><span class="tipe1"><?php $done_bener = strtotime($train->done_cas); ?>
													<?php echo date("d-M-Y",$done_bener);?></span></td> 
												<?php } 
												else { ?>
													<td><span class="tipe2"><?php $done_bener = strtotime($train->done_cas); 
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
													<p style="background-color: red; border-radius: 5px; color: white">  <?php echo ("Belum Training");?></p>
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
													<p style="background-color: red; border-radius: 5px; color: white">  <?php echo ("Belum Training");?></p>
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
													<p style="background-color: red; border-radius: 5px; color: white">  <?php echo ("Belum Training");?></p>
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
													<p style="background-color: red; border-radius: 5px; color: white">  <?php echo ("Belum Training");?></p>
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
													<p style="background-color: red; border-radius: 5px; color: white">  <?php echo ("Belum Training");?></p>
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
													<p style="background-color: red; border-radius: 5px; color: white">  <?php echo ("Belum Training");?></p>
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
													<p style="background-color: red; border-radius: 5px; color: white">  <?php echo ("Belum Training");?></p>
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
													<p style="background-color: red; border-radius: 5px; color: white">  <?php echo ("Belum Training");?></p>
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
													<p style="background-color: red; border-radius: 5px; color: white;">  <?php echo ("Belum Training");?></p>
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

											if ($train->stat_human!=0){
												$bawah++;
											}
											if ($train->stat_cas!=0){
												$bawah++;
											}
											if ($train->stat_fts!=0){
												$bawah++;
											}
											if ($train->stat_sms!=0){
												$bawah++;
											}
											if ($train->stat_ewis!=0){
												$bawah++;
											}
											if ($train->stat_module!=0){
												$bawah++;
											}
											if ($train->stat_gqs!=0){
												$bawah++;
											}
											if ($train->stat_batk!=0){
												$bawah++;
											}
											if ($train->stat_basic!=0){
												$bawah++;
											}
											if ($train->stat_cont!=0){
												$bawah++;
											}

											$total=($atas/$bawah)*100;
											$total = number_format($total, 2, '.', '');


											?>
											<td><p class="demo">
												<div class="progress">
													<div class="progress-bar bg-success" role="progressbar" style="width: <?php echo $total;?>%" aria-valuenow="<?php echo $total;?>" aria-valuemin="0" aria-valuemax="100"><?php echo $total;?>%</div>
												</div></p>
											</td>
											<td><a href="edit_employee.html"><i class="la la-edit" style="font-size:20px"></i></a></td>
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