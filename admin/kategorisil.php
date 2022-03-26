<?php 

require_once('baglan.php');
session_start();

$id = $_GET['id'];

$sorgu_katlist = $db -> prepare('delete from kategoriler where id=?');
$sorgu_katlist -> execute(array($id));

if($sorgu_katlist->rowCount()){
    echo'Kategori Silindi <meta http-equiv="refresh" content="2; url=kategoriler.php">';
}else{
    echo'Hata Oluştu';
}



?>

