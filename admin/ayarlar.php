<?php require_once('header.php'); ?>

<!-- Ayarlar Section Start -->

<section id="ayarlar">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2>Site Ayarları</h2>
            </div>
        </div>
        <form method="post" class="form-row" enctype="multipart/form-data">
            <div class="col-md-4">
                <div class="form-group">
                    <label for="adres"><small>Adres</small></label>
                    <input type="text" name="adres" id="adres" class="form-control">
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for="telefon"><small>Telefon</small></label>
                    <input type="tel" name="telefon" id="telefon" class="form-control">
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                <label for="email"><small>E-Posta</small></label>
                <input type="email" name="email" id="email" class="form-control">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                <label for="harita"><small>Harita (Google Maps)</small></label>
                <textarea name="harita" id="harita" cols="30" rows="10" class="form-control"></textarea>
                </div>
            </div>
            <div class="col-md-6">
                <label for="yazı"><small>Kısa Tanıtım Yazısı</small></label>
                <textarea name="yazı" id="yazı" cols="30" rows="10"></textarea>
            </div>
        </form>
    </div>
</section>

<!-- Ayarlar Section End -->

<?php require_once('footer.php'); ?>