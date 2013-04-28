<!-- <? print_r($major_courses) ?> -->

<div class="container">
	<div class="row">
		<div class="offset1 span8">
			<div class="progress">
				<div class="bar" style="width: <?= round(($user_credits/$major_credits)*100) ?>%"></div>
			</div>
		</div>
		<div class="span3 push-right">
			<center>
				<strong><?= $user_credits ?></strong> out of <strong><?= $major_credits ?></strong> credits completed
			</center>
		</div>
	</div>
	<div class="row">
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Course</th>
					<th>Name</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<? foreach($major_courses as $course): ?>
					<tr class="<? if(isset($course->completed)): ?>success<? elseif (!isset($course->cannot_take)): ?>info<? endif; ?>">
						<td><?= $course->school ?>:<?= $course->course ?></td>
						<td>
							<span class="course"
								data-title="<?= $course->name ?>"
								data-content="<?= $course->description ?>">
								<?= $course->name ?>
							</span>
						</td>
						<td>
							<center>
								<? if(isset($course->completed)): ?>
									<a class="btn btn-danger"
										href="<?= site_url('home/remove_course/' . $course->id) ?>">
										<i class="icon-remove-sign"></i>
									</a>
								<? elseif (!isset($course->cannot_take)): ?>
									<a class="btn btn-success"
										href="<?= site_url('home/complete_course/' . $course->id) ?>">
										<i class="icon-ok-sign"></i>
									</a>
								<? endif; ?>
								<!-- <button class="btn btn-warning"><i class="icon-table"></i></button> -->
							</center>
						</td>
					</tr>
				<? endforeach; ?>
			</tbody>
		</table>
	</div>
</div>
<script type="text/javascript">
	$('.course').popover({
		trigger: 'click',
		placement: 'top'
	});
</script>