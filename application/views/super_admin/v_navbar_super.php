		<div class="sidebar" id="non_print">
			<div class="scrollbar-inner sidebar-wrapper">
				<div class="user">
					<div class="info">
						<a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true" style="text-align: center;">
							<span>
								<?php
								$nama = $this->db->select('nama_peg')->from('pegawai')->where('no_peg',$this->session->userdata('no_peg'))->get()->row();
								echo $nama->nama_peg;
								?>
								<span class="user-level">
									<?php 
									if ($this->session->userdata('tipe')=='super_admin') {
										$unit = $this->db->select('unit')->from('pegawai')->where('no_peg',$this->session->userdata('no_peg'))->get()->row();
										echo "$unit->unit - Super Admin";
									} else {
										$unit = $this->db->select('unit')->from('pegawai')->where('no_peg',$this->session->userdata('no_peg'))->get()->row();
										echo "$unit->unit - Admin";
									}
									?>
								</span>
							</span>
						</a>
						<div class="clearfix"></div>

						<div class="collapse in" id="collapseExample" aria-expanded="true" style="">
						</div>
					</div>
				</div>
				<ul class="nav">
					<li class="nav-item <?php if($page_now=='v_dashboard_super') echo 'active';?>" >
						<a href="<?php echo site_url('super_admin/dashboard_super');?>">
							<i class="la la-dashboard" onclick="myFunction()"></i>
							<p>Dashboard</p>
						</a>
					</li>
					<li class="nav-item <?php if($page_now=='v_training_super') echo 'active';?>">
						<a href="<?php echo site_url('super_admin/training_super');?>">
							<i class="la la-certificate"></i>
							<p>Training Compliance</p>
						</a>
					</li>
					<li class="nav-item <?php if($page_now=='v_pegawai_super') echo 'active';?>">
						<a href="<?php echo site_url('super_admin/pegawai_super');?>" onclick="">
							<i class="la la-group"></i>
							<p>Employees</p>
						</a>
					</li>
					<li class="nav-item <?php if($page_now=='v_administrator_super') echo 'active';?>">
						<a href="<?php echo site_url('super_admin/administrator_super');?>" onclick="">
							<i class="la la-expeditedssl"></i>
							<p>Administrator</p>
						</a>
					</li>
				</ul>
			</div>
		</div>