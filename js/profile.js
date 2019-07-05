$('.item_tab_baigiang').click(function(){
    $('.item_tab_baigiang').removeClass('active');
    var id_tab=$(this).attr('href');
    $(this).addClass('active');
    $('.content_tab_baigiang').css({'display':'none'});
    $(id_tab).fadeIn();
    return false;
});