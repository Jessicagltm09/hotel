<div class="page-bar">
	<ul class="page-breadcrumb">
		<li>
			<i class="fa fa-home"></i>
			<a href="<?php echo base_url();?>sistem/home">Home</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="<?php echo base_url();?>sistem/kamar">Kamar</a>
		</li>
	</ul>
</div>

<div class="row">
	<div class="col-md-12">
		<?php 

		 if($this->session->flashdata('hapus')){
		 	echo "<div class='alert alert-danger'><span>Kamar Delete</span></div>";
		 }
		 else if($this->session->flashdata('berhasil')){
		 	echo "<fiv class='alert alert-success'><span>Kamar Save</span></div>";
		 }
		 else if($this->session->flashdata('update')){
		 	echo "<div class='alert alert-success'><span>Kamar Update</span></div>";
		 }
		 else if($this->session->flashdata('ada')){
		 	echo "<div class='alert alert-danger'<span>Kamar Exist</span></div>";
		 }
		 ?>

		  <div class="portlet box green">
		  	<div class="portlet-title">
		  		<div class="caption">
		  			<i class="fa fa-edit"></i>Kamar</div>
		  		</div>

		  <div class="portlet-body">
		  	<div class="table-toolbar">
		  		<div class="row">
		  			<div class="col-md-6">
		  				<div class="btn-group">
		  					<a class="btn green" href="<?php echo base_url();?>sistem/kamar_tambah">Add <i class="fa fa-plus"></i>
		  					</a>
		  				</div>
		  			</div>
		  		</div>
		  	</div>
		  	<table class="table table-striped table-hover table-bordered" id="sample_editable_1">
		  		<thead>
		  			<tr>
		  				<th>No</th>
		  				<th>Aksi</th>
		  				<th>Nomer Kamar</th>
		  				<th>Harga Kamar</th>
		  				<th>kelas kamar</th>
		  				<th>Gambar Kamar</th>

		  			</tr>
		  		</thead>
		  		<tbody>
		  			<?php 
		  			$no=1;
		  			foreach($kamar->result_array() as $tampil) {?>
		  				<tr>
		  					<td><?php echo $no;?></td>
		  					<td><a href="<?php echo base_url();?>sistem/kamar_edit/<?php echo $tampil['id_kamar'];?>"><i class="fa fa-edit"></i></a> &nbsp;
		  						<a href="#" name="<?php echo $tampil['nomer_kamar'];?>" kode="<?php echo $tampil['id_kamar'];?>" class="hapus"> <i class="fa fa-times"></i></a>
		  						<td><?php echo $tampil['nomer_kamar'];?></td>
		  						<td><?php echo rupiah($tampil['harga_kamar']);?></td>
		  						<td><?php echo $tampil['nama_kelas_kamar'];?></td>
		  						<td>
		  							<a class="btn-green" href="<?php echo base_url();?>sistem/kamar_gambar/<?php echo $tampil['id_kamar'];?>"><i class="fa fa-picture-o"></i></a>
		  						</td>
		  					
		  				</tr>
		  				<?php 
		  				$no++;
		  			}
		  			?>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title">Konfirmasi</h4>
        </div>
        <div class="modal-body">
            <input type="hidden" name="idhapus" id="idhapus">
                <p>Apakah anda yakin ingin menghapus kamar <strong class="text-konfirmasi"> </strong> ?</p>
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-success btn-xs" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-danger btn-xs" id="konfirmasi">Hapus</button>
        </div>
    </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


		  		</tbody>
		  	</table>
		  </div>
		</div>
	</div>
</div>


<script type="text/javascript">
    // function confirmDelete()
    // {
    //     return confirm("Apakah anda yakin ingin menghapus data anggota")
    // }

    $(function(){
        $(".hapus").click(function(){
            var kode=$(this).attr("kode");
            var name=$(this).attr("name");
           
            $(".text-konfirmasi").text(name)
            $("#idhapus").val(kode);
            $("#myModal").modal("show");
        });
        
        $("#konfirmasi").click(function(){
            var id_kamar = $("#idhapus").val();
            $.ajax({
                url:"<?php echo site_url('sistem/kamar_delete/');?>",
                type:"POST",
                data:"id_kamar="+id_kamar,
                cache:false,
                success:function(html){
                    location.href="<?php echo site_url('sistem/kamar_delete/delete-success');?>";
                }
            });
        });
    });
</script>

