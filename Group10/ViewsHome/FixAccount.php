<div class="account-detail">
    <h2 style="text-align: left; padding-left: 150px;" class="title__heading">Chi tiết tài khoản</h2>
    <?php
    $row = $account->data;
    ?>
    <div class="account-detail-content">
        <form name="form1" method="post" action="?module=<?=$module?>&act=handlefixaccount">
            <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td width="250" height="60"><p>Tên tài khoản: </p></td>
                <td width="380"><p><?=$row["Username"]?></p></td>
            </tr>
            <tr>
                <td width="250" height="60"><p>Mã tài khoản: </p></td>
                <td width="380"><?=$row["Id"]?></p></td>
            </tr>
            <tr>
                <td width="250" height="60"><p>Sửa email: </p></td>
                <td width="380"><input type="email" name="email_fix" id="email_fix" class="auth-form__input"></td>
            </tr>
            <tr>
                <td width="250" height="60"><p>Sửa mật khẩu: </p></td>
                <td width="380"><input type="password" name="pass_fix" id="pass_fix" class="auth-form__input"></td>
            </tr>
            <tr>
                <td width="250" height="60"><p>Mật khẩu hiện tại: </p></td>
                <td width="380"><input type="password" name="password" id="password" class="auth-form__input" required></td>
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
