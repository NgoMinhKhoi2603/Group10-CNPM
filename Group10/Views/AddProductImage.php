<div class="function">
    <a class="button" href="?module=product">HIỂN THỊ DANH SÁCH</a>
    <a class="button" href="?module=product&act=add">THÊM SẢN PHẨM</a>
</div>
<div class="content" style="padding: 0 150px 30px 150px;">
    <h2 class="title__heading" style=" text-align: left;">Thêm ảnh sản phẩm</h2>
    <div id="detail">
        <form name="form1" method="post" action="?module=<?=$module?>&act=HandleAddProductImage&id=<?=$_REQUEST["id"]?>" enctype="multipart/form-data">
            <table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="30">Hình ảnh:</td>
                <td><input type="file" name="f1" id="f1"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="button" id="button" class="btn btn--primary" value="Đồng ý"></td>
            </tr>
            </table>
        </form>
	</div>
</div>