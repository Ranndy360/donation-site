

   <%@include file="header.jsp" %>
	<c:forEach var="institution" items="${ institutions}">
	  <div class="col-sm-6 col-md-6 col-lg-4">
                 <!-- product -->
                 <div class="product-content product-wrap clearfix">
                     <div class="row">
                         <div class="col-md-5 col-sm-12 col-xs-12">
                                 <div class="product-image"> 
                                         <img src="static/img/ticket.png" alt="194x228" class="img-responsive">                                          
                                        <!--comprobamos si stock es ilimitado-->
                                        
                                 </div>
                         </div>
                         <div class="col-md-7 col-sm-12 col-xs-12">
                             <div class="product-deatil">
                                             <h5 class="name">
                                                     <a href="#">
                                                         ${institution.name}
                                                         
                                                     </a>
                                             </h5>
                                             <p class="price-container">
                                                 <span>Donated: $10.52</span>
                                             </p>
                                             <span class="tag1"></span> 
                             </div>
                             <div class="description">${institution.description }
                                                         </p>
                             </div>
                             <% if(sesion.getAttribute("user_id")==null){ %>
                                 <a class="btn btn-sm btn-success btn-buy pull-right" type="button" href='/login'>Donate
                                 </a>
                             <% }else{%>
                             <buttom class="btn btn-sm btn-success btn-buy pull-right" data-id='${institution.id }' 
                                     type="button" href='#' data-toggle="modal" data-target="#buy-modal" data-title="algo" 
                                     data-desciption="descrip" data-date="mana" data-price="10.50" data-stock="0">
                                     Donate
                                 </buttom>
                             <% } %>

                         </div>
                     </div>
                 </div>
                 <!-- end product -->
             </div>
		</c:forEach>




    
        <!-- MODALS-->
        <div class="modal" id="buy-modal">
           <div class="modal-dialog" role="document">
             <div class="modal-content">
               <div class="modal-header">
                 <h5 class="modal-title">Compra de Ticket</h5>
                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                   <span aria-hidden="true">&times;</span>
                 </button>
               </div>
                 <form action="Offert?action=b2ZmZXJ0LWJ1eQ==" method="POST" id="buy-form">
                    <div class="modal-body">
                      <div class="product-content product-wrap clearfix">
                             <div class="row">
                                 <div class="col-md-5 col-sm-12 col-xs-12">
                                     <div class="product-image"> 
                                         <img src="static/img/ticket.png" alt="194x228" class="img-responsive">                                     
                                     </div>
                                 </div>
                                 <div class="col-md-7 col-sm-12 col-xs-12">
                                 <div class="product-deatil">
                                     <h5 class="name">
                                         <a href="#" class="title_modal">
                                             <span class="description_modal"></span>
                                             </a>
                                     </h5>
                                     <p class="price-container">
                                         <span class="price_modal"> </span>
                                     </p>
                                     <span class="tag1"></span> 
                                 </div>                           
                                     <input type="hidden" name="id" class="id-modal"/>
                                     <div class="form-group">
                                         <label for="recipient-name" class="form-control-label">Numero de tarjeta:</label>
                                         <input type='text' class="form-control int"  minlength="5" maxlength="30" required name="card" id="card"/>
                                     </div>
                                      <div class="form-group">
                                         <label for="recipient-name" class="form-control-label">Cantidad de Tickets:</label>
                                         <input type="number" value="1" name="cantidad" id="cantidad" class="int form-control cantidad int" min="1"/> 
                                         <label class="quantity-error"></label>
                                     </div>
                             </div>
                         </div>
                     </div>
                    </div>
                    <div class="modal-footer">
                      <button type="submit" class="btn btn-primary">Comprar</button>
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    </div>
               </form>
             </div>
           </div>
         </div>

  <div id="divSmallBoxes"><div id="smallbox2" class="hide SmallBox animated fadeInRight fast" style="background-color: rgb(115, 158, 115);"><div class="textoFull">
              <span>Great! You just closed that last alert!</span><p>This message will be gone in 5 seconds!</p>
          </div><div class="miniIcono"><i class="miniPic fa fa-cloud"></i></div></div></div>
   
   <%@include file="footer.jsp" %>
   
   <script>
       var price=0,new_price=0,stock=0;
       //agrega los valores al modal
       $(document).on('click','.btn-buy',function (e){
           price=$(this).data('price');
           stock=$(this).data('stock');
           $('#cantidad').val(1);
           $('#card').val('');
           $('.id-modal').val($(this).data('id'));
           $('.title_modal').text($(this).data('title'));
           $('.description_modal').text($(this).data('description'));
           $('.price_modal').text('Total: $'+price);
       });
       
       //actualiza el total cuando cambia la cantidad
       $(document).on('change','#cantidad',function (e){
           $('.quantity-error').text('');
           if(stock!=-1 && $(this).val()>stock){
               $('.quantity-error').text('No hay existencias suficientes para esa cantidad');
               $(this).val(1);
           }
                if($(this).val()>0){
                    new_price=(price*$(this).val());
                   $('.price_modal').text('Total: $'+new_price.toFixed(2));
               }else{
                   $(this).val('1');
               }
           
       });
       $(document).on('keyup','#cantidad',function (e){
           $('.quantity-error').text('');
           if(stock!=-1 && $(this).val()>stock){
               $('.quantity-error').text('No hay existencias suficientes para esa cantidad');
               $(this).val(1);
           }
                if($(this).val()>0){
                    new_price=(price*$(this).val());
                   $('.price_modal').text('Total: $'+new_price.toFixed(2));
               }else{
                   $(this).val('1');
               }
           
       });
       //validaciones
          
        $('#buy-form').validate({
            debug: true,
              rules: {
                "cantidad": {
                  required: true,  
                  number:true
                },
                "card": {
                  required: true,
                  minlength:10,
                  maxlength:35,
                  number:true
                }          
              },
              messages: {
                  "cantidad": {
                      required: "Cantidad es requerido.",
                      number:"Formato invalido."
                  },
                  "card": {
                      required: "Numero de tarjeta es requerida.",
                      minlength:"Numero de tarjeta minimo 10 caracteres.",
                      maxlength:"Numero de tarjeta maximo 80 caracteres.",
                      number:"Formato invalido."
                  }
                },
                submitHandler: function(form) { 
                    form.submit();
              }
          });
   </script>
   
   