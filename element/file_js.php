<script type="text/javascript">
  var owl_cats = $('.owl_cats');
  owl_cats.owlCarousel({
    loop:false,
    margin:15,
    nav:false,
    dots:false,
    items:6,
    rewind:true,
    autoplay:true,
    smartSpeed:1000,
    responsive:{
      0:{ items:2 },
      600:{ items:3 },
      900:{ items:6 }
    }     
  });
</script>
<script type="text/javascript">
  var owl_tieuchi = $('.owl_tieuchi');
  owl_tieuchi.owlCarousel({
    loop:false,
    margin:40,
    nav:false,
    dots:false,
    items:4,
    rewind:true,
    autoplay:true,
    smartSpeed:1000,
    responsive:{
      0:{ items:1 },
      600:{ items:2 },
      900:{ items:4 }
    }     
  });
</script>
<script type="text/javascript" src="js/slick.js"></script>
<script type="text/javascript" src="js/slick.min.js"></script>
<script>
  $('.slick_motateacher').slick({
   slidesToShow: 1,
   slidesToScroll: 1,
   arrows: false,
   autoplay:true,
   fade: true,
   asNavFor: '.slick_imgteacher'
 });
  $('.slick_imgteacher').slick({
   infinite: true,
   slidesToShow: 3,
   slidesToScroll: 1,
   asNavFor: '.slick_motateacher',
   dots: false,
   centerMode: true,
   autoplay:true,
   focusOnSelect: true,
   centerPadding:0,
   arrows: false
 });
</script>

