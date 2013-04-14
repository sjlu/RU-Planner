<div class="container">
	<table class="table table-bordered table-striped">
		<thead>
			<tr>
				<th>Course</th>
				<th>Name</th>
			</tr>
		</thead>
		<tbody>
			<? foreach($major_courses as $course): ?>
				<tr>
					<td><?= $course->school ?>:<?= $course->course ?></a></td>
					<td><?= $course->name ?></td>
				</tr>
			<? endforeach; ?>
		</tbody>
	</table>

</div>