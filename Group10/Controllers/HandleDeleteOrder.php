<?php
$id = $_REQUEST["id"];

$ketqua = $hoadon->GetOrder($id);
$rowS = $hoadon->data;
 
if($rowS["Status"] === "Chưa xác nhận")
{
	$ketqua = $hoadon->DeleteProductOrder($id);
	$ketqua = $hoadon->DeleteOrder($id);
	if($ketqua==FALSE)
		$thongbao="Lỗi xóa dữ liệu";
	else
		$thongbao ="Xóa dữ liệu thành công";

	require("ViewsHome/vKetqua.php");
}
else
{
	$thongbao ="Hóa đơn đã xác nhận không thể xóa";
	require("ViewsHome/vKetqua.php");
}
?>