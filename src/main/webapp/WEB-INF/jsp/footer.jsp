


                                </div>
                        </div>

                </div>
</div>
<div class="page-footer">

<div class="row">
    <div class="col-xs-12 col-sm-6">
            <span class="txt-color-white">Donation site © 2018 </span>
    </div>
    
    <div class="col-xs-12 col-sm-6 text-right">
            <span class="txt-color-white">
	            <c:if test="${not empty visits }">
	            	Visits today: <b>${visits }</b>
	            </c:if> 
            </span>
    </div>

</div>
</div>


<!--SMARTHADMIN-->
<script src="static/js/smarthnotification.js"></script>

<!-- IMPORTANT: APP CONFIG -->
<script src="static/js/app.config.js"></script>


<!-- JQUERY VALIDATE -->
<script src="static/js/jquery.validate.min.js"></script>
<!-- JS validator -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.js"></script>
    
<!-- JQUERY MASKED INPUT -->
<script src="static/js/jquery.maskedinput.min.js"></script>

<script src="static/js/app.min.js"></script>


<script src="static/js/datatables/jquery.dataTables.min.js"></script>
<script src="static/js/datatables/dataTables.colVis.min.js}"></script>
<script src="static/js/datatables/dataTables.tableTools.min.js"></script>
<script src="static/js/datatables/dataTables.bootstrap.min.js"></script>
<script src="static/js/datatables/datatables.responsive.min.js"></script>

<script>
    $('[data-toggle="tooltip"]').tooltip();
    
    $('.datatable').DataTable();
    //valida numeros decimales
    $(document).on('keyup', '.float', function(event) {
            event.preventDefault();
            $(this).val($(this).val().replace( /[^0-9.]/g, "" ));
    });
    //valida numeros decimales
    $(document).on('keyup', '.int', function(event) {
            event.preventDefault();
            $(this).val($(this).val().replace( /[^0-9]/g, "" ));
    });
</script>
    </body>
</html>