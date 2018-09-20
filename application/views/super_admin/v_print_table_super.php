<div class="container">
	<table class="table table-striped table-bordered data" rules="row" >
		<thead>
			<tr>			
				<th style="text-align: center; width: 5%">No. Peg</th>
				<th style="text-align: center; width: 5%">Name</th>
				<th style="text-align: center; width: 5%">Human Factor</th>
				<th style="text-align: center; width: 5%">CASR</th>
				<th style="text-align: center; width: 5%">FTS</th>
				<th style="text-align: center; width: 5%">SMS</th>
				<th style="text-align: center; width: 5%">EWIS</th>
				<th style="text-align: center; width: 5%">Module 10</th>
				<th style="text-align: center; width: 5%">GMF QS</th>
				<th style="text-align: center; width: 5%">BATK</th>
				<th style="text-align: center; width: 5%">Basic Eng.</th>
				<th style="text-align: center; width: 5%">Cont. Air</th>
				<th style="text-align: center; width: 5%">Type Rating</th>
				<th style="text-align: center; width: 15%">Progress Training</th>	
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
							<td style="width: 8%;"><span class="tipe1"><?php $done_bener = strtotime($train->done_human); ?>
							<?php echo date("d-M-Y",$done_bener);?></span></td> 
						<?php } 
						else { ?>
							<td style="width: 8%;"><span class="tipe2"><?php $done_bener = strtotime($train->done_human); 
							echo date("d-M-Y",$done_bener);?></span></td> 
							
						<?php } ?>

					<?php } else { ?>
						<td style="width: 8%;">
							<p style="background-color: grey; border-radius: 5px; color: white">  <?php echo ("N/A");?></p>
						</td>
						<?php 	
					} ?>

					
					<td><?php $done_bener2 = strtotime($train->done_cas); 
					echo date("d-M-Y",$done_bener2);?></td>
					<td><?php $done_bener3 = strtotime($train->done_fts); 
					echo date("d-M-Y",$done_bener3);?></td>
					<td><?php $done_bener4 = strtotime($train->done_sms); 
					echo date("d-M-Y",$done_bener4);?></td>
					<td><?php $done_bener5 = strtotime($train->done_ewis); 
					echo date("d-M-Y",$done_bener5);?></td>
					<td><?php $done_bener6 = strtotime($train->done_module); 
					echo date("d-M-Y",$done_bener6);?></td>
					<td><?php $done_bener7 = strtotime($train->done_gqs); 
					echo date("d-M-Y",$done_bener7);?></td>
					<td><?php $done_bener8 = strtotime($train->done_batk); 
					echo date("d-M-Y",$done_bener8);?></td>
					<td><?php $done_bener9 = strtotime($train->done_basic); 
					echo date("d-M-Y",$done_bener9);?></td>
					<td><?php $done_bener10 = strtotime($train->done_cont); 
					echo date("d-M-Y",$done_bener10);?></td>
					<td><?php $done_bener11 = strtotime($train->done_typer1); 
					echo date("d-M-Y",$done_bener11);?></td>

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
				</tr>
			<?php }
			?>
		</tbody>
	</table>
</div>