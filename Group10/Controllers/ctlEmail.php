<?php
require_once("Models/clsEmailsub.php");

//biến $link_tieptuc và $thongbao dùng cho Views/vKetqua.php
$link_tieptuc ="?module=" . $module;
$thongbao ="";

//tạo đối tượng clsCategory
$Email = new clsEmailsub();

$ketqua = $Email->GetEmailsubList(1);
require("Views/email.php");

?>