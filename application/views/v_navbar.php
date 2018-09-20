		<div class="sidebar">
			<div class="scrollbar-inner sidebar-wrapper">
				
				<ul class="nav">
					<li class="nav-item <?php if($page_now=='v_dashboard') echo 'active';?>" >
						<a href="<?php echo site_url('dashboard');?>">
							<i class="la la-dashboard" onclick="myFunction()"></i>
							<p>Dashboard</p>
						</a>
					</li>
					<li class="nav-item <?php if($page_now=='v_training') echo 'active';?>">
						<a href="<?php echo site_url('training');?>">
							<i class="la la-certificate"></i>
							<p>Training Compliance</p>
						</a>
					</li>
					<li class="nav-item <?php if($page_now=='v_pegawai') echo 'active';?>">
						<a href="<?php echo site_url('pegawai');?>" onclick="">
							<i class="la la-group"></i>
							<p>Employees</p>
						</a>
					</li>
				</ul>
			</div>
		</div>