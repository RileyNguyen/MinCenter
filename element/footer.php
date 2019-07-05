<footer class="footer">
    <section class="contact">
        <a href="#">Lên Đầu Trang</a>
        <form>
            <input type="text" placeholder="Nhập địa chỉ email">
            <input type="submit" value="Gửi">
        </form>
    </section>
    <div class="wrapper">
        <div id="footer_logo" class="part"><a href="index.html"><img src="image/logo/logo_MIN_Lessons.png" width="90%"></a></div>
        <div class="part">
            <span>Liên hệ chúng tôi :</span>
            <ul>
                <li>- Điện thoại: <?=$row_setting['dienthoai']?></a></li>
                <li>- Email: <?=$row_setting['email']?></a></li>
            </ul>
        </div>
        <div class="part">
            <span>Chuyên ngành IT:</span>
            <ul>
                <?php foreach ($tieuchi as $key => $value) { ?>
                    <li><a href="tieuchi_details.php?tieuchi_details=<?=$value['id']?>">+ <?=$value['ten']?></a></li>
                <?php } ?>
            </ul>
        </div>
        <div class="part">
            <span>Theo dõi chúng tôi :</span>
            <ul>
                <li><a href="<?=$row_setting['facebook']?>"><i class="fab fa-facebook-square"></i> Facebook</a></li>
                <li><a href="<?=$row_setting['instagram']?>"><i class="fab fa-instagram"></i> Instagram</a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
    <hr>
    <div class="infomation">
        <table>
            <tr>
                <td id="r1">Chịu trách nhiệm nội dung :<br> Nguyễn Trọng Vượng - Nguyễn Văn Tân</td>
                <td id="r2">&copy;2019 Cao Đẳng Kỹ Thuật Cao Thắng</td>
                <td id="r1">Địa chỉ : <?=$row_setting['diachi']?></td>
                <td id="r1">Số điện thoại : <?=$row_setting['dienthoai2']?></td>
            </tr>
        </table>
    </div>
</footer>