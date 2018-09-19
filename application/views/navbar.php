		<div class="sidebar">
			<div class="scrollbar-inner sidebar-wrapper">
				
				<ul class="nav">
					<li class="nav-item <?php if($page_now=='dashboard') echo 'active';?>" >
						<a href="<?php echo site_url('Dashboard');?>">
							<i class="la la-dashboard" onclick="myFunction()"></i>
							<p>Dashboard</p>
						</a>
					</li>
					<li class="nav-item <?php if($page_now=='training') echo 'active';?>">
						<a href="<?php echo site_url('Training');?>">
							<i class="la la-certificate"></i>
							<p>Training Compliance</p>
						</a>
					</li>
					<li class="nav-item <?php if($page_now=='pegawai') echo 'active';?>">
						<a href="<?php echo site_url('Pegawai');?>" onclick="">
							<i class="la la-group"></i>
							<p>Employees</p>
						</a>
					</li>
				</ul>
			</div>
		</div>