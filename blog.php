<?php

require_once('header.php');

$sorgu_banner = $db->prepare('select *from ayarlar order by id desc limit 1');
$sorgu_banner->execute();
$satir_banner = $sorgu_banner->fetch();

?>

<!-- Banner Section Start -->

<section id="blogBanner" class="py-15" style="background-image: url('<?php echo substr($satir_banner['blogbanner'], 3); ?>'); background-repeat:no-repeat; background-size:cover;">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center text-white">
                <small>
                    <a href="index.php">Ana Sayfa</a> / Blog
                </small>
                <h1 class="display-4">Blog</h1>
            </div>
        </div>
    </div>
</section>

<!-- Banner Section End-->

<!-- Search Section Start -->

<section id="search" class="pt-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <form action="" method="post" class="form-row">
                    <div class="col-10">
                        <div class="form-group">
                            <input type="search" name="arama" placeholder="Blog Yazısı Ara" class="form-control">
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="form-group">
                            <button type="submit" class="btn btn-mor form-control">Ara</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<!-- Search Section End -->

<!-- Blog List Section Start -->

<section id="blogList" class="py-5">
    <div class="container">
        <div class="row">
            <?php
            $sorgu_blogList = $db->prepare('select * from yazilar order by id desc');
            $sorgu_blogList->execute();

            if ($sorgu_blogList->rowCount()) {
                foreach ($sorgu_blogList as $satir_blogList) {
            ?>
                    <div class="col-md-4 mt-4">
                        <div class="card shadow">
                            <a href="sample.php?id=<?php echo $satir_blogList['id']; ?>" class="text-dark text-decoration-none">
                                <img src="<?php echo substr($satir_blogList['foto'],3); ?>" alt="<?php echo $satir_blogList['fotoalt']; ?>" class="card-img-top">
                            </a>

                            <div class="card-body">
                                <a href="sample.php?id=<?php echo $satir_blogList['id']; ?>" class="text-dark text-decoration-none">
                                    <h2 style="font-size:16px;"><?php echo $satir_blogList['baslik']; ?></h2>
                                </a>
                                <small>Yayınlanma Tarihi: <?php echo $satir_blogList['tarih']; ?></small>
                            </div>
                        </div>
                    </div>
            <?php
                }
            }
            ?>
        </div>
    </div>
</section>

<!-- Blog List Section End -->


<?php require_once('footer.php'); ?>