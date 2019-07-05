<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Min Lessons - Tạo Bài Viết</title>
    <!-- CSS -->
    <link rel='stylesheet' href='scss/write.css'>
    <!-- Javascript -->
    <script src="js/write.js"></script>
</head>

<body>
    <header class="header">
        <div class="left">
            <a href="index.php"><img src="image/logo/logo_MIN_Lessons.png" width="150px"></a>
        </div>
        <div class="right">
            <a href="post.php"><button type="submit">Công khai</button></a>
            <a href="#" id='avatar' onclick="avatar()"><img src="image/home/avatar.png" width="50px">
                <ul id="menu">
                    <li><a>Viết bài</a></li>
                    <li><a>Đăng xuất</a></li>
                </ul>
            </a>
        </div>
    </header>
    <main class="main">
        <form>
            <input id="tieu-de" type="text" placeholder="Tiêu đề">
            <input type="text" placeholder="Nội dung">
        </form>
    </main>
</body>

</html>