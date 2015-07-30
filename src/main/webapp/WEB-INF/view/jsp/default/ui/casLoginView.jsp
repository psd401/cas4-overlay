<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

--%>
<jsp:directive.include file="includes/top.jsp" />

<c:if test="${not pageContext.request.secure}">
  <div id="msg" class="errors">
    <h2>Non-secure Connection</h2>
    <p>You are currently accessing the logon server over a non-secure connection.  Single Sign On WILL NOT WORK.  In order to have single sign on work, you MUST log in over HTTPS.</p>
  </div>
</c:if>


<form:form class="form-signin" role="form" method="post" id="fm1" commandName="${commandName}" htmlEscape="true" name="login">
<spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
<spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />

<input type="hidden" name="lt" value="${loginTicket}" />
<input type="hidden" name="execution" value="${flowExecutionKey}" />
<input type="hidden" name="_eventId" value="submit" />


<div class="row psd-load-fadeup-1 psd-animate">
		<div class="col-md-4"></div>
    
		<div class="col-md-4">
			<div class="psd-login text-center">
				<div class="psd-login-title">
					<span class="hidden-xs psd-login-title-text">Sign in</span>
					<span class="visible-xs hidden-sm hidden-md psd-login-title-text"><spring:message code="screen.welcome.instructions" /></span>
				</div>
        		<form:errors path="*" id="msg" cssClass="errors form-invalid" element="div" htmlEscape="false" />
				<div class="psd-login-form">
          
					<div class="psd-login-form-inputs">
            <form:input cssClass="required form-control psd-login-form-input input-lg" cssErrorClass="error" placeholder="Username" id="username" tabindex="1" accesskey="${userNameAccessKey}"  autocapitalize="off"
                autocorrect="off" path="username" autocomplete="off" htmlEscape="true" />

            <form:password cssClass="required form-control psd-login-form-input-password input-lg" cssErrorClass="error" placeholder="Password" id="password" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" data-placement="right" data-trigger="manual" data-toggle="tooltip" title="Caps Lock!" />
					  <a href="http://iforgot.psd401.net/"><i class="fa fa-question-circle psd-login-forgot psd-animate" data-placement="bottom" data-toggle="tooltip" title="Forgot your password?"></i></a>
            
					  <i class="fa fa-arrow-circle-right psd-login-submit psd-animate" data-placement="bottom" data-toggle="tooltip" title="Log in."></i>
            
            
						<!--<div class="psd-login-form-button">Login</div>-->
					</div>
				</div>
			</div>
		</div>	
    
		<div class="col-md-4"></div>
	</div>
  
  <div class="row psd-info psd-load-fade-1 psd-animate">
		<div class="col-xs-4 psd-section-blog psd-load-fade-2">
			<a href="http://techblog.psd401.net/" target="_blank"><img src="./svg/Blog.svg" class="psd-link-logo psd-animate"></img></a>
			<span class="psd-section-desc">Visit the Tech Blog</span>
		</div>
		

		<div class="col-xs-4 psd-section-tweet psd-load-fade-2">
			<a href="https://twitter.com/psd401" target="_blank"><img src="./svg/Twitter.svg" class="psd-link-logo psd-animate"></img></a>
			<span class="psd-section-desc">Tweet Us @psd401</span>
		</div>
		
		<div class="col-xs-4 psd-section-ticket psd-load-fade-2">
			<a href="http://workorders.psd401.net/" target="_blank"><img src="./svg/Ticket.svg" class="psd-link-logo psd-animate"></img></a>
			<span class="psd-section-desc">Submit a Ticket</span>
		</div>
	</div>

</form:form>

<jsp:directive.include file="includes/bottom.jsp" />
