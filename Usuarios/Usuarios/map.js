const KEY = "AIzaSyAsoDBCQAk0tPH0_aPGH7BdMLgLKMtXKhA";
const LAT = 50.1;
const LNG = -97.3;
let url = `https://maps.googleapis.com/maps/api/geocode/json?latlng=${LAT},${LNG}&key=${KEY}`;
fetch(url)
    .then(response => response.json())
    .then(data => {
        console.log(data);
    });