<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mapa.aspx.cs" Inherits="Usuarios.Mapa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script>
        var id;
        function currentPosition() {
            if (navigator.geolocation) {
                id = navigator.geolocation.watchPosition(positionCallback)
            } else {
                alert('Your browser does not support HTML5 Geolocation API')
            }
        }

        function positionCallback(position) {
            toggleWatchBtn.innerHTML = "Stop Watching";

            if (prevLat != position.coords.latitude || prevLong != position.coords.lonngitude) {
                var prevLat = position.coords.latitude;
                var prevLong = position.coords.longitude;

                var positionInfo = "Current position = (Latitude : " +
                    position.coords.latitude + ", Logitude :" +
                    position.coords.longitude + ")";

                document.getElementById("result").innerHTML = positionInfo;
            }
        }

        function startWatchPosition() {
            var result = document.getElementById("result");
            var toggleWatchBtn = document.getElementById("toggleWatchBtn");
            toggleWatchBtn.onclick = function () {
                if (id) {
                    toggleWatchBtn.innerHTML = "Start Watching";
                    navigator.geolocation.clearWatch(id);
                    id = false;
                } else {
                    toggleWatchBtn.innerHTML = "Searching Geolocation...";
                    currentPosition();
                }
            }
        }
        window.onload = startWatchPosition;
    </script>
</head>
<body>

    <div>
        <button type="button" id="toggleWatchBtn">Start watching</button>
        <div id="result">resultado</div>
    </div>

    <form id="form1" runat="server">
        <div>
            <iframe src="https://www.google.com/maps/embed/v1/view
                ?key=YOUR_API_KEY
                &center=-33.8569,151.2152
                &zoom=18
                &maptype=satellite" 
                width="600" height="450" frameborder="0" style="border:0"></iframe>
        </div>
    </form>
    
</body>
</html>
