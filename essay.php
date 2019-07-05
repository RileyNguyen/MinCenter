<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Min Lessons - Bài Giảng</title>
    <!-- CSS -->
    <link rel='stylesheet' href='scss/essay.css'>
    <link rel="icon" href="image/logo/logo_MIN_Lessons.png">
    <script language="javascript" type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <script src="https://kit.fontawesome.com/b373449ad1.js"></script>
</head>
<body>
    <header class="header">
        <div class="back">
            <a href="index.php"><img src="image/test/back.png" width="50px">
                <p>Về Trang chủ</p>
            </a>
        </div>
    </header>
    <main class="main">
        <div class="right">
            <div class="code">
                <div class="code-bar">
                    <button type="submit" id="run_button">Chạy code</button>
                    <button type="submit" id="reset_button">Reset</button>
                    <select id="select" class="select" onchange="backgr()">
                        <option value="white">Nền sáng</option>
                        <option value="#262626">Nền tối</option>
                    </select>
                    <div class="tabs">
                        <a id="html_mo" class="active" onclick="html_modal()">HTML</a>
                        <a id="css_mo" onclick="css_modal()">CSS</a>
                        <a id="js_mo" onclick="js_modal()">JS</a>
                    </div>
                </div>
                <div class="code-content">
                    <div id="html" class="language">
                        <textarea id="html_input"></textarea>
                    </div>
                    <div id="css" class="language">
                        <textarea id="css_input"></textarea>
                    </div>
                    <div id="js" class="language">
                        <textarea id="js_input"></textarea>
                    </div>
                </div>
            </div>
            <div class="result" >
                <div class="result-bar">
                    <marquee diretction = "right" width="30%" hspace="10%">Kết quả</marquee>
                </div>
                <div id="result">
                </div>
            </div>
        </div>
    </main>
    <script src="js/essay.js"></script>
</body>

</html>