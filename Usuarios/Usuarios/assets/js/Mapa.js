var latitud = 1;
var longitud = 1;

function showPosition(position) {
    latitud = position.coords.latitude;
    longitud = position.coords.longitude;
    document.getElementById('txtLatitud').value = latitud;
    document.getElementById('txtLongitud').value = longitud;
    Mapa();
}

function iniciarMap() {
    navigator.geolocation.watchPosition(showPosition);
}

function Mapa() {
    var coord = { lat: latitud, lng: longitud };
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 10,
        center: coord
    });
    var marker = new google.maps.Marker({
        position: coord,
        map: map
    });
}
Mapa();