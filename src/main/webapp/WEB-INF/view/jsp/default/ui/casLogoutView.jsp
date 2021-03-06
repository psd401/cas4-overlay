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
  
  
<div class="row psd-load-fade-3 psd-animate">
	<div class="col-md-4"></div>
  
	<div class="col-md-4">
		<div class="psd-login text-center">
			<div class="psd-login-title">
				<span class="psd-login-title-text">
					<spring:message code="screen.logout.header" />
				</span>
			</div>
      <div class="psd-login-form">
        <p class="text-center psd-font psd-info"><spring:message code="screen.logout.success" /></p>
        <p class="text-center">
          <a href="https://psd401.net" class="btn btn-lg btn-primary">PSD Home</a>
          <a href="/login?service=http%3A%2F%2Fmy.psd401.net" class="btn btn-lg btn-success logout-success">Login</a>
        </p>
      </div>
    </div>
  </div>
</div>

  
  
  
<jsp:directive.include file="includes/bottom.jsp" />