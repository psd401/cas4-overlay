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

<i class="fa fa-info-circle psd-animate pull-right psd-version hidden-xs" data-placement="top" data-toggle="tooltip" title="Central Authentication System (CAS) v4.2.6"></i>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

      <%--</div> <!-- END #content -->--%>
      <%----%>
      <%--<footer>--%>
        <%--<div id="copyright">--%>
          <%--<p><spring:message code="copyright" /></p>--%>
          <%--<p>Powered by <a href="http://www.jasig.org/cas">Jasig Central Authentication Service <%=org.jasig.cas.CasVersion.getVersion()%></a></p>--%>
        <%--</div>--%>
      <%--</footer>--%>

    </div> <!-- END #container -->
<%--</nav>--%>
    
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/capsLock.js"></script>
	  <script src="js/cas.js" defer="defer"></script>
    
    <%-- 
        JavaScript Debug: A simple wrapper for console.log 
        See this link for more info: http://benalman.com/projects/javascript-debug-console-log/
    --%>
    
    <spring:theme code="cas.javascript.file" var="casJavascriptFile" text="" />
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-22204924-45', 'auto');
      ga('send', 'pageview');

    </script>
  </body>
</html>

