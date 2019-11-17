

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
        <link href="factura/css/bootstrap.css" rel="stylesheet" />
        <style>@import url(http://fonts.googleapis.com/css?family=Bree+Serif);
            body, h1, h2, h3, h4, h5, h6{
                font-family: 'Bree Serif', serif;
            }
        </style>
    <div class="container">
        <div class="row">

            <div class="col-xs-6">
                <h1><a href=" "><img alt="" src="factura/image/logo.png" /></a></h1>
            </div>
            <div class="col-xs-6 text-right">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>NIT : 
                            <a href="#">12345789-1</a>
                        </h4>
                        <h4>AUTORIZACI&Oacute;N : 
                            <a href="#">685489</a>
                        </h4>
                    </div>
                    <div class="panel-body">
                        <h4>FACTURA : 
                            <a href="#"><c:out value="${factura.getNumFac()}" /></a>
                        </h4>
                    </div>
                </div>
            </div>

            <hr />


            <h1 style="text-align: center;">FACTURA</h1> 

            <div class="row">
                <div class="col-xs-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>Bogota, <c:out value="${factura.getFecha()}" />

                            </h4>
                        </div>
                        <div class="panel-body">


                            <h4>Comprador :  
                                <a href="#"> <c:out value="${factura.getNomCli()}" /></a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                Numero identificacion:
                                <a href="#"> <c:out value="${factura.getNunDoc()}" /></a>
                            </h4>

                        </div>
                    </div>
                </div>

            </div>
            <pre></pre>
            <table class="table table-bordered">
                <thead >
                    <tr>
                        <th style="text-align: center;">
                            <h4>Cantidad</h4>
                        </th>
                        <th style="text-align: center;">
                            <h4>Concepto</h4>
                        </th>
                        <th style="text-align: center;">
                            <h4>Precio unitario</h4>
                        </th>
                        <th style="text-align: center;">
                            <h4>Total</h4>
                        </th>

                    </tr>
                </thead>
                <tbody>
                    <c:set var = "total"  value = "${0}"/>
                    <c:forEach var="item" items="${factura.getProductos()}" varStatus="loop">
                        <tr>
                            <td style="text-align: center;"><c:out value="${item.getCantidad()}" /></td>
                            <td><a href="#"><c:out value="${item.getNombre()}" /> </a></td>
                            <td class=" text-right "><c:out value="${item.getPrecio()}" /></td>
                            <td class=" text-right "><c:out value="${item.getPrecio()*item.getCantidad()}" /></td>
                            <c:set var = "total"  value = "${total+item.getPrecio()*item.getCantidad()}"/>

                        </tr>


                    </c:forEach>

                    <tr>
                        <td>&nbsp;</td>
                        <td><a href="#"> &nbsp; </a></td>
                        <td class="text-right">&nbsp;</td>
                        <td class="text-right ">&nbsp;</td>

                    </tr>
                    <tr >
                        <td colspan="3" style="text-align: right;">Total Bs</td>
                        <td style="text-align: right;"><a href="#" ><c:out value = "${total}"/></a></td>


                    </tr>

                </tbody>
            </table>
            <pre></pre>


            <div class="row">
                <div class="col-xs-4">
                    <!--                    <h1><a href=" "><img alt="" src="factura/image/qr.png" /></a></h1>-->
                </div>
                <div class="col-xs-8">

                    <div class="panel panel-info"  style="text-align: right;">
                        <h6> "LA ALTERACI&Oacute;N, FALSIFICACI&Oacute;N O COMERCIALIZACI&Oacute;N ILEGAL DE ESTE DOCUMENTO ESTA PENADO POR LA LEY"</h6>
                    </div>

                </div>
            </div>

        </div>
    </div>

</head>
<body>

</body>
</html>