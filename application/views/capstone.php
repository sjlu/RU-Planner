<div class="container">
	<div class="row">
		<h3>
			Capstone
		</h3>
		<h5>
			<? if ($finished): ?>
				Requirements completed
			<? else: ?>
				<strong>1</strong> Capstone course is required
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
					<tr class="<? if(isset($course->completed)): ?>success<? elseif (!isset($course->cannot_take) && !($finished)): ?>info<? endif; ?>">
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
									<? if (!($finished)): ?>
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