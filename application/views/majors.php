<div id="select-major" class="container">
	<div class="alert alert-info">
		<strong>Select a major!</strong> We really can't tell you what to do until you've selected a path.
	</div>
	<form class="form-inline" method="POST" action="<?= base_url('home/choose_major') ?>">
		<select name="major">
			<option value="" selected>Select a major</option>	
			<? foreach ($majors as $major): ?>
				<option value="<?= $major->id ?>"><?= $major->name ?></option>
			<? endforeach; ?>
		</select>
		<button class="btn btn-primary" type="submit">Choose</button>
	</form>
</div>