<?php
require_once("Models/clsProduct.php");
$act = "";
$masp = "";
$quantity = "";
$btn = "";
if(isset($_REQUEST["act"]))
	$act = $_REQUEST["act"];
if(isset($_REQUEST["id"]))
	$masp = $_REQUEST["id"];
if(isset($_REQUEST["quantity"]))
	$quantity = $_REQUEST["quantity"];
if(isset($_REQUEST["button"]))
	$btn = $_REQUEST["button"];
$link_tieptuc ="?module=" . $module;
$thongbao ="";

if($act == "add"){

	if($masp=="" || is_numeric($masp)==false)
		$thongbao = "id sản phẩm không hợp lệ";
	else
	{
		$checkQty = new clsProduct();
		$ck = 0;
		$ketqua = $checkQty->GetProductById($masp);
		$rowQty = $checkQty->data;



		if(isset($_SESSION["cart"][$masp])==true)//nếu sản phẩm có trong giỏ hàng
		{
			$soluong = $_SESSION["cart"][$masp];
			if($soluong+$quantity>$rowQty["Quantity"])
			{
				$ck = 1;
				$thongbao ="Số lượng sản phẩm vượt quá số lượng hiện có";
				require("ViewsHome/vKetqua.php");
			}
			if($ck == 0)
				$_SESSION["cart"][$masp] = $soluong + $quantity; 
		}
		else
		{
			if($quantity>$rowQty["Quantity"])
			{
				$ck = 1;
				$thongbao ="Số lượng sản phẩm vượt quá số lượng hiện có";
				require("ViewsHome/vKetqua.php");
			}
			if($ck == 0)
				$_SESSION["cart"][$masp] = $quantity;
		}
		if($ck == 0)
		$thongbao ="Đã thêm sản phẩm vào giỏ hàng";
		if($btn=="Mua ngay"){
			$thongbao ="Đến trang thanh toán";
			$link_tieptuc = "?module=checkout";
		}
	}
	require_once("ViewsHome/cart.php");
	require("ViewsHome/vKetqua.php");
}
else if($act == "del"){
	if($masp=="" || is_numeric($masp)==false)
		$thongbao = "id sản phẩm không hợp lệ";
	else
	{
		if($masp==0)//xóa toàn bộ giỏ hàng
		{
			unset($_SESSION["cart"]);
		}
		else//xóa sản phẩm có masp chọn
		{
			unset($_SESSION["cart"][$masp]);
		}
		$thongbao ="Đã xóa sản phẩm khỏi giỏ hàng";
	}
	require_once("ViewsHome/cart.php");
	require("ViewsHome/vKetqua.php");
}
else if($act == "update"){
	if(isset($_REQUEST["btnupdate"])==false)
		$thongbao = "LỖI FORM UPDATE CART";
	else
	{
		$qty = $_REQUEST["qty"];//lấy mảng các input có name="qty[x]"
		$checkQty = new clsProduct();

		$ck = 0;

		foreach($qty as $masp=>$soluong)
		{	
			$ketqua = $checkQty->GetProductById($masp);
			$rowQty = $checkQty->data;

			if($soluong>$rowQty["Quantity"])
			{
				$ck = 1;
				$thongbao ="Số lượng sản phẩm vượt quá số lượng hiện có";
				require("ViewsHome/vKetqua.php");
			}

		}

		if($ck == 0)
		{
			foreach($qty as $masp=>$soluong)
			{	
				if($soluong==0 || is_numeric($soluong)==false)
					unset($_SESSION["cart"][$masp]);
				else	
					$_SESSION["cart"][$masp] = $soluong;
			}
			$thongbao ="Đã cập nhật số lượng sản phẩm trong giỏ hàng";
		}
	}
	require_once("ViewsHome/cart.php");
	require("ViewsHome/vKetqua.php");
}
else
{
	require_once("ViewsHome/cart.php");
}

?>