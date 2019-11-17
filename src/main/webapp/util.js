/* 
 * 06-06-2019
 * Clinica Universidad de La Sabana - Todos los derechos reservados 
 */

$(document).ready(function() {

    $("#file").change(function() {
        console.log("aaaa");
        console.log(document.getElementById("file").files.length);

        var file = document.getElementById("file").files[0], reader = new FileReader();

        reader.onloadend = function() {
            var b64 = reader.result.replace(/^data:.+;base64,/, '');
            console.log(b64);
            $("#b64").val(b64);
        };

        reader.readAsDataURL(file);
    });
});
