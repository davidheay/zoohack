<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Centro de Control</title>

        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
              integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
              crossorigin=""/>

        <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
                integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
        crossorigin=""></script>
    </head>

    <body id="auronplay" style="background-color: white; text-align: center; vertical-align: super; font-size: 40px">


        <div id="mapid" style="height:460px"></div>

    </body>

    <script>
        console.log("aa");
        buildMap(<c:out value="${lstUbicaciones.get(0).getLatitud()}"/>, <c:out value="${lstUbicaciones.get(0).getLongitud()}"/>);
        function buildMap(lat, lon) {
            document.getElementById('mapid').innerHTML = "<div id='map' style='width: 100%; height: 100%;'></div>";
            console.log("b");
            let mymap = L.map('map').setView([lat, lon], 15);
            console.log("c");
            L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
                attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
                maxZoom: 18,
                id: 'mapbox.streets',
                accessToken: 'pk.eyJ1IjoidGhvcmF6IiwiYSI6ImNrMnF4ejFmaTBrNXYzY252cjUwcXJ0bjYifQ.oPD02RJswNdExR3pfER8PQ'
            }).addTo(mymap);
            console.log("d");
            let marker = L.marker([lat, lon]).addTo(mymap);
        <c:forEach var="ubi" items="${lstUbicaciones}">
            L.marker([<c:out value="${ubi.getLatitud()}"/>, <c:out value="${ubi.getLongitud()}"/>]).addTo(mymap);
        </c:forEach>
            var latlngs = [
        <c:forEach var="counter" begin="0" end="${lstUbicaciones.size()-1}">
            [
            <c:out value="${lstUbicaciones.get(counter).getLatitud()}"/>
            ,
            <c:out value="${lstUbicaciones.get(counter).getLongitud()}"/>
            ]
            <c:if test="${counter!=lstUbicaciones.size()-1}">
            ,
            </c:if>
        </c:forEach>
            ];
            var c = [];
        <c:forEach var="ubi" items="${lstUbicaciones}">
            c.push([<c:out value="${ubi.getLatitud()}"/>,<c:out value="${ubi.getLongitud()}"/>]);
        </c:forEach>



            var polyline = L.polyline(c, {color: 'red'}).addTo(mymap);

            map.fitBounds(polyline.getBounds());
            console.log("e");

        }
    </script>
</html>
