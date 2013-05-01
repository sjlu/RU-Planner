<div class="container">
	<div class="row">
		<h3>
			Electives
		</h3>
		<h5>
			<? if (!$taken['TECH'] && !$taken['COMP']): ?>
				<strong>4</strong> electives need to be taken, at least one in <i>Technical</i> and one in <i>Computer</i>
			<? elseif ($taken['TECH'] && $taken['COMP']): ?>
				<? if ($taken['TECH']+$taken['COMP'] >= 4): ?>
					Requirements Completed
				<? else: ?>
					<strong><?= 4-($taken['TECH']+$taken['COMP']) ?></strong> electives in any catgory need to be taken.
				<? endif; ?>
			<? else: ?>
				<? if ($taken['TECH']): ?>
					You need to take at least <strong>one</strong> <i>Computer</i> elective
				<? else: ?>
					You need to take at least <strong>one</strong> <i>Technical</i> elective
				<? endif; ?>

				<? if ($taken['TECH']+$taken['COMP']+1 < 4): ?>
					along with <strong><?= 4-($taken['TECH']+$taken['COMP']+1) ?></strong> <i>other</i> electives
				<? endif; ?>
			<? endif; ?>
		</h5>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Course</th>
					<th>Credits</th>
					<th>Name</th>
					<th>Category</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<? foreach($courses as $course): ?>
					<tr class="<? if(isset($course->completed)): ?>success<? elseif (!isset($course->cannot_take) && !($taken['TECH']+$taken['COMP'] >= 4 && $taken['TECH'] && $taken['COMP'])): ?>info<? endif; ?>">
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
							<? if ($course->type == 'CAP'): ?>
								Capstone
							<? elseif ($course->type == 'TECH'): ?>
								Technical
							<? elseif ($course->type == 'COMP'): ?>
								Computer
							<? endif; ?>
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
									<? if (!($taken['TECH']+$taken['COMP'] >= 4 && $taken['TECH'] && $taken['COMP'])): ?>
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