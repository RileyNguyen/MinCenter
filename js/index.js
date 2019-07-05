function login() {
    document.getElementById('login').style.display = 'block';
}
function close_modal() {
    document.getElementById('login').style.display = 'none';
}
function ValidateEmail(email) {
    var dem = 0;
    email = document.getElementById('email').value;
    for (var i = 0; i < email.length; i++) {
        if (email[i] == "@")
            dem++;
    }
    if (dem == 1) {
        return true;
    }
    else {
        return false;
    }
}
function ValidatePassword(pwd) {
    pwd = document.getElementById('password').value;
    if (pwd == '')
        return false;
    else
        return true;
}
function check_login() {
    var flag1 = false;
    pwd = document.getElementById('password').value;
    if (ValidateEmail(email) == true) {
        // flag1 = true;
        if (ValidatePassword(pwd) == true) {
            window.location.reload('../index.html');
        }
        else {
            alert('Mật khẩu không hợp lệ !');
        }
    }
    else {
        document.getElementById('check-email').innerHTML = 'Email không hợp lệ';
        document.getElementById('check-email').style.color = 'red';
    }
}
function register() {
    document.getElementById('register').style.display = 'block';
}

function close_register() {
    document.getElementById('register').style.display = 'none';
}
function validate_re_pwd(pwd, repwd) {
    pwd = document.getElementById('password-register').value;
    repwd = document.getElementById('re-password').value;
    if (pwd == repwd)
        return true;
    else
        return false;
}
function Validate_ho_ten(ho, ten) {
    ho = document.getElementById('ho').value;
    ten = document.getElementById('ten').value;
    if (ho != '' && ten != '')
        return true;
    else
        return false;
}
function ValidateEmail_register(email) {
    var dem = 0;
    email = document.getElementById('email-register').value;
    for (var i = 0; i < email.length; i++) {
        if (email[i] == "@")
            dem++;
    }
    if (dem == 1) {
        return true;
    }
    else {
        return false;
    }
}
function ValidatePassword_register(pwd) {
    pwd = document.getElementById('password').value;
    if (pwd == '')
        return false;
    else
        return true;
}
function check_register() {
    ho = document.getElementById('ho').value;
    ten = document.getElementById('ten').value;
    email = document.getElementById('email-register').value;
    pwd = document.getElementById('password-register').value;
    repwd = document.getElementById('re-password').value;
    // if (document.getElementById('dieukhoan').checked) {
        if (Validate_ho_ten(ho, ten) == true && ValidateEmail_register(email) == true && ValidatePassword_register(pwd) == true)
            if (validate_re_pwd(pwd, repwd) == true){
                window.location.reload('../index.html');
                document.getElementById('sign-in').style.display = 'none';
                document.getElementById('sign-up').style.display = 'none';
            }
            else
                alert('Mật khẩu không trùng khớp');
        else
            alert('Vui lòng điền đầy đủ thông tin và kiểm tra định dạng email');
    //}

}

function myFunction() {
  var x = document.getElementById("menu");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
function change(){
    document.getElementById('register').style.display = 'block';
    document.getElementById('login').style.display = 'none';
}