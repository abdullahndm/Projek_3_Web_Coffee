<section class="ftco-section ftco-services">
    <div class="container">
        <div class="row">
            <div class="col-md-4 ftco-animate">
                <div class="media d-block text-center block-6 services">
                    <div class="icon d-flex justify-content-center align-items-center mb-5">
                        <span class="flaticon-choices"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Mudah untuk Di Akses</h3>
                        <p>Website ini Dibuat Semudah Mungkin agar seluruh Masyarakat dapat Mengakses dengan Mudah</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 ftco-animate">
                <div class="media d-block text-center block-6 services">
                    <div class="icon d-flex justify-content-center align-items-center mb-5">
                        <span class="flaticon-coffee-bean"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Kopi yang Berkualitas</h3>
                        <p>Kami Tidak Menyediakan Kopi Sembarangan Karena Kami Bekerja dengan Ahli Perkopian</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 ftco-animate">
                <div class="media d-block text-center block-6 services">
                    <div class="icon d-flex justify-content-center align-items-center mb-5">
                        <span class="flaticon-delivery-truck"></span></div>
                    <div class="media-body">
                        <h3 class="heading">Pengiriman Cepat</h3>
                        <p>Dapatkan Diskon Apabila Pengiriman lebih dari Waktu yang Sudah Disepakati</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section ftco-animate text-center">
                <span class="subheading">Hanya untuk Anda</span><hr>
                <h2 class="mb-4">Kopi yang Paling Banyak Diminati</h2>
                <p>Jangan Sampai Kehabisan stok untuk Kopi yang Sedang ng-tren</p>
            </div>
        </div>

        <div class="row">
            <?php foreach ($bestseller as $bs) : ?>
                <div class="col-md-3">
                    <div class="menu-entry">

                        <a href="<?= base_url(); ?>home/detail/<?= $bs->id_produk ?>" class="img" style="background-image: url(<?= base_url() . 'uploads/produk/' . $bs->img ?>);"></a>
                        <div class="text text-center pt-4">
                            <h3><a href="#"><?= $bs->nama ?></a></h3>
                        </div>

                    </div>
                </div>
            <?php endforeach; ?>
        </div>

    </div>
</section>