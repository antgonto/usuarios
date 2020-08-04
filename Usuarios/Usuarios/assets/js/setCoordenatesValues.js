function showPosition(position) {
    latitud = position.coords.latitude;
    longitud = position.coords.longitude;
    document.getElementById('txtLatitud').value = latitud;
    document.getElementById('txtLongitud').value = longitud;
}

showPosition();