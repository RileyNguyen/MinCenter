<?php if(isset($_GET['id']) && isset($_GET['thaotac'])){
    if (!$conn) {
        die("Kết nối thất bại: " . mysqli_connect_error());
    }else{
        if($_GET['thaotac'] == 'xoa'){
            $id = $_GET['id'];
            $sql = "Update table_baigiang set trangthai = 0 where id = $id";
            if ($conn->query($sql) == TRUE) {?>
                <script>
                    alert("Xóa thành công...");
                </script>
                <?php 
            } else {
                ?>
                <script>
                    alert("Xóa thất bại...");
                </script>
                <?php 
            }
        }
    }

} ?>
<?php if(isset($_GET['id']) && isset($_GET['thaotac'])){
    if (!$conn) {
        die("Kết nối thất bại: " . mysqli_connect_error());
    }else{
        if($_GET['thaotac'] == 'xoa'){
            $id = $_GET['id'];
            $sql = "Update table_cauhoi set trangthai = 0 where id = $id";
            if ($conn->query($sql) == TRUE) {?>
                <script>
                    alert("Xóa thành công...");
                </script>
                <?php 
            } else {
                ?>
                <script>
                    alert("Xóa thất bại...");
                </script>
                <?php 
            }
        }
    }

} ?>