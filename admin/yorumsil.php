<?php 
require_once('header.php');

$id = $_GET['id'];
$sorgu_yorumsil = $db -> prepare('delete from yorumlar where id=?');
$sorgu_yorumsil -> execute(array($id));

if($sorgu_yorumsil->rowCount()){
    echo '<div class="alert alert-success">Yorum Silindi</div><meta http-equiv="refresh" content="2; url=yorumlar.php">';
}else{
    echo '<div class="alert alert-danger">Hata Oluştu</div><meta http-equiv="refresh" content="2; url=yorumlar.php">';
}

require_once('footer.php'); 
?>
