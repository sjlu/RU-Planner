<div class="container">
	<div class="row">
		<h3>
			Humanities Requirements
		</h3>
		<h5>
			<? if ($taken_300 >= 2 && $taken_100 >= 2): ?>
				Humanities Requirements Satisfied
			<? else: ?>
				<? if ($taken_100 < 2): ?>
					<strong><?= 2-$taken_100 ?></strong> <i>100 Level</i> courses remaining,
				<? else: ?>
					100 Level Requirements Completed,
				<? endif; ?>
				<? if ($taken_300 < 2): ?>
					<strong><?= 2-$taken_300 ?></strong> <i>300 Level</i> courses remaining
				<? else: ?>
					300 Level Requirements Completed
				<? endif; ?>
			<? endif; ?>
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
				<? foreach($courses as $course): ?>
					<tr class="<? if(isset($course->completed)): ?>success<? elseif (!isset($course->cannot_take) && !($taken_300 >= 2 && $taken_100 >= 2)): ?>info<? endif; ?>">
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
								<? if(isset($course->completed)): ?>
									<a class="btn btn-danger"
										href="<?= site_url('home/remove_course/' . $course->id) ?>">
										<i class="icon-remove-sign"></i>
									</a>
								<? elseif (!isset($course->cannot_take)): ?>
									<? if (!($taken_300 >= 2 && $taken_100 >= 2)): ?>
										<a class="btn btn-success"
											href="<?= site_url('home/complete_course/' . $course->id) ?>">
											<i class="icon-ok-sign"></i>
										</a>
									<? endif; ?>
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
		trigger: 'hover',
		placement: 'top'
	});
</script>