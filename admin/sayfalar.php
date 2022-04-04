<?php require_once('header.php'); ?>

<section id="sayfalarList">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <span style="font-size:32px; font-weight:500;">Sayfalar</span>
                <a href="sayfaekle.php"><button class="btn btn-info">Sayfa Ekle</button></a>
            </div>
            <div class="col-md-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Görsel</th>
                            <th>Başlık</th>
                            <th>Sayfa Başlığı</th>
                            <th>Durum</th>
                            <th>Sayfa Türü</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php

                        $sorgu_sayfalar = $db->prepare('select * from sayfalar order by id desc');
                        $sorgu_sayfalar->execute();

                        if ($sorgu_sayfalar->rowCount()) {
                            foreach ($sorgu_sayfalar as $satir_sayfalar) {
                        ?>

                                <tr>
                                    <td><img src="<?php echo $satir_sayfalar['foto']; ?>"></td>
                                    <td><?php echo $satir_sayfalar['baslik']; ?></td>
                                    <td><?php echo $satir_sayfalar['seotitle']; ?></td>
                                    <td><?php echo $satir_sayfalar['durum']; ?></td>
                                    <td><?php echo $satir_sayfalar['sayfaturu']; ?></td>
                                    <td></td>
                                    <td></td>
                                </tr>

                        <?php
                            }
                        }


                        ?>


                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

<?php require_once('footer.php'); ?>