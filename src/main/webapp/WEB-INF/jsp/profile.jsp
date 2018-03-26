


<%@include file="header.jsp" %>

            <% if(sesion.getAttribute("user_id")==null){ %>
                <c:redirect url="login.jsp" />
            <% } %>
<div class="col-sm-12 col-md-12 col-lg-12">
    <div class="jarviswidget jarviswidget-color-darken jarviswidget-sortable" id="wid-id-2" data-widget-colorbutton="false" data-widget-editbutton="false" role="widget">
        
<header role="heading"><div class="jarviswidget-ctrls" role="menu"> 
        <a href="javascript:void(0);" class="button-icon jarviswidget-toggle-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Collapse"><i class="fa fa-minus "></i></a> <a href="javascript:void(0);" class="button-icon jarviswidget-fullscreen-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Fullscreen"><i class="fa fa-expand "></i></a> <a href="javascript:void(0);" class="button-icon jarviswidget-delete-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Delete"><i class="fa fa-times"></i></a></div>
        <span class="widget-icon"> <i class="fa fa-eye"></i> </span>
        <h2>Mi Perfil</h2>

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

    <form class="AVAST_PAM_loginform" role="form" id="profile-form" action="Profile?action=dXBkYXRlLXByb2ZpbGU=" method="post">

        <fieldset>
                <input name="id" type="hidden">
                <div class="form-group">
                        <label>Nombre</label>
                        <input class="form-control" placeholder="Escribe tu nombre" 
                               type="text" name="nombre" value="<%= request.getAttribute("nombre")%>">
                </div>

                <div class="form-group">
                        <label>Apellido</label>
                        <input class="form-control" placeholder="Escribe tu apellido" 
                               type="text" name="apellido" value="<%= request.getAttribute("apellido")%>">
                </div>
                <div class="form-group">
                        <label>Correo electronico</label>
                        <input class="form-control" placeholder="Escribe tu correo" 
                               type="email" name="correo" value="<%= request.getAttribute("correo")%>">
                </div>
                <div class="form-group">
                        <label>Contrasena</label>
                        <input class="form-control" placeholder="Escribe tu contrasena" 
                               type="password" name="contrasena" value="<%= request.getAttribute("contrasena")%>">
                </div>
                <div class="form-group">
                        <label>Dui</label>
                        <input class="form-control" placeholder="Escribe tu dui" 
                               type="text" name="dui" value="<%= request.getAttribute("dui")%>">
                </div>
        </fieldset>
        <div class="form-actions">

        </div>
        <button type="submit" class=" pull-right btn btn-primary btn-lg submit"> 
            <i class="fa fa-save"></i>
                Guardar</button>
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
          "correo": {
            required: true,          
            email:true,
            minlength:2,
            maxlength:80
          },
          "contrasena": {
            required: true,
            minlength:2,
            maxlength:80
          },
          "nombre": {
            required: true,
            minlength:2,
            maxlength:50
          },
          "apellido": {
            required: true,
            minlength:2,
            maxlength:50
          },
          "dui": {
            required: true,
            minlength:2,
            maxlength:80
          }      
        },
        messages: {
            "correo": {
                required: "Correo es requerido.",
                minlength:"Correo minimo 2 caracteres.",
                maxlength:"Correo maximo 80 caracteres.",
                email:"Correo formato invalido."
            },
            "contrasena": {
                required: "Contrasena es requerida.",
                minlength:"Correo minimo 2 caracteres.",
                maxlength:"Correo maximo 80 caracteres.",
            },
            "nombre": {
                required: "Nombre es requerida.",
                minlength:"Nombre minimo 2 caracteres.",
                maxlength:"Nombre maximo 80 caracteres.",
            },
            "apellido": {
                required: "Apellido es requerida.",
                minlength:"Apellido minimo 2 caracteres.",
                maxlength:"Apellido maximo 80 caracteres.",
            },
            "dui": {
                required: "Dui es requerida.",
                minlength:"Dui minimo 2 caracteres.",
                maxlength:"Dui maximo 80 caracteres.",
            }
          },
          submitHandler: function(form) { 
              form.submit();
        }
    });
</script>

