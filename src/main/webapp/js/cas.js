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
      var username = $('.psd-login-form-input').val();
      if (username.indexOf("@") != -1) {
            $('.psd-login-form-input').val(username.substring(0, username.indexOf('@')));
        }
      $('form[name=login]').submit();
    });
    
    $(".psd-login-form-input-password").keypress(function(event) {
        if (event.which == 13) {
            event.preventDefault();
            var username = $('.psd-login-form-input').val();
            if (username.indexOf("@") != -1) {
                $('.psd-login-form-input').val(username.substring(0, username.indexOf('@')));
            }
            $("form[name=login]").submit();
        }
    });
});