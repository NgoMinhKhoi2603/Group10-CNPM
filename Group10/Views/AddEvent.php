<div class="function">
    <a class="button" href="?module=event">HIỂN THỊ DANH SÁCH</a>
    <a class="button" href="?module=event&act=add">THÊM SỰ KIỆN</a>
</div>
<div class="content" style="padding: 0 150px 30px 150px;">
    <h2 class="title__heading" style=" text-align: left;">Thêm sự kiện</h2>
    <div id="detail">
        <form name="form1" method="post" action="?module=<?=$module?>&act=handleadd" enctype="multipart/form-data">
            <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td width="150" height="30">Tên sự kiện:</td>
                <td width="380"><input type="text" name="name" id="name" class="auth-form__input"></td>
            </tr>
            <tr>
                <td height="30">Ngày diễn ra:</td>
                <td width="380"><input type="date" name="date" id="date" class="auth-form__input"></td>
            </tr>
            <tr>
                <td height="50">Hình ảnh:</td>
                <td><input type="file" name="f1" id="f1"></td>
            </tr>
            <tr>
                <td  height="30">Mô tả:</td>
                <td><textarea name="description" id="description"></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="button" id="button" class="btn btn--primary" value="Đồng ý"></td>
            </tr>
            </table>
        </form>

        <script language="javascript">
            var ckTomtat = CKEDITOR.replace('description');
            ckTomtat.config.width = 600;
            CKFinder.setupCKEditor(ckTomtat, null, { type: 'Images' });
        </script>
	</div>
</div>