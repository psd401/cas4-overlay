var rootAPIURL = "https://api.psd401.net/v1";
var screwIE=Math.floor(Math.random()*100001);

var populateRSSFeeds = {
    init: function() {
        populateRSSFeeds.loadWebsiteRSSData();
        populateRSSFeeds.loadTechblogRSSData();
        populateRSSFeeds.loadSupRSSData();
        console.log("Should be done loading RSS");
    },
    loadWebsiteRSSData: function() {
        //console.log($("#websiteRSS-container").rss("https://psd401.net/index.php?format=feed&amp;type=rss"));
        $("#websiteRSS-container").rss("https://psd401.net/index.php?format=feed&amp;type=rss",
            {
                limit: 2,
                layoutTemplate: "{entries}",
                entryTemplate: '<p><a href="{url}">{title}</a> {shortBody}</p><p class="sub">{date}</p>',
                effect: 'slideFastSynced',
                dateFormat: 'MMMM Do, YYYY',
                error: function(){
                    console.log("There was an error");
                },
            }
        );
    },
    
    loadTechblogRSSData: function() {
        //console.log($("#techblogRSS-container").rss("http://techblog.psd401.net/?feed=rss2"));
        $("#techblogRSS-container").rss("http://techblog.psd401.net/?feed=rss2",{
                limit: 2,
                layoutTemplate: "{entries}",
                entryTemplate: '<p><a href="{url}">{title}</a> {shortBody}</p><p class="sub">{date}</p>',
                effect: 'slideFastSynced',
                dateFormat: 'MMMM Do, YYYY',
                error: function(){
                    console.log("There was an error");
                }
            }
        );
    },
    
    loadSupRSSData: function() {
         //console.log($("#supRSS-container").rss("https://script.google.com/a/macros/krishagel.com/s/AKfycbxIvJLmswNQRctRQ3UrQqwad_1sOx_SIH5VrSugxXYU-ot2hsc/exec?action=timeline&q=psdsup"));
        $("#supRSS-container").rss("https://script.google.com/a/macros/krishagel.com/s/AKfycbxIvJLmswNQRctRQ3UrQqwad_1sOx_SIH5VrSugxXYU-ot2hsc/exec?action=timeline&q=psdsup",
            {
                limit: 2,
                layoutTemplate: "{entries}",
                entryTemplate: '<p><a href="{url}">{title}</a></p><p class="sub">{date}</p>',
                dateFormat: 'MMMM Do, YYYY',
                effect: 'slideFastSynced',
                error: function(){
                    console.log("There was an error");
                }
            }
        );
    }
}

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
	var redirect = location.search.split('url=')[1] ? location.search.split('url=')[1] : '/login?service=http%3A%2F%2Fmy.psd401.net';
        $(".logout-success").attr("href", decodeURIComponent(redirect));
        setInterval(function(){
            $(".logout-success").html("Login " + timer);
            if(timer == 0){
                window.location.href = redirect;
            }
            timer --;
        }, 1000);
    }
    
    capsLock.observe(function (status) {
        if(status){
            $(".psd-login-form-input-password").tooltip("show");
        } else {
            $(".psd-login-form-input-password").tooltip("hide");
        }
    });
});


function stripEmail(){
    var username = $('.psd-login-form-input').val();
    username = username.toLowerCase().replace(/ /g, '');
    if (username.indexOf("@") != -1) {
        username = username.substring(0, username.indexOf('@'));
    }
    $('.psd-login-form-input').val(username);
}
