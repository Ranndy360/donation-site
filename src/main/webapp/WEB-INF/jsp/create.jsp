



<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% HttpSession sesion=request.getSession(false);
    if(sesion.getAttribute("user_id")!=null)
     response.sendRedirect("/");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

        <title>Donation site</title>

    <script src="static/js/jquery-3.1.1.min.js"></script>
      <!-- Basic Styles -->
    <link rel="stylesheet" type="text/css" media="screen" href="static/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"> 

    <!-- SmartAdmin Styles : Caution! DO NOT change the order -->
    <link rel="stylesheet" type="text/css" media="screen" href="static/css/smartadmin-production-plugins.min.css ">
    <link rel="stylesheet" type="text/css" media="screen" href="static/css/smartadmin-production.min.css">
    <link rel="stylesheet" type="text/css" media="screen" href="static/css/smartadmin-skins.min.css ">
    <link rel="stylesheet" type="text/css" media="screen" href="static/css/login.css ">

    <!-- SmartAdmin RTL Support -->
    <link rel="stylesheet" type="text/css" media="screen" href="static/css/smartadmin-rtl.min.css "> 		

    <link rel="shortcut icon" href="static/img/icon.png" type="image/x-icon">

    
<style type="text/css">
  .icon-3 {

    width: 0%;
    padding-top: 0px;
    margin-top: 10px;
    color: #383838;
    background-color: #6f6f6f;
    text-align: center;
    margin-right: 13px;
    height: 20px;
    font-size: 19px !important;
}

      .input-border-0{
          width: 100% !important;
          border: 0.1px solid rgb(218, 218, 218) !important;
        } 

</style>

    </head>

    <body class="b-black-l">

    <!-- Top menu -->
    <nav class="navbar b-black-gray navbar-inverse navbar-fixed-top navbar-no-bg" role="navigation">
        <div class="pull-left position b-logo white"><a href="index.jsp">Donation site</a></div>
      <div id="fullscreen" class="btn-header icon-3 transparent pull-right">
        <span style="position:relative; bottom:5px;" > <label style="margin-bottom: 0px; line-height: 24px;" href="javascript:void(0);" title="Ayuda"><i class="fa fa-question-circle"></i></label> </span>
      </div>
    </nav>

    <!-- Registration Form 1 -->
    <div  class=" b-black" >
          <div class="container" style="padding-top: 4%;">
              
              <div class="row img-back" style="background-image: url('static/img/fondo.jpg'); margin-bottom: 0px; padding-bottom: 40%;">
                <div class="row login-center" >
                <div  class="ancho r-form-1-box wow fadeInUp animated">
                  
                      <div class="r-form-1-top b-black">
                        <div class="text-center">
                          <h1 class="white" style="font-size: 25px; margin: 0px;">CREATE AN ACCOUNT</h1>
                            </div>
                        </div>
                        <div class="r-form-1-bottom form-color" style="padding:0px 10px;">
                        <form role="form"  id="login-form" action="/create" style="font-size: 13px; padding-bottom: 6px;" method="post">
                            <% if(request.getAttribute("error")!=null){%>
                            <br>
                                <div class="alert alert-danger ">
                                     <h4><i class="icon-3 fa fa-ban"></i> Error</h4>
                                     <span><%= request.getAttribute("error")%></span>
                                 </div>
                             <% } %>
                             <input type="hidden" name="id" value="0" />                            <div class="form-group">
                              <label class="gray" style="margin-bottom: 0px;">Name</label><br>
                              <input class="input-form input-border-0" style="height: 27px ! important;" type="text"  name="name"  required  minlength="2" maxlength="80">                             
                            </div>
                             <div class="form-group">
                              <label class="gray" style="margin-bottom: 0px;">Lastname</label><br>
                              <input class="input-form input-border-0" style="height: 27px ! important;" type="text"  name="lastname"  required  minlength="2" maxlength="80">                             
                            </div>
                            
                            <div class="form-group" style="padding-top: 10px; margin-bottom: 10px;">
                        
                                <label class="gray" style="margin-bottom: 0px;">Email </label><br>
                                <input   class="input-form input-border-0" style="height: 27px ! important;" type="email"  name="email" required minlength="2" maxlength="50">
                              
                            </div>
                            
                             <div class="form-group">
                              <label class="gray" style="margin-bottom: 0px;">User</label><br>
                              <input class="input-form input-border-0" style="height: 27px ! important;" type="text"  name="username"  required  minlength="2" maxlength="10">                             
                            </div>
                            <div class="form-group">
                              <label class="gray" style="margin-bottom: 0px;">Password</label><br>
                              <input class="input-form input-border-0" style="height: 27px ! important;" type="password"  name="password" autocomplete="off" required  minlength="2" maxlength="25">
                      
                            </div>
                             <div class="form-group">
                              <label class="gray" style="margin-bottom: 0px;">Id number</label><br>
                              <input class="input-form input-border-0" style="height: 27px ! important;" type="text"  name="id_document"  required  minlength="2" maxlength="15">                             
                            </div>
                            
                             <div class="form-group">
                              <label class="gray" style="margin-bottom: 0px;">Country</label><br>
                              <select class="form-control" name="country_id" required>
                              
								<c:forEach var="country" items="${ countries}">
                              		<option value="${country.id }">${country.name }</option>
                              	</c:forEach>
                              </select>
                                                           
                            </div>
 
                            <div style="max-height: 27px;">
                             <div >
                            
                          </div>
                            </div>
                            
                      </div>
                       <div class="r-form-1-top b-black" style="padding: 9px;">
                      <div class="text-center">
                       <button type="submit" id="login" class="btn btn-primary btn-lg submit" style="width: 85%; height: 29px; font-size: 15px; padding-top: 2px; padding-bottom: 2px; float:none;">CREATE</button>
                       <a href="login"  class="btn btn-success btn-lg submit" style="width: 85%; height: 29px; font-size: 15px; padding-top: 2px; padding-bottom: 2px; float:none;">CANCEL</a>
                        </form>
                        </div>
                  </div>
                </div>
                </div>
              </div>

      
        </div>
