<div class="account-detail">
    <h2 style="text-align: left; padding-left: 150px;" class="title__heading">Sửa thông tin người dùng</h2>
    <?php
    $row = $account->data;
    ?>
    <div class="account-detail-content">
        <form name="form1" method="post" action="?module=<?=$module?>&act=handlefixuserinfo">
            <table width="400" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td width="250" height="60"><p>Họ: </p></td>
                <td width="380"><input type="text" name="firstname" id="firstname" class="auth-form__input" value="<?=$row["FirstName"]?>"></td>
            </tr>
            <tr>
                <td width="250" height="60"><p>Tên: </p></td>
                <td width="380"><input type="text" name="lastname" id="lastname" class="auth-form__input" value="<?=$row["LastName"]?>"></td>
            </tr>
            <tr>
                <td width="250" height="60"><p>Địa chỉ: </p></td>
                <td width="380"><input type="text" name="address" id="address" class="auth-form__input" value="<?=$row["Address"]?>"></td>
            </tr>
            <tr>
                <td width="250" height="60"><p>Số điện thoại: </p></td>
                <td width="380"><input type="text" name="phone" id="phone" class="auth-form__input" value="<?=$row["Phone"]?>"></td>
            </tr>
            <tr>
                <td></td>
                <td><input style="margin-top: 20px;" type="submit" name="button" id="button" class="btn btn--primary" value="Đồng ý"></td>
            </tr>
            </table>
        </form>
    </div>
    <?php
    ?>
</div>
