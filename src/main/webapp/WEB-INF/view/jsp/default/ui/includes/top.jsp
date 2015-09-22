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
<!DOCTYPE html>

<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en">
<head>
  <meta charset="UTF-8" />

  <title>PSD Login</title>
  
  <%--<spring:theme code="standard.custom.css.file" var="customCssFile" />--%>
  <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="css/bootstrap.min.css" >
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
   <!--[if IE 7]>
    <link rel="stylesheet" href="css/font-awesome-ie7.css"></link>
   <![endif]-->
	<link rel="stylesheet" type="text/css" href="css/desktop.css"></link>
  <!--[if lt IE 9]>
    <link rel="stylesheet" type="text/css" href="css/ieold.css"></link>
  <![endif]-->
  
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

  <link rel="icon" href="<c:url value="/favicon.ico" />" type="image/x-icon" />

  
  <!--[if lt IE 9]>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.1/html5shiv.js" type="text/javascript"></script>
  <![endif]-->
</head>
<body class="noselect">

<div class="row hidden-xs psd-animate psd-load-fade-1 top-row">
	<div class="col-md-12 psd-title">
		<span class="psd-title-text">
			<spring:message code="screen.welcome.instructions" />
		</span>
	</div> 
</div>
<div class="row psd-load-fade-2 psd-animate psd-logo-container">
	<div class="col-md-4 psd-logo-padding"></div>
	<div class="col-md-4 text-center">
    <!--[if gte IE 9]>
		  <a href="http://www.psd401.net/"><img src="/svg/PSD.svg" class="psd-logo"></img></a>
    <![endif]-->
    <!--[if lt IE 9]>
      <a href="http://www.psd401.net/"><img src="/svg/PSD.png" class="psd-logo"></img></a>
    <![endif]-->
    <![if !IE]>
      <a href="http://www.psd401.net/"><img src="/svg/PSD.svg" class="psd-logo"></img></a>
    <![endif]>
	</div>
	<div class="col-md-4 psd-logo-padding"></div>
</div>
  
  
<!--
<%--<nav class="navbar navbar-default" role="navigation">--%>

    <%--<p><a href="/logout" onclick="ga('send', 'event');">Logout</a></p>--%>


  <div class="container">
      <header>
        <%--<a id="logo" href="http://www.jasig.org" title="<spring:message code="logo.title" />">Jasig</a>--%>
        <%--<h1>Central Authentication Service (CAS)</h1>--%>
      </header>
      <div>
-->