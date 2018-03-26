
<%@page import="java.util.*" %>

  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head >
	<meta charset="utf-8">
	<title>Donation site</title>
	<meta name="description" content="">
		<meta name="author" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
		<!-- #CSS Links -->
		<!-- Basic Styles -->
		<link rel="stylesheet" type="text/css" media="screen" href="static/css/bootstrap.min.css">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 

		<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
		<link rel="stylesheet" type="text/css" media="screen" href="static/css/smartadmin-production-plugins.min.css ">
		<link rel="stylesheet" type="text/css" media="screen" href="static/css/smartadmin-production.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="static/css/smartadmin-skins.min.css ">
		<link rel="stylesheet" type="text/css" media="screen" href="static/css/animate.css ">

		<!-- SmartAdmin RTL Support -->
		<link rel="stylesheet" type="text/css" media="screen" href="static/css/smartadmin-rtl.min.css "> 		

		<!-- #FAVICONS -->
		<link rel="shortcut icon" href="static/img/icon.png" type="image/x-icon">
		<link rel="stylesheet" type="text/css" media="screen" href="static/css/style.css ">
		
                
                

                <script src="static/js/jquery-2.1.1.min.js"></script>
                <!-- BOOTSTRAP JS -->		
                <script src="static/js/popper.js "></script>
                <script src="static/js/bootstrap.min.js "></script>
                <!--<script src="static/js/jquery-3.1.1.min.js"></script>-->
                
                <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
                <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
                <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
</head>

 <body class="smarth-style-1">
    <header id="header" class="">	
    <div id="logo-group">
    <span id="logo"> <img src="static/img/logo.png" alt="logo"> </span>

    </div>
        <% HttpSession sesion = request.getSession(false);
            if(sesion.getAttribute("user_id")!=null){ %>
                
                
    <div class="project-context hidden-xs">

                <span class="label">Usuario:</span>
                <span class="project-selector dropdown-toggle" data-toggle="dropdown">					
                    randy	
                </span>



        </div>
            
    <% } %>
    
    <!-- pulled right: nav area -->
    <div class="pull-right">

        <!-- collapse menu button -->
        <div id="hide-menu" class="btn-header pull-right">
            <span> <a href="javascript:void(0);" data-action="toggleMenu" title="Collapse Menu"><i class="fa fa-reorder"></i></a> </span>
        </div>
        <!-- end collapse menu -->

        <!-- #MOBILE -->
        <!-- Top menu profile link : this shows only when top menu is active -->
        <ul id="mobile-profile-img" class="header-dropdown-list hidden-xs padding-5">
            <li class="">
                <a href="#" class="dropdown-toggle no-margin userdropdown" data-toggle="dropdown"> 
                    <img src="static/img/LOGIN.png" alt="" class="online" /> 
                </a>
                <ul class="dropdown-menu pull-right">
                    <li>
                        <a href="javascript:void(0);" class="padding-10 padding-top-0 padding-bottom-0">
                            <i class="fa fa-cog"></i> Setting
                        </a>
                    </li>
                    <li class="divider"></li>
                  
                    <li class="divider"></li>
                    <li>
                        <a href="javascript:void(0);" class="padding-10 padding-top-0 padding-bottom-0" data-action="toggleShortcut">
                            <i class="fa fa-arrow-down"></i> <u>S</u>hortcut</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="javascript:void(0);" class="padding-10 padding-top-0 padding-bottom-0" data-action="launchFullscreen">
                            <i class="fa fa-arrows-alt"></i> Full <u>S</u>creen</a>
                    </li>
                    <li class="divider"></li>
<!--                    <li>
                        <a href="login.html" class="padding-10 padding-top-5 padding-bottom-5" data-action="userLogout">
                            <i class="fa fa-sign-out fa-lg"></i> <strong>Cerrr Sesión</strong></a>
                    </li>-->
                </ul>
            </li>
        </ul>

        <!-- logout button -->
        <div id="logout" class="btn-header transparent pull-right">
            <% if(sesion.getAttribute("user_id")==null){ %>
                <span> <a href="/login" title="Iniciar Sesión" >
                        <i class="fa fa-sign-in"></i></a> </span>
                <% }else{ %>
                <span> <a href="Auth?action=bG9nb3V0" title="Cerrar Sesión" data-action="userLogout" data-logout-msg="¿Seguro deseas cerrar sesión?">
                        <i class="fa fa-sign-out"></i></a> </span>
                <% } %>
        </div>
        <!-- end logout button -->
</div>
                                
	</header>
        <aside id="left-panel">
            

            <% String rol="0";
                if(sesion.getAttribute("user_rol")!=null)
rol=sesion.getAttribute("user_rol").toString();  %>

<!-- NAVIGATION : This navigation is also responsive-->
<nav>
			
     <ul>
         <% if(sesion.getAttribute("user_id")!=null){ %>
            <li>

               <a href="Profile?action=c2hvdy1wcm9maWxl" title="Dashboard"><i class="fa fa-lg fa-fw fa-user-circle-o"></i> 
                   <span class="menu-item-parent"> Perfil</span></a>

             </li>
            
          <% } %>
          <li>
         
              <a href="#" title="Dashboard"><i class="fa fa-lg fa-fw fa-ticket"></i> 
                  <span class="menu-item-parent"> Ofertas</span></a>
            <ul>
              <li>
                 
                <a href="index.jsp" title="Ofertas"><span class="menu-item-parent">Listado</span></a>
              </li>
            </ul> 
          </li>

        </ul>

    </nav>

    <span class="minifyme" data-action="minifyMenu"> 
                    <i class="fa fa-arrow-circle-left hit"></i> 
    </span>


        </aside>

                                        
<div id="main" role="main">
    <div id="ribbon">
            <!-- breadcrumb -->
            <ol class="breadcrumb">
                    <li> <a href="index.jsp">Donation site</a> </li> 
            </ol>
         

    </div>

    <div id="content">

            <div class="row">

                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">	
                        
<div class="MessageBoxContainer animated fadeIn fast hide" id="Msg1">
    <div class="MessageBoxMiddle"><span class="MsgTitle">
            <i class="fa fa-sign-out txt-color-orangeDark"></i> Cerrar session <span class="txt-color-orangeDark"><strong>
						Randy Adonis
    </strong></span> ?</span><p class="pText">Estas seguro de querrer cerrar sesion</p>
    <div class="MessageBoxButtonSection"><button id="bot1-Msg1" class="btn btn-default btn-sm botTempo"> No</button>
        <button id="bot2-Msg1" class="btn btn-default btn-sm botTempo"> Si</button></div></div>
</div>