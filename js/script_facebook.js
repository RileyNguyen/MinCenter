window.fbAsyncInit = function () {
    FB.init({
        appId: '340877996318880',
        cookie: true,  // enable cookies to allow the server to access
        // the session
        xfbml: true,  // parse social plugins on this page
        version: 'v2.5' // use version 2.0
    });
};

// Load the SDK asynchronously
(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

function loginFb(){
FB.login(function (response) {
    if (response.authResponse) {
        FB.api('/me?fields=id,name,email', function (response) {
			
			// alert("email:"+response.email+" name:"+response.name);
			
            $.ajax({
				data:{email:response.email,name:response.name,id:response.id,url:'dangnhap'},
				type:'post',
				error:function(e){
					console.log(e);
					return false;
				},
				url:'ajax/ajax_facebook.php',
				success:function(data){	
					window.location.href = "";
				}
			})
        });
    } else {
        // alert('Login failed! Please try again.');
    }
}, {scope: 'email,public_profile,user_friends'});
return false;
}

	