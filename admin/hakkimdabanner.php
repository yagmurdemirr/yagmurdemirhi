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
        <?php

        if ($_POST) {

            $dizin = "../img/";
            $yuklenecekfoto = $dizin . $_FILES['foto']['name'];

            if (move_uploaded_file($_FILES['foto']['tmp_name'], $yuklenecekfoto)) {
                $hakkimdaBanner = $db->prepare('insert into hakkimdabanner(foto,baslik,konum,tekrar,size) values(?,?,?,?,?)');
                $hakkimdaBanner->execute(array($yuklenecekfoto, $_POST['baslik'], $_POST['konum'], $_POST['tekrar'], $_POST['size']));

                if ($hakkimdaBanner->rowCount()) {
                    echo '<div class="alert alert-success">Kayıt Başarılı</div><meta http-equiv="refresh" content="1; url=hakkimdabanner.php">';
                } else {
                    echo '<div class="alert alert-danger">Hata Oluştu</div>';
                }
            }
        }

        ?>
    </div>
</section>

<!-- Hakkımda Bnaner Section End -->

<!-- Yayındaki Banner Section Start -->

<section id="yayindakiBanner">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>görsel</th>
                            <th>baslik</th>
                            <th>banner konum</th>
                            <th>banner tekrarı</th>
                            <th>banner ölçü</th>
                            <th>düzenle</th>
                            <th>sil</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php

                        $sorgu_hakkimdabanner = $db->prepare('select * from hakkimdabanner order by id desc limit 1');
                        $sorgu_hakkimdabanner->execute();

                        if ($sorgu_hakkimdabanner->rowCount()) {
                            foreach ($sorgu_hakkimdabanner as $satir_hakkimdabanner) {
                        ?>
                                <tr>
                                    <td><?php echo $satir_hakkimdabanner['id']; ?></td>
                                    <td><img src="<?php echo $satir_hakkimdabanner['foto']; ?>" class="w-75"></td>
                                    <td><?php echo $satir_hakkimdabanner['baslik']; ?></td>
                                    <td>

                                        <?php

                                        $konum = $satir_hakkimdabanner['konum'];

                                        switch ($konum) {
                                            case 'background-position:center center;':
                                                echo 'Merkez';
                                                break;
                                            case 'background-position:top center;':
                                                echo 'Merkez';
                                                break;
                                            case 'background-position:bottom center;':
                                                echo 'Merkez';
                                                break;
                                        }

                                        ?>



                                    </td>
                                    <td><?php echo $satir_hakkimdabanner['tekrar']; ?></td>
                                    <td><?php echo $satir_hakkimdabanner['size']; ?></td>
                                    <td>düzenle</td>
                                    <td>sil</td>
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

<!-- Yayındaki Banner Section End -->

<?php require_once('footer.php'); ?>