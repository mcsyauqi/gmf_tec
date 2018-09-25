		<div class="sidebar">
			<div class="scrollbar-inner sidebar-wrapper">
				<div class="user">
					<div class="info">
						<a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true" style="text-align: center;">
							<span>
								<?php
								$nama = $this->db->select('nama_peg')->from('pegawai')->where('no_peg',$this->session->userdata('no_peg'))->get()->row();
								echo $nama->nama_peg;
								?>
								<span class="user-level"><?php 
								if ($this->session->userdata('tipe')=='super_admin') {
									$unit = $this->db->select('unit')->from('pegawai')->where('no_peg',$this->session->userdata('no_peg'))->get()->row();
										echo "$unit->unit - Super Admin";
								} else {
									$unit = $this->db->select('unit')->from('pegawai')->where('no_peg',$this->session->userdata('no_peg'))->get()->row();
									echo "$unit->unit - Admin";
								}
								?></span>
							</span>
						</a>
						<div class="clearfix"></div>

						<div class="collapse in" id="collapseExample" aria-expanded="true" style="">
						</div>
					</div>
				</div>
				<ul class="nav">
					<li class="nav-item <?php if($page_now=='v_dashboard_admin') echo 'active';?>" >
						<a href="<?php echo site_url('admin/dashboard_admin');?>">
							<i class="la la-dashboard" onclick="myFunction()"></i>
							<p>Dashboard</p>
						</a>
					</li>
					<li class="nav-item <?php if($page_now=='v_training_admin') echo 'active';?>">
						<a href="<?php echo site_url('admin/training_admin');?>">
							<i class="la la-certificate"></i>
							<p>Training Compliance</p>
						</a>
					</li>
					<li class="nav-item <?php if($page_now=='v_pegawai_admin') echo 'active';?>">
						<a href="<?php echo site_url('admin/pegawai_admin');?>" onclick="">
							<i class="la la-group"></i>
							<p>Employees</p>
						</a>
					</li>
				</ul>
			</div>
		</div>