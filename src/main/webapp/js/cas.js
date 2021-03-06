var rootAPIURL = "https://api.psd401.net/v1";
var screwIE=Math.floor(Math.random()*100001);

$(document).ready(function(){
	//populateRSSFeeds.init();
    $('[data-toggle="tooltip"]').tooltip();
    
    setTimeout(function(){
        $('.psd-login-submit').tooltip('show');
        $('.psd-login-forgot').tooltip('show');
    }, 1200);
    
    setTimeout(function(){
        $('.psd-login-submit').tooltip('hide');
        $('.psd-login-forgot').tooltip('hide');
    }, 7000);
    
    $('.psd-login-submit').click(function(){
      stripEmail();
      $('form[name=login]').submit();
    });
    
    $(".psd-login-form-input").keypress(function(event){
        if(event.which == 13){
            $(".psd-login-form-input-password").focus();
        }
    });
    
    $(".psd-login-form-input-password").keypress(function(event) {
        if (event.which == 13) {
            event.preventDefault();
            stripEmail();
            $("form[name=login]").submit();
        }
    });
    
    if($(".logout-success").length > 0) {
        var timer = 10;
	var redirect = location.search.split('service=')[1] ? "/login?service=" + location.search.split('service=')[1] : '/login?service=http%3A%2F%2Fmy.psd401.net';
        console.log("Redirecting to " + redirect);
        $(".logout-success").attr("href", redirect);
        setInterval(function(){
            $(".logout-success").html("Login " + timer);
            if(timer == 0){
                window.location.href = redirect;
            }
            timer --;
        }, 1000);
    }
    
    if(capsLock){
        capsLock.observe(function (status) {
            if(status){
                $(".psd-login-form-input-password").tooltip("show");
            } else {
                $(".psd-login-form-input-password").tooltip("hide");
            }
        });
    }
});


function stripEmail(){
    var username = $('.psd-login-form-input').val();
    username = username.toLowerCase().replace(/ /g, '');
    if (username.indexOf("@") != -1) {
        username = username.substring(0, username.indexOf('@'));
    }
    $('.psd-login-form-input').val(username);
}
