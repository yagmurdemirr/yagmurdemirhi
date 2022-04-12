<?php 

require_once('header.php'); 

$sorgu_banner = $db -> prepare('select *from ayarlar order by id desc limit 1');
$sorgu_banner -> execute();
$satir_banner = $sorgu_banner -> fetch();

?>

<!-- Banner Section Start -->

<section id="blogBanner" class="py-15">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center" style="background-image: url('<?php echo substr( $satir_banner['blogbanner'],3); ?>')">
                <small>
                    <a href="index.php">Ana Sayfa</a> / Blog
                </small>
                <h1 class="display-4">Blog</h1>
            </div>
        </div>
    </div>
</section>

<!-- Banner Section End-->


<?php require_once('footer.php'); ?>