</div>
        <!-- Footer -->
        <footer class="b-black-gray">
          <div class="container">
          <label class="text-center gray-blank">Donation site - 2018</label>
          </div>
        </footer>
        
    <!-- IMPORTANT: APP CONFIG -->
    <script src="static/js/app.config.js"></script>

    <!-- BOOTSTRAP JS -->		
    <script src="static/js/bootstrap.min.js "></script>

    <!-- JQUERY VALIDATE -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"></script>
    <!-- JS validator -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.js"></script>
    <!-- JQUERY MASKED INPUT -->
    <script src="static/js/jquery.maskedinput.min.js"></script>

    <script src="static/js/app.min.js"></script>
    
    <!--<script src="{{ asset('js/plugin/pace/pace.min.js') }}"></script>-->
    <script src="static/js/jquery-ui.js"></script>
    
        
        <script> 
            
  $('#login-form').validate({
      debug: true,
        rules: {
          "email": {
            required: true,          
            email:true,
            minlength:2,
            maxlength:60
          },
          "password": {
            required: true,
            minlength:2,
            maxlength:25
          },
          "name": {
            required: true,
            minlength:2,
            maxlength:50
          },
          "lastname": {
            required: true,
            minlength:2,
            maxlength:50
          },
          "id": {
            required: true,
            minlength:2,
            maxlength:15
          }
        },
        messages: {

            "email": {
                required: "Email is required.",
                minlength:"Email min 2 characters.",
                maxlength:"Email max 50 characters.",
                email:"Email invalid format."
            },
            "password": {
                required: "Password is required.",
                minlength:"Password min 2 characters.",
                maxlength:"Password max 25 characters."
            },
            "name": {
                required: "Name is required.",
                minlength:"Name min 2 characters.",
                maxlength:"Name max 50 characters."
            },
            "lastname": {
                required: "Lastname is required.",
                minlength:"Lastname min 2 characters.",
                maxlength:"Lastname max 50 characters."
            },
            "id": {
                required: "Id is required.",
                minlength:"Id min 2 characters.",
                maxlength:"Id max 15 characters."
            }
          },
          submitHandler: function(form) { 
              form.submit();
        }
    });
        </script>
      
    
</body></html>
