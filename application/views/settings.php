<div class="container">
	<div class="well">
		Use this function to reset your account.<br /><br />
		<a href="#clearAccount" role="button" class="btn btn-danger" data-toggle="modal">Clear Account</a>
	</div>
	<div id="clearAccount" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	  		<h3 id="myModalLabel">Are you sure?</h3>
		</div>
		<div class="modal-body">
	    	<p>Once you delete everything, there's no going back.</p>
		</div>
		<div class="modal-footer">
	    	<button class="btn" data-dismiss="modal" aria-hidden="true">No, I changed my mind.</button>
	    	<a href="<?= site_url('settings/clear') ?>" class="btn btn-danger">Yes, go ahead.</a>
	  	</div>
	</div>
</div>