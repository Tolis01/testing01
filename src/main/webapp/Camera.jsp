<%@page import="com.mycompany.Farmerama.savePhoto"%>
<%@page import="com.mycompany.Farmerama.PhotoAlbum"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>

    <head>
        <title>Snap</title>   
        <link rel="stylesheet" type = "text/css" href="cssStyles/CameraPagestyle.css">

    </head>

    <body>

        <script src="javaScripts/cameraScript.js"></script> 
        <center>
            <video id="video" class="myVideo" width="320" height="240" autoplay=""></video>
            <br>
            <p>
                <button id="snap" class="snapButton snapButton-primary snapButton-primary:hover">Snap Photo</button>
                <img src="images/camera1.png" height="35" width="35"/>
            </p> 
            <br> 
            <canvas id="canvas" class="myCanvas" width="320" height="240"></canvas>
            <br>
            <p>
                <a id="download" onClick="downloadCanvas(this, 'canvas', 'Snap.png')" class="upButton upButton-primary upButtonH-primary">Download Photo</a> 
                <a id="upload" onClick="uploadCanvas('canvas')" class="upButton upButton-primary upButtonH-primary" >Upload to Album</a>
                <img src="images/upload1.png" height="35" width="35"/>
            </p>
        </center> 
        
        <!--<form method="POST" action="myservlet">
            <input type="text" id="skata" name="name" >
            <input type="submit" value="button" name="btn" />
        </form>   --> 
        
        <a  id="skata" name="name" ></a>
         
        <script>
            function downloadCanvas(link, canvas, filename) {
                link.href = document.getElementById(canvas).toDataURL();
                link.download = filename;

            }
            document.getElementById('download').addEventListener('click', function () {
                downloadCanvas(this, 'canvas', 'Snap.png');
            }, false);

            function uploadCanvas(canvas) {

                var x = document.getElementById(canvas).toDataURL().toString();
                document.getElementById("skata").innerHTML = x;
           <%
                    //String str = request.getParameter("name").toString();
                    
                    //PhotoAlbum pa = new PhotoAlbum();
                    //pa.putInDb(request.getParameter("name"));
               
               savePhoto sp = new savePhoto();
               sp.setStr(request.getParameter("name"));
               
               
            %>
                    
            }

        </script>
          
           
         <%="||||||||||||||||||||" %>

        <script src="javaScripts/dateTime.js"></script> 
    </body>

</html>
