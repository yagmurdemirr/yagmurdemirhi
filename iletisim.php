<?php

require_once('header.php');

$sorgu_iletisim = $db->prepare('select *from ayarlar order by id desc limit 1');
$sorgu_iletisim->execute();
$satir_iletisim = $sorgu_iletisim->fetch();

?>

<!-- İletisim Banner Section Start -->

<section id="iletisimBanner" class="py-15" style="background-image:url('<?php echo substr($satir_iletisim['iletisimbanner'], 3); ?>') ; background-size:cover; background-repeat:no-repeat;">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h1 class="display-4">İletişim</h1>
                <small><a href="index.php">Ana Sayfa</a> / İletişim</small>
            </div>
        </div>
    </div>
</section>

<!-- İletisim Banner Section End -->

<!-- İnfo Section Start -->

<section id="info" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-4 text-center">
                <i class="bi bi-geo mor"></i> <br>
                <strong>Adres</strong> <br>
                <?php echo $satir_iletisim['adres']; ?>
            </div>
            <div class="col-md-4 text-center">
                <i class="bi bi-telephone mor"></i> <br>
                <strong>Telefon</strong> <br>
                <a class="text-decoration-none text-dark" href="tel:<?php echo $satir_iletisim['telefon']; ?>"><?php echo $satir_iletisim['telefon']; ?></a>
            </div>
            <div class="col-md-4 text-center">
                <i class="bi bi-envelope mor"></i> <br>
                <strong>E-Posta</strong> <br>
                <a class="text-decoration-none text-dark" href="mailto: <?php echo $satir_iletisim['email']; ?>"><?php echo $satir_iletisim['email']; ?></a>
            </div>
        </div>
    </div>
</section>

<!-- İnfo Section End -->

<!-- Form Section Start -->

<section id="iletisimForm" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2>Formu Doldurun</h2>
                <form method="post">
                    <div class="form-group">
                        <label><small>Adınız Soyadınız</small></label>
                        <input type="text" name="ad" class="form-control">
                    </div>
                    <div class="form-group">
                        <label><small>E-Posta Adresiniz</small></label>
                        <input type="email" name="email" class="form-control">
                    </div>
                    <div class="form-group">
                        <label><small>Konu</small></label>
                        <select name="konu" class="form-control">
                            <option value="">Seçiniz</option>
                            <option value="Şikayet">Şikayet</option>
                            <option value="Öneri">Öneri</option>
                            <option value="Bilgi Talebi">Bilgi Talebi</option>
                            <option value="Teknik Destek">Teknik Destek</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label><small>Mesajınız</small></label>
                        <textarea name="mesaj" rows="5" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-mor w-100">Gönder</button>
                    </div>
                </form>
                <?php

                if ($_POST) {

                    $ad = $_POST['ad'];
                    $email = $_POST['email'];
                    $konu = $_POST['konu'];
                    $mesaj = $_POST['mesaj'];
                    $durum = "Okunmadı";

                    $sorgu_mesajlar = $db->prepare('insert into mesajlar(ad,email,konu,mesaj,durum) values(?,?,?,?,?)');
                    $sorgu_mesajlar->execute(array($ad, $email, $konu, $mesaj, $durum));

                    if ($sorgu_mesajlar->rowCount()) {
                        echo '<meta http-equiv="refresh" content="2; url=tesekkurler.php">';
                    }else{
                        echo '<div class="alert alert-danger">Hata OLuştu, Lütfen Tekrar Deneyin.</div>';
                    }
                }

                ?>
            </div>
            <div class="col-md-6 text-center">
                <?php echo $satir_iletisim['harita']; ?>
            </div>
        </div>
    </div>
</section>

<!-- Form Section End -->





<?php require_once('footer.php'); ?>