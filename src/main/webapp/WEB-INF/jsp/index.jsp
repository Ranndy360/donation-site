

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
                                                 <span>Donated: $${institution.donated }</span>
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
                                     type="button" href='#' data-toggle="modal" data-target="#buy-modal" data-title="${institution.name }" 
                                     data-desciption="${institution.description }" data-donated="${institution.donated }">
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
                 <h5 class="modal-title">Thanks for your donation</h5>
                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                   <span aria-hidden="true">&times;</span>
                 </button>
               </div>
                 <form action="/donate" method="POST" id="buy-form">
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
                                         <label for="recipient-name" class="form-control-label">Credit Card number:</label>
                                         <input type='text' class="form-control int"  minlength="5" maxlength="30" required name="card" id="card"/>
                                     </div>
                                      <div class="form-group">
                                         <label for="recipient-name" class="form-control-label">Quantity:</label>
                                         <input type="text" value="1" name="quantity" id="quantity" class=" form-control cantidad float" /> 
                                         <label class="quantity-error"></label>
                                     </div>
                             </div>
                         </div>
                     </div>
                    </div>
                    <div class="modal-footer">
                      <button type="submit" class="btn btn-primary">Donate</button>
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
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
           $('#quantity').val("50.00");
           $('#card').val('');
           $('.id-modal').val($(this).data('id'));
           $('.title_modal').text($(this).data('title'));
           $('.description_modal').text($(this).data('description'));
       });
       
       //validaciones
          
        $('#buy-form').validate({
            debug: true,
              rules: {
                "quantity": {
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
                  "quantity": {
                      required: "Quantity is required.",
                      number:"Invalid format."
                  },
                  "card": {
                      required: "Credit card numer is required.",
                      minlength:"Credit card numer min 10 characters.",
                      maxlength:"Credit card numer max 80 characters.",
                      number:"Invalid format."
                  }
                },
                submitHandler: function(form) { 
                    form.submit();
              }
          });
   </script>
   
   