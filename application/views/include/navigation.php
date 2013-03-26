<div id="nav" class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
      		</a>

	      	<a class="brand" href="<?= site_url('/') ?>">RU Planner</a>

			<div class="nav-collapse collapse">
		      	<ul class="nav pull-right">
		      		<? if (!is_logged_in()): ?>
						<li><a href="<?= site_url('login') ?>"><i class="icon-signin"></i> Login</a></li>
					<? else: ?>
						<li><a href="<?= site_url('logout') ?>"><i class="icon-signout"></i> Logout</a></li>
					<? endif; ?>
				</ul>
			</div>
		</div>
    </div>
</div>