<?php require_once('header.php'); 

$id = $_GET['id'];
$sorgu_mesajsil = $db -> prepare('delete from mesajlar where id=?');
$sorgu_mesajsil -> execute(array($id));

if($sorgu_mesajsil -> rowCount()){
    echo '<div class="alert alert-success">Mesajınız Silinmiştir</div>';
}

require_once('footer.php'); ?>