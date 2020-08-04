var latitud = 1;
var longitud = 1;

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.watchPosition(showPosition);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
    latitud = position.coords.latitude;
    longitud = position.coords.longitude;
    document.getElementById('longitud').value = "robert";
    console.log('coord', latitud, longitud);

    Mapa();
    console.log('hola', latitud, longitud);
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

function alertaposicion() {
    var msg = "Estas cerca de de tu McDonalds";
    alert(msg);
}  
