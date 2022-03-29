<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <form method="post" enctype="multipart/form-data">
        <input type="file" name="foto">
        <input type="text" name="baslik" placeholder="Fotoğraf İsmi">
        <button type="submit">Kaydet</button>
    </form>


    <?php

    echo '<br><br>';

    if ($_POST) {

        // Dosya İsmi Yakalama

        $foto = $_FILES['foto']['name'];
        echo $foto;
        echo '<br><br><br>';

        // Geçici Dosya  İsmi Yakalama

        $foto_tmp = $_FILES['foto']['tmp_name'];
        echo $foto_tmp;
        echo '<br><br><br>';

        // Dosya Boyutu Yakalama

        $foto_size = $_FILES['foto']['size'];
        echo $foto_size;
        echo '<br><br><br>';

        if (18650 <= $foto_size) {
            echo 'Uygun';
        } else {
            echo 'Uygun Değil';
        }
        echo '<br><br><br>';

        // Fotoğraf Türü Yakalama

        $foto_tur = $_FILES['foto']['type'];
        echo $foto_tur;

        // Dosyayı Kök Dizine Gönderme

        $dizin = "../img/";
        $yuklenecekdosya = $dizin . $_FILES['foto']['name'];


        if (move_uploaded_file($_FILES['foto']['tmp_name'], $yuklenecekfoto)) {
        echo '<img src="'.$yuklenecekfoto.'">';
        }else{
            echo 'Böyle Bir Fotoğraf Yok';
        }
    }

    ?>

</body>

</html>