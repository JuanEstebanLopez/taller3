<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title></title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/bootstrap-theme.min.css">
  <link rel="stylesheet" href="css/main.css">

  <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>
<body>
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->

            <div class="container">

            <div class="row">
              <div class="tituloTabla">
                MAPA
              </div>
            </div>

              <div id="cajaMapa"  class="row cajas">
                    <figure>
                                    <img id="mapa" src="http://maps.google.com/maps/api/staticmap?center=3,420555600000000000,-76,522222199999990000&zoom=13&size=700x400&sensor=false">
      </figure>

              </div>

              <div class="row cajas">  

                <div id="caja" class="col-lg-6 col-md-6 col-sm-8 col-xs-7">
                  <canvas id="cajaDestino" heigth="500" width="500">
                    Su navegador no soporta
                  </canvas>
                </div>

                <div id="cajaIcono" class="col-lg-6 col-md-6 col-sm-4 col-xs-4">
                <figure>
                  <img id="papeleria" src="data/papeleria.jpg" class="col-lg-4 col-md-6 col-sm-8 col-xs-12"></img>
                  <img id="bisuteria" src="data/bisuteria.jpg"class="col-lg-4 col-md-6 col-sm-8 col-xs-12"></img>
                  <img id="jugueteria" src="data/jugueteria.jpg"class="col-lg-4 col-md-6 col-sm-8 col-xs-12"></img>
                  </figure>
                  <button id="reiniciar">Reiniciar</button>
                </div>

              </div>
            </div>

            <div id="tabla">

            </div>

            <footer>
            
            </footer>

          </div> <!-- /container -->        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
          <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.1.min.js"><\/script>')</script>

          <script src="js/vendor/bootstrap.min.js"></script>

          <script src="js/main.js"></script>


        </body>
        </html>
