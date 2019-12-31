<div class="">

	<div id="slider" class="sl-slider-wrapper">
		<div class="sl-slider">

	<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
		<div class="sl-slide-inner">
			<div class="bg-img bg-img-1"></div>
			<h2><a href="#">Hotel Elegan Nuansa Modern</a></h2>
			<blockquote>
				<p>Hotel elegan yang selalu memberikan pelayanan terbaik kepada Anda agar dapat menikmati waktu liburan menyenangkan serta membuat Anda beristirahat dengan nyaman.</p>
			</blockquote>
		</div>
	</div>

	 <div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
	 	<div class="sl-slide-inner">
	 		<div class="bg-img bg-img-2"></div>
	 		<h2><a href="#">Ruang Meeting</a></h2>
	 		<blockquote>
	 			<p>Hotel yang memiliki Ruang Meeting yang dapat Anda pergunakan untuk pertemuan atau pembahasan bisnis Anda.</p>
	 		</blockquote>
	 	</div>
	 </div>

	 <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
	 	<div class="sl-slide-inner">
	 		<div class="bg-img bg-img-3"></div>
	 		<h2><a href="#">Ruang Meeting Santai</a></h2>
	 		<blockquote>
	 			<p>Hotel ini juga memiliki Ruang Meeting santai dengan nuansa mewah dan elegan untuk pertemuan-pertemuan penting Anda.</p>
	 		</blockquote>
	 	</div>
	 </div>

	 <div class="sl-slide" data-orientation="vertical" data-slice1-rotation="-5" data-slice2-rotation="25" data-slice1-scale="2" data-slice2-scale="1">
	 	<div class="sl-slide-inner">
	 		<div class="bg-img bg-img-4"></div>
	 			<h2><a href="#">Kamar Tidur</a></h2>
	 			<blockquote>
	 				<p>Memiliki fasilitas kamar eksklusif yang dapat membuat Anda menikmati waktu tidur dengan nyaman.</p>
	 			</blockquote>

	 		</div>
	 	</div>

	 <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1">
	 	<div class="sl-slide-inner">
	 		<div class="bg-img bg-img-5"></div>
	 		<h2><a href="#">Kamar Mandi</a></h2>
	 		<blockquote>
	 			<p>Dilengkapi dengan kamar mandi yang sangat nyaman dan menyegarkan.</p>
	 		</blockquote>
	 	</div>
	 </div>
	</div>

	 <!-- sl-slider -->


	 <nav id="nav-dots" class="nav-dots">
	 	<span class="nav-dot-current"></span>
	 	<span></span>
	 	<span></span>
	 	<span></span>
	 	<span></span>
	 </nav>
	</div>
</div>

<!-- banner -->
<div class="container">
	<div class="properties-listing spacer"> <a href="<?php echo base_url();?>home/kamar" class="pull-right viewall">Lihat Semua Kamar</a>
		<h2>Daftar Kamar</h2>
		<div id="owl-example" class="owl-carousel"> 

			<?php 
			foreach($kamar->result_array() as $value){ ?>

				<div class="properties">
					<div class="image-holder"><img src="<?php echo base_url();?>images/kamar_gambar/<?php echo $value['nama_kamar_gambar'];?>" class="img-responsive" alt="properties"/>
						<?php 
						if($value['status_kamar']=="0") { ?>
							<div class="status sold">Available</div>
							<?php  
					}
					else { ?>

					<div class="status new">No Available</div>
					<?php 
				}
				?>
			</div>
			<h4><a href="<?php echo base_url();?>home/kamar_detail/<?php echo $value['id_kamar'];?>"><?php echo $value['nomer_kamar'];?></a></h4>
			<p class="price">Harga: <?php echo rupiah($value['harga_kamar']);?></p>
			<div class="listing-detail"><?php echo $value['nama_kelas_kamar'];?></div>
			<a class="btn btn-primary" href="<?php echo base_url();?>home/kamar_detail/<?php echo $value['id_kamar'];?>">selengkapnya</a>
		</div>
		<?php
	}
	?>
</div>
</div>
</div>

