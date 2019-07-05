var m = localStorage.getItem("mins") - 1 ;
var s = 59;

var timeout = null;

function start() {
    if (s === -1) {
        m -= 1;
        s = 59;
    }
    if (m == -1) {
        clearTimeout(timeout);
        alert('Hết giờ');
        $('.frm-result').submit();
        return false;
    }
    document.getElementById('m').value = m.toString();
    if(m<1){
        document.getElementById('m').style.color = "red";
        document.getElementById('s').style.color = "red";
    }
    if(s<10)
        document.getElementById('s').value = '0'+s.toString();
    else 
        document.getElementById('s').value = s.toString();

    timeout = setTimeout(function () {
        s--;
        start();
    }, 1000);
}
start();
$(document).ready(function(){
    $('.item-cauhoi').click(function(){
        $('.item-cauhoi').removeClass('active');
        var id_tab=$(this).attr('data-tab');
        $(this).addClass('active');
        $('.content-requestion').css({'display':'none'});
        $(id_tab).fadeIn();
        return false;
    });
    $('.item-answers').click(function(){
        $(this).parents('.answers').find('.item-answers').removeClass('active-answers');
        $(this).addClass('active-answers');
    })
    $('.frm-result').submit(function(){
        if (confirm('Bạn có chắc hoàn thành bài làm khi chưa hết giờ?')) {
            return true;
        } else {
            return false;
        }
    })
})
