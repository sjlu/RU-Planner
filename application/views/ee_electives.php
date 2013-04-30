<div class="container">
	<div class="row">
		<h3>
			Electives
		</h3>
		<h5>
			<? if ($taken['ELEC'] >= 4 && ($taken['ELEC']+$taken['TECH']) >= 6): ?>
				Requirements completed
			<? elseif ($taken['ELEC'] < 4): ?>
				<strong><?= 4-$taken['ELEC'] ?></strong> more <i>electrical</i> electives needed
				<? if (6-(4-$taken['ELEC'])-($taken['ELEC']+$taken['TECH']) > 0): ?>
					and <strong><?= 6-(4-$taken['ELEC'])-($taken['ELEC']+$taken['TECH']) ?></strong> <i>other</i> electives needed
				<? endif; ?>
			<? else: ?>
				<strong><?= 6-($taken['ELEC']+$taken['TECH']) ?></strong> <i>other</i> electives needed
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
					<tr class="<? if(isset($course->completed)): ?>success<? elseif (!isset($course->cannot_take) && !($taken['ELEC'] >= 4 && ($taken['ELEC']+$taken['TECH']) >= 6)): ?>info<? endif; ?>">
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
							<? elseif ($course->type == 'ELEC'): ?>
								Electrical
							<? endif; ?>
						</td>
						<td>
							<center>
								<? if(isset($course->completed)): ?>
									<a class="btn btn-danger"
										href="<?= site_url('home/remove_course/' . $course->id) ?>">
										<i class="icon-remove-sign"></i>
									</a>
								<? elseif (!isset($course->cannot_take)): ?>
									<? if (!($taken['ELEC'] >= 4 && ($taken['ELEC']+$taken['TECH']) >= 6)): ?>
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