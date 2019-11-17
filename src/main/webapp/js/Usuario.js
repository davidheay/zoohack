
function actualizar(usu) {

//    $.ajax({
//        type: 'POST',
//        data: {id: num},
//
//        url: 'getProductosCitas',
//        beforeSend: function() {
////                gifLoad();
//        },
//        complete: function() {
////                removeGifLoad();
//        },
//        success: function(dataResponse) {
//            console.log(dataResponse);
//            text = "";
//            var temp = 0;
//            for (var i = 0; i < dataResponse.length; i++) {
//                temp += dataResponse[i].Precio * dataResponse[i].cantidad;
//                text += "<tr><td>" + (i + 1) + "</td><td>" + dataResponse[i].nombre + "</td><td>" + '<img src="data:image/png;base64,' + dataResponse[i].foto + '" width="auto" height="150">' + "</td><td>" + dataResponse[i].cantidad + "</td><td>" + dataResponse[i].Precio * dataResponse[i].cantidad + "</td></tr>";
//            }
//            $("#tot").html("Total:" + temp + " COP");
//            $("#productosDeFactura").html(text);

//
//        }
//
//    });
    $("#user").val(usu.trim());
    $("#userSe").val(usu.trim());
    $('#actualizarUsu').modal('show');



}