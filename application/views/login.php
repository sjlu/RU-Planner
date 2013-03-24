<div style="width: 320px; margin: 0 auto;">
	<h3>Login</h3>
	<? if (!empty($error)): ?>
		<div class="alert alert-error" style="margin-bottom: 5px;">
			<b>Error!</b> <?= $error ?>
		</div>
	<? elseif (!empty($info)): ?>
		<div class="alert alert-info" style="margin-bottom: 5px;">
			<b>Info.</b> <?= $info ?>
		</div>
	<? endif; ?>
	<form class="well" method="POST" action="<?= site_url('login') ?>">
		<label>Username</label>
		<input type="text" name="username" style="width: 260px;" <? if (!empty($username)): ?> value="<?= $username ?>" <? endif; ?>>
		<label>Password</label>
		<input type="password" name="password" style="width: 260px;">
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>