<?php

require_once('header.php');

$id = $_GET['id'];
$sorgu_makale = $db -> prepare('select *from yazilar where id=?');
$sorgu_makale -> execute(array($id));
$satir_makale = $sorgu_makale -> fetch();

?>

<!-- Bread Crumb Section Start -->

<section id="bread">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <a href="index.php">Ana Sayfa</a> / <a href="blog.php">Blog</a> / <?php echo $satir_makale['baslik']; ?>
            </div>
        </div>
    </div>
</section>

<!-- Bread Crumb Section End -->

<!-- İçerik Section Start -->

<section id="content" class="py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <img src="<?php echo substr($satir_makale['foto'], 3); ?>" alt="<?php echo $satir_makale['fotoalt']; ?>" class="w-100 mb-3">
                <h1><?php echo $satir_makale['baslik']; ?></h1>
                <small>Yayınlanma Tarihi: <?php echo $satir_makale['tarih']; ?> - Kategori: <a href=""><?php echo $satir_makale['kategori']; ?></a> </small> <br>

                <?php echo $satir_makale['icerik']; ?>

                <h5 class="mt-5">Yorum Yapın</h5>
                <form method="post" class="form-row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="adiniz" placeholder="Adınız" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="soyadiniz" placeholder="Soyadınız" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="email" name="email" placeholder="E-Posta Adresiniz" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <textarea name="yorum" placeholder="Yorumunuz" rows="5" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="submit" class="btn btn-mor w-25">Gönder</button>
                        </div>
                    </div>
                </form>
            </div>
            <?php require_once('sidebar.php'); ?>
        </div>
    </div>
</section>

<!-- İçerik Section End -->

<?php require_once('footer.php'); ?>