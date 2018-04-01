






<%@page import="java.util.GregorianCalendar"%>
<%@include file="header.jsp" %>


            <c:if test="${empty sessionScope.user_id}" > 
                <c:redirect url="/login" />
            </c:if>
<div class="col-sm-12 col-md-12 col-lg-12">
    <div class="jarviswidget jarviswidget-color-darken jarviswidget-sortable" id="wid-id-2" data-widget-colorbutton="false" data-widget-editbutton="false" role="widget">
        
<header role="heading"><div class="jarviswidget-ctrls" role="menu"> 
        <a href="javascript:void(0);" class="button-icon jarviswidget-toggle-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Collapse">
            <i class="fa fa-minus "></i></a> <a href="javascript:void(0);" class="button-icon jarviswidget-fullscreen-btn" 
               rel="tooltip" title="" data-placement="bottom" data-original-title="Fullscreen"><i class="fa fa-expand "></i></a>
               <a href="javascript:void(0);" class="button-icon jarviswidget-delete-btn" rel="tooltip" title="" data-placement="bottom" data-original-title="Delete">
                   <i class="fa fa-times"></i></a></div>
        <span class="widget-icon"> <i class="fa fa-eye"></i> </span>
        <h2>Donations</h2>

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

 
    <table class="full-width table-responsive datatable table table-hover dataTable_wrapper table-bordered table-striped">
        <thead >
            <tr>
                <th >Intitution</th>
                <th >Date</th>
                <th >Mount</th>
                <th>Credit Card</th>
            </tr>
        </thead>
        <tbody>
                <c:forEach var="donation" items="${donations}">
                    <tr>
                    <td>${donation.institution_name }</td>
                    <td>${donation.date }</td>
                    <td>$${donation.mount }</td>
                    <td>${donation.card }</td>         
                    </tr>
                </c:forEach>  
        </tbody>
    </table>

</div>
<!-- end widget content -->

</div>
<!-- end widget div -->

</div>
</div>
    
<%@include file="footer.jsp" %>


