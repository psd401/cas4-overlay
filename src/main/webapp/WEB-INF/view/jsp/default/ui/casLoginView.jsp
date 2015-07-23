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


<div class="row psd-load-fade-3 psd-animate">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<div class="psd-login text-center">
				<div class="psd-login-title">
					<span class="psd-login-title-text">
						<span class="hidden-xs">Sign in</span>
						<span class="visible-xs hidden-sm hidden-md"><spring:message code="logo.title" /></span>
					</span>
				</div>
				<div class="psd-login-form">
					<div class="psd-login-form-inputs">
            <form:input cssClass="required form-control psd-login-form-input input-lg" cssErrorClass="error" placeholder="Username" id="username" tabindex="1" accesskey="${userNameAccessKey}"  autocapitalize="off"
                autocorrect="off" path="username" autocomplete="off" htmlEscape="true" />

            <form:password cssClass="required form-control psd-login-form-input-password input-lg" cssErrorClass="error" placeholder="Password" id="password" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />
					  <a href="http://iforgot.psd401.net/"><i class="fa fa-question-circle psd-login-forgot psd-animate" data-placement="bottom" data-toggle="tooltip" title="Forgot your password?"></i></a>
            
					  <i class="fa fa-arrow-circle-right psd-login-submit psd-animate" data-placement="bottom" data-toggle="tooltip" title="Log in."></i>
            
            <input class="submit-button" name="submit" accesskey="l" data-placement="bottom" data-toggle="tooltip" />" tabindex="4" type="submit" />
						<!--<div class="psd-login-form-button">Login</div>-->
					</div>
				</div>
			</div>
		</div>	
		<div class="col-md-4"></div>
	</div>

</form:form>


<!--
<%--<div class="box" id="login">--%>
  <form:form class="form-signin" role="form" method="post" id="fm1" commandName="${commandName}" htmlEscape="true">

    <form:errors path="*" id="msg" cssClass="errors" element="div" htmlEscape="false" />
  
    <h2 class="form-signin-heading text-center"><spring:message code="screen.welcome.instructions" /></h2>


    <%--<section class="row">--%>
      <%--<label for="username"><spring:message code="screen.welcome.label.netid" /></label>--%>
      <%--<c:choose>--%>
        <%--<c:when test="${not empty sessionScope.openIdLocalId}">--%>
          <%--<strong>${sessionScope.openIdLocalId}</strong>--%>
          <%--<input class="form-control" type="hidden" id="username" name="username" value="${sessionScope.openIdLocalId}" />--%>
        <%--</c:when>--%>
        <%--<c:otherwise>--%>
          <spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
          <form:input cssClass="required form-control" cssErrorClass="error" placeholder="Username" id="username" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="off" htmlEscape="true" />
        <%--</c:otherwise>--%>
      <%--</c:choose>--%>
    <%--</section>--%>
    <%----%>
    <%--<section class="row">--%>
      <%--<label for="password"><spring:message code="screen.welcome.label.password" /></label>--%>
      <%--
      NOTE: Certain browsers will offer the option of caching passwords for a user.  There is a non-standard attribute,
      "autocomplete" that when set to "off" will tell certain browsers not to prompt to cache credentials.  For more
      information, see the following web page:
      http://www.technofundo.com/tech/web/ie_autocomplete.html
      --%>
      <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
      <form:password cssClass="required form-control" cssErrorClass="error" placeholder="Password" id="password" size="25" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />
    <%--</section>--%>
    
    <%--<section class="row check">--%>
      <%--<input id="warn" name="warn" value="true" tabindex="3" accesskey="<spring:message code="screen.welcome.label.warn.accesskey" />" type="checkbox" />--%>
      <%--<label for="warn"><spring:message code="screen.welcome.label.warn" /></label>--%>
    <%--</section>--%>
    
    <%--<section class="row btn-row">--%>
      <input type="hidden" name="lt" value="${loginTicket}" />
      <input type="hidden" name="execution" value="${flowExecutionKey}" />
      <input type="hidden" name="_eventId" value="submit" />
      <%--<p>--%>
      <input class="btn btn-sm btn-primary" class="form-control" name="submit" accesskey="l" value="<spring:message code="screen.welcome.button.login" />" tabindex="4" type="submit" />
      <input class="btn btn-sm btn-primary" class="form-control" name="reset" accesskey="c" value="<spring:message code="screen.welcome.button.clear" />" tabindex="5" type="reset" />
      <%--</p>--%>
    <%--</section>--%>
  </form:form>
<%--</div>--%>
-->  

<jsp:directive.include file="includes/bottom.jsp" />
