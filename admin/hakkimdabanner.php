<?php require_once('header.php'); ?>

<!-- Hakkımda Bnaner Section Start -->

<section id="hakkimdaBanner" class="py-5s">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="my-3">Hakkımda Banner Ayarları</h2>
            </div>
        </div>
        <form method="post" class="form-row" enctype="multipart/form-data">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="gorsel"><small>Banner Görsel Ekle</small></label> <br>
                    <input type="file" name="foto" id="gorsel">
                </div>
                <div class="form-group">
                    <label for="baslik"><small>Başlık Ekleyin</small></label>
                    <input type="text" name="baslik" id="baslik" class="form-control">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label><small>Background Konum</small></label>
                    <select name="konum" class="form-control">
                        <option value="">Seçiniz</option>
                        <option value="background-position:center center;">Merkez</option>
                        <option value="background-position:top center;">Üst</option>
                        <option value="backrgound-position:bottom center;">Alt</option>
                    </select>
                </div>
                <div class="form-group">
                    <label><small>Background Tekrar</small></label>
                    <select name="tekrar" class="form-control">
                        <option value="">Seçiniz</option>
                        <option value="background-repeat:no-repeat;">Tekrar Yapma</option>
                        <option value="background-repeat:repeat;">Tekrarla</option>
                    </select>
                </div>
                <div class="form-group">
                    <label><small>Background Görsel Ölçüsü</small></label>
                    <select name="size" class="form-control">
                        <option value="">Seçiniz</option>
                        <option value="bacground-size:cover;">Kapla</option>
                        <option value="background-size:containe;">Sıkıştır</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="Kaydet" class="btn btn-success w-100">
                </div>
            </div>
        </form>
    </div>
</section>

<!-- Hakkımda Bnaner Section End -->

<?php require_once('footer.php'); ?>