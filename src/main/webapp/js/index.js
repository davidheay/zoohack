//
//
//
//setInterval(function() {
////    location.reload();
//    cargar();
//}, 10000);
//function sumar() {
//
//    var paragraphs = document.getElementsByTagName("f");
//    for (var i = 0; i < paragraphs.length; i++)
//    {
//
//        paragraphs[i].innerHTML = parseFloat(paragraphs[i].innerHTML) + 1;
//
//    }
//
//}
//setInterval(function() {
//    sumar();
//}, 1000);
//function cargar() {
//    $.ajax({
//        type: 'POST',
//        url: 'AjaxDatos',
//        beforeSend: function() {
////            gifLoad();
//        },
//        complete: function() {
////            removeGifLoad();
//        },
//        success: function(dataResponse) {
//
//            var text = '<div class="icon bg-violet"><i class="icon-user"></i></div>' +
//                    '                                        <div class="title"><span>En&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>Uso</span>' +
//                    '                                            <div class="progress">' +
//                    '                                                <div role="progressbar" style="width:' + dataResponse.resumen.uso + '%; height: 5px;" aria-valuenow="' + dataResponse.resumen.uso + '" aria-valuemin="0" aria-valuemax="20" class="progress-bar bg-violet"></div>' +
//                    '                                            </div>' +
//                    '                                        </div>' +
//                    '                                        <div class="number"><strong>' + dataResponse.resumen.uso + '</strong></div>';
//
//            $("#uso").html(text);
//            text = '<div class="icon bg-red"><i class="icon-padnote"></i></div>' +
//                    '                                        <div class="title"><span>Espacios<br>Libres</span>' +
//                    '                                            <div class="progress">' +
//                    '                                                <div role="progressbar" style="width: ' + dataResponse.resumen.libre + '%; height: 5px;" aria-valuenow="' + dataResponse.resumen.libre + '" aria-valuemin="0" aria-valuemax="20" class="progress-bar bg-red"></div>' +
//                    '                                            </div>' +
//                    '                                        </div>' +
//                    '                                        <div class="number"><strong>' + dataResponse.resumen.libre + '</strong></div>';
//
//            $("#libre").html(text);
//            text = '<div class="icon bg-green"><i class="icon-bill"></i></div>' +
//                    '                                        <div class="title"><span>Servicios<br>Totales</span>' +
//                    '                                            <div class="progress">' +
//                    '                                                <div role="progressbar" style="width: 100%; height: 4px;" aria-valuenow="' + dataResponse.resumen.total + '" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-green"></div>' +
//                    '                                            </div>' +
//                    '                                        </div>' +
//                    '                                        <div class="number"><strong>' + dataResponse.resumen.total + '</strong></div>';
//
//            $("#totales").html(text);
//            text = ' <div class="icon bg-orange"><i class="icon-check"></i></div>' +
//                    '                                        <div class="title"><span>Promedio <br>Minutos</span>' +
//                    '                                            <div class="progress">' +
//                    '                                                <div role="progressbar" style="width: ' + dataResponse.resumen.promedio + '%; height: 4px;" aria-valuenow="' + dataResponse.resumen.promedio + '" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-orange"></div>' +
//                    '                                            </div>' +
//                    '                                        </div>' +
//                    '                                        <div class="number"><strong>' + dataResponse.resumen.promedio + '</strong></div>';
//
//            $("#promedio").html(text);
//            text = "";
//            for (var i = 0; i < dataResponse.activos.length; i++) {
//                text += "<tr>";
//                text += '<td scope="row"> ' + (i + 1) + '</td>';
//                text += '<td>' + dataResponse.activos[i].placa + '</td>';
//                text += '<td>' + dataResponse.activos[i].fechaIN + '</td>';
//                text += '<td><f id=' + (i + 1) + '>' + dataResponse.activos[i].duracion + '</f> Segundos</td>';
//
//                text += "</tr>";
//
//            }
//            $("#activos").html(text);
//            text = "";
//            for (var i = 0; i < dataResponse.registros.length; i++) {
//                text += "<tr>";
//                text += '<td scope="row"> ' + (i + 1) + '</td>';
//                text += '<td>' + dataResponse.registros[i].placa + '</td>';
//                text += '<td>' + dataResponse.registros[i].fechaIN + '</td>';
//                text += '<td>' + dataResponse.registros[i].fechaOUT + '</td>';
//                text += '<td>' + dataResponse.registros[i].duracion + '</td>';
//                text += '<td>' + dataResponse.registros[i].cobro + '</td>';
//
//
//                text += "</tr>";
//
//            }
//            $("#registros").html(text);
//
//
//        },
//        error: function() {
//
//        },
//        data: {},
//        async: true
//    });
//
//}