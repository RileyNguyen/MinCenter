$(document).ready(function(){
	$(".load_danhmuc_lv1").change(function(){
		var id = $(".load_danhmuc_lv1").val();
		$.post("data.php", {id: id}, function(data){
			$(".load_danhmuc_lv2").html(data);
		})
	})
})
$(document).ready(function(){
	$(".load_danhmuc_lv11").change(function(){
		var id = $(".load_danhmuc_lv11").val();
		$.post("data.php", {id: id}, function(data){
			$(".load_danhmuc_lv22").html(data);
		})
	})
})