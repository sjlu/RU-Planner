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
		<? foreach ($major_courses as $major_id => $course_groups): ?>
			<h3>
				<? if ($major_id == 1 || $major_id == 2): ?>
				Major Requirements
				<? elseif ($major_id == 11): ?>
				General Engineering Requirements
				<? elseif ($major_id == 12): ?>
				Humanities Requirements
				<? endif; ?>
			</h3>
			<h5>
				<strong>All courses are required.</strong>
			</h5>
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>Course</th>
						<th>Credits</th>
						<th>Name</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<? foreach($course_groups as $course): ?>
						<tr class="<? if(isset($course->completed)): ?>success<? elseif (!isset($course->cannot_take)): ?>info<? endif; ?>">
							<td><?= $course->school ?>:<?= $course->course ?></td>
							<td><?= $course->credits ?></td>
							<td>
								<span class="course"
									data-title="<?= $course->name ?>"
									data-content="<?= $course->description ?>">
									<?= $course->name ?>
								</span>
							</td>
							<td>
								<center>
									<a class="btn"
										href="<?= site_url('comments/show/' . $course->id) ?>">
										<i class="icon-comment"></i>
									</a>
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
		<? endforeach; ?>
	</div>
</div>
<script type="text/javascript">
	$('.course').popover({
		trigger: 'hover',
		placement: 'top'
	});
</script>