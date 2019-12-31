<div class="page-bar">
	<ul class="page-breadcrumb">
		<li>
			<i class="fa fa-home"></i>
			<a href="<?php echo base_url();?>sistem/home">Home</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="<?php echo base_url();?>sistem/kategori_galeri">Kategori Galeri</a>
		</li>
	</ul>

</div>

<div class="row">
	<div class="col-md-12">

		<?php 

		if ($this->session->flashdata('hapus')) {
		 	echo "<div class='alert alert-danger'>
		 	<span>Kategori Galeri Delete</span>
		 	</div>";
		 }
		 else if($this->session->flashdata('berhasil')){
			echo "<div class='alert alert-succes'>
			<span>Kategori Galeri Save</span>
			</div>";
		}
		else if($this->session->flashdata('update')){
			
			echo "<div class='alert alert-succes'>
			<span>Kategori Galeri Update</span>
			</div>";

		}
		else if($this->session->flashdata('ada')){
			
			echo "<div class='alert alert-danger'>
			<span>Kategori Galeri Exist</span>
			</div>";

		}

		?>
		<div class="portlet box green">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-gift"></i>Kategori Galeri
		</div>



	</div>

	<div class="portlet-body">
		<div class="table-toolbar">
			<div class="row">

				<div class="col-md-6">
					<div class="btn-group">

						<a class="btn green" href="<?php echo base_url();?>sistem/kategori_galeri_tambah">Add <i class="fa fa-plus"></i>
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
					<th>Kategori Galeri</th>



				</tr>
			</thead>
			<tbody>
				<?php
				$no=1;

				foreach ($kategori_galeri->result_array() as $tampil) { ?>
					<tr>

						<td><?php echo $no;?></td>
						<td><a href="<?php echo base_url();?>sistem/kategori_galeri_edit/<?php echo $tampil['id_kategori_galeri'];?>"><i class="fa fa-edit"></i></a> &nbsp;
							<a href="#" kode="<?php echo $tampil['id_kategori_galeri'];?>"name="<?php echo $tampil['nama_kategori_galeri'];?>" class="hapus"> <i class="fa fa-times"></i></a>
							<td><?php echo $tampil['nama_kategori_galeri'];?></td>


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
                <p>Apakah anda yakin ingin menghapus gambar <strong class="text-konfirmasi"> </strong> ?</p>
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
            var id_kategori_galeri = $("#idhapus").val();
            $.ajax({
                url:"<?php echo site_url('sistem/kategori_galeri_delete/');?>",
                type:"POST",
                data:"id_kategori_galeri="+id_kategori_galeri,
                cache:false,
                success:function(html){
                    location.href="<?php echo site_url('sistem/kategori_galeri_delete/delete-success');?>";
                }
            });
        });
    });
</script>
