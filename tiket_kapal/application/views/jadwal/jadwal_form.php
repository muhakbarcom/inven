<div class="row">
    <div class="col-xs-12 col-md-6">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title"><?= $button;?> Jadwal</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
                    <i class="fa fa-minus"></i></button>
                     <button type="button" class="btn btn-box-tool" onclick="location.reload()" title="Collapse">
              <i class="fa fa-refresh"></i></button>
                </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
        <form action="<?php echo $action; ?>" method="post">
	    <div class="form-group">
            <label for="date">Tanggal Keberangkatan <?php echo form_error('tanggal_keberangkatan') ?></label>
            <input type="text" class="form-control" name="tanggal_keberangkatan" id="tanggal_keberangkatan" placeholder="Tanggal Keberangkatan" value="<?php echo $tanggal_keberangkatan; ?>" />
        </div>
	    <div class="form-group">
            <label for="date">Tanggal Sampai <?php echo form_error('tanggal_sampai') ?></label>
            <input type="text" class="form-control" name="tanggal_sampai" id="tanggal_sampai" placeholder="Tanggal Sampai" value="<?php echo $tanggal_sampai; ?>" />
        </div>
	    <div class="form-group">
            <label for="int">Harga Tiket <?php echo form_error('harga_tiket') ?></label>
            <input type="text" class="form-control" name="harga_tiket" id="harga_tiket" placeholder="Harga Tiket" value="<?php echo $harga_tiket; ?>" />
        </div>
	    <input type="hidden" name="id_jadwal" value="<?php echo $id_jadwal; ?>" /> 
	    <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
	    <a href="<?php echo site_url('jadwal') ?>" class="btn btn-default">Cancel</a>
	</form>
         </div>
        </div>
    </div>
</div>