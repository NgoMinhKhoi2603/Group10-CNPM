
<div class="content">
    <h2 class="title__heading">Danh sách Email đăng ký nhận thông tin</h2>
    <div class="grid">
        <div class="container">
            <?php
            $rows = $Email->data;
            foreach($rows as $row){
                ?>
                   <?=$row["Email"]?>
                <?php
            }
            ?>
        </div>
    </div>
</div>