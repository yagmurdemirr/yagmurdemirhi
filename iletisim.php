<?php 

require_once('header.php'); 

$sorgu_iletisim = $db -> prepare('select *form ayarlar order by id desc limit 1');
$sorgu_iletisim -> execute();
$satir_iletisim = $sorgu_iletisim -> fetch();

?>

<!-- İletisim Banner Section Start -->

<section id="iletisimBanner" class="py-5" style="background-image: <?php echo $satir_iletisim['iletisimbanner']; ?> ;">
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



<?php require_once('footer.php'); ?>