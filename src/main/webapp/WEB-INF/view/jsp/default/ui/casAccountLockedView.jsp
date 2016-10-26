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

<div class="row psd-load-fadeup-1 psd-animate">
    <div class="col-md-4"></div>

    <div class="col-md-4">
        <div class="psd-login text-center">
            <div class="psd-login-title">
                <span class="psd-login-title-text"><spring:message code="screen.accountlocked.heading" /></span>
            </div>
            
            
            <div class="psd-login-form">
      
                <div class="psd-login-form-inputs">
                    <p><spring:message code="screen.accountlocked.message" /></p>
                </div>
            </div>
        </div>
    </div>  
</div>

<jsp:directive.include file="includes/bottom.jsp" />
