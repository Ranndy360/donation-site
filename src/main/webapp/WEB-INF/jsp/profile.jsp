


<%@include file="header.jsp" %>

            
            <c:if test="${empty sessionScope.user_id}" > 
                <c:redirect url="/login" />
            </c:if>
<div class="col-sm-12 col-md-12 col-lg-12">
    <div class="jarviswidget jarviswidget-color-darken jarviswidget-sortable" id="wid-id-2" data-widget-colorbutton="false" data-widget-editbutton="false" role="widget">
        
<header role="heading"><div class="jarviswidget-ctrls" role="menu"> 
        <a href="javascript:void(0);" class="button-icon jarviswidget-toggle-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Collapse"><i class="fa fa-minus "></i></a> <a href="javascript:void(0);" class="button-icon jarviswidget-fullscreen-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Fullscreen"><i class="fa fa-expand "></i></a> <a href="javascript:void(0);" class="button-icon jarviswidget-delete-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Delete"><i class="fa fa-times"></i></a></div>
        <span class="widget-icon"> <i class="fa fa-eye"></i> </span>
        <h2>My profile</h2>

<span class="jarviswidget-loader"><i class="fa fa-refresh fa-spin"></i></span></header>

<!-- widget div-->
<div role="content">

    <!-- widget edit box -->
    <div class="jarviswidget-editbox">
            <!-- This area used as dropdown edit box -->

    </div>
    <!-- end widget edit box -->

<!-- widget content -->
<div class="widget-body">
	 <c:if test="${not empty sessionScope.message}" > 
                           
        <div class="alert alert-success ">
            <h4><i class="icon-3 fa fa-check"></i> Response</h4>
           
                <span><c:out value="${sessionScope.message}"/></span>
                <% sesion.setAttribute("message",null); %>
        </div>
      </c:if> 
    <form class="AVAST_PAM_loginform" role="form" id="profile-form" action="/create" method="post">

        <fieldset>
                <input name="id" type="hidden" value="${user.id }">
                <div class="form-group">
                        <label>Name</label>
                        <input class="form-control" placeholder="Your name" 
                               type="text" name="name" value="${user.name }">
                </div>

                <div class="form-group">
                        <label>Lastname</label>
                        <input class="form-control" placeholder="Your lastname" 
                               type="text" name="lastname" value="${user.lastname }">
                </div>                
                
                <div class="form-group">
                        <label>Username</label>
                        <input class="form-control" placeholder="Your username" 
                               type="text" name="username" value="${user.user }">
                </div>
                
                <div class="form-group">
                        <label>Email</label>
                        <input class="form-control" placeholder="Your email" 
                               type="email" name="email" value="${user.email }">
                </div>
                <div class="form-group">
                        <label>Password</label>
                        <input class="form-control" placeholder="Your password" 
                               type="password" name="password" value="${user.password }">
                </div>
                <div class="form-group">
                        <label>Id number</label>
                        <input class="form-control" placeholder="Your ID number" 
                               type="text" name="id_document" value="${user.id_document }">
                </div>
                 <div class="form-group">
                   <label class="gray" style="margin-bottom: 0px;">Country</label><br>
                   <select class="form-control" name="country_id" required>
                   
					<c:forEach var="country" items="${ countries}">
						<c:if test="${user.country_id==country.id }">
							<option value="${country.id }" selected>${country.name }</option>
						</c:if>
                   		<c:if test="${user.country_id!=country.id }">
							<option value="${country.id }">${country.name }</option>
						</c:if>
                   	</c:forEach>
                   </select>
                                                
                 </div>
        </fieldset>
        <div class="form-actions">

        </div>
        <button type="submit" class=" pull-right btn btn-primary btn-lg submit"> 
            <i class="fa fa-save"></i>
                Save</button>
        </form>

</div>
<!-- end widget content -->

</div>
<!-- end widget div -->

</div>
</div>
   
        
<%@include file="footer.jsp" %>

<script> 
            
  $('#profile-form').validate({
      debug: true,
        rules: {
          "email": {
            required: true,          
            email:true,
            minlength:2,
            maxlength:80
          },
          "password": {
            required: true,
            minlength:2,
            maxlength:80
          },
          "name": {
            required: true,
            minlength:2,
            maxlength:50
          },
          "username": {
              required: true,
              minlength:2,
              maxlength:25
            },
          "lastname": {
            required: true,
            minlength:2,
            maxlength:50
          },
          "id_document": {
            required: true,
            minlength:2,
            maxlength:80
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
            "username": {
                required: "Username is required.",
                minlength:"Username min 2 characters.",
                maxlength:"Username max 50 characters."
            },
            "lastname": {
                required: "Lastname is required.",
                minlength:"Lastname min 2 characters.",
                maxlength:"Lastname max 50 characters."
            },
            "id_document": {
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

