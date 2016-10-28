/*
 * Licensed to Jasig under one or more contributor license
 * agreements. See the NOTICE file distributed with this work
 * for additional information regarding copyright ownership.
 * Jasig licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file
 * except in compliance with the License.  You may obtain a
 * copy of the License at the following location:
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

$(document).ready(function(){
    //focus username field
    $("input:visible:enabled:first").focus();
    //flash error box
    
    if($('div[id*=".error"]').length > 0){
    
        $('div[id*=".error"]').animate({ backgroundColor: 'rgb(75, 162, 217)' }, 30).animate({ backgroundColor: 'rgb(217, 75, 75)' }, 500);
        $('.psd-login-title').css({ "border-bottom": '5px solid #d94b4b'});
        
        $(".psd-login-form").addClass("error");
        $(".psd-login").addClass("error");
    }
    
    //flash success box
    $('#msg.success').animate({ backgroundColor: '#4cd964' }, 30).animate({ backgroundColor: 'rgb(221,255,170)' }, 500);
    
    //flash confirm box
    $('#msg.question').animate({ backgroundColor: 'rgb(51,204,0)' }, 30).animate({ backgroundColor: 'rgb(221,255,170)' }, 500);
    
    /* 
     * Using the JavaScript Debug library, you may issue log messages such as: 
     * debug.log("Welcome to Central Authentication Service");
     */
});
