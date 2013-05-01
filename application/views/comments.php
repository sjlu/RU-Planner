<div class="container">

	<h3><?= $course->school ?>:<?= $course->course ?> <?= $course->name ?></h3>
	<center>
		<form class="form-inline" action="<?= site_url('comments/add/'.$course->id) ?>" method="POST">
			<input type="text" class="span6" name="comment">
			<button type="submit" class="btn">Add Comment</button>
		</form>
	</center>
	<? if (count($comments)): ?>
		<table class="table table-bordered">
			<? foreach ($comments as $comment): ?>
				<tr>
					<td width="10%"><center><?= date("M j Y" ,strtotime($comment->timestamp)) ?></center></td>
					<td><?= $comment->comment ?></td>
				</tr>
			<? endforeach; ?>
		</table>
	<? endif; ?>
</div>