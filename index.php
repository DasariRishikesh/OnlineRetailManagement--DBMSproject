    <?php session_start();

      ?>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="UTF-8">
  <title> Affinity </title>
  <link rel="icon" href="../css/img/logo0.png" type="icon/png">
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/font/material-design-icons/Material-Design-Icons.woff'>
<link rel="stylesheet" href="../css/Styler.css">

</head>
<body>
<head>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>

  <ul id="slide-out" class="side-nav fixed z-depth-2">
    <li class="center no-padding">
      <div class="indigo darken-2 white-text" style="height: 180px;">
        <div class="row">
          <img style="margin-top: 5%;" width="100" height="100" src="../css/img/logo0.png" class="circle responsive-img" />

          <h1 style="margin-top: -13%;">
           Affinity
          </h1>
        </div>
      </div>
    </li>

    <li id="HOME"><a class="waves-effect" href="#!"><b>HOME</b></a></li>

    <ul class="collapsible" data-collapsible="accordion">
      <li>
        <div id="About"><a class="collapsible-header waves-effect" href="About.php"><b>About</b></a></div>
      </li>

    
      </ul>
      </ul>


  <header>
    <ul class="dropdown-content" id="user_dropdown">
      <li><a class="indigo-text" href="../user_mangement/custmers/login.php">Login</a></li>
      <li><a class="indigo-text" href="../user_mangement/merchant/login.php">Admin Login</a></li>
    </ul>

    <nav class="indigo" role="navigation">
      <div class="nav-wrapper">
        <a data-activates="slide-out" class="button-collapse show-on-" href="#!"><img style="margin-top: 17px; margin-left: 5px;" src="https://res.cloudinary.com/dacg0wegv/image/upload/t_media_lib_thumb/v1463989873/smaller-main-logo_3_bm40iv.gif" /></a>

        <ul class="right hide-on-med-and-down">
          <li>
            <a class='right dropdown-button' href='' data-activates='user_dropdown'><i class=' material-icons'>account_circle</i></a>
          </li>
        </ul>

        <a href="#" data-activates="slide-out" class="button-collapse"><i class="mdi-navigation-menu"></i></a>
      </div>
    </nav>

    <nav>
      <div class="nav-wrapper indigo darken-2">
        <a style="margin-left: 20px;" class="breadcrumb" href="#!"></a>
        <a class="breadcrumb" href="../user_mangement/custmers/login.php">User SignIn</a>

        <div style="margin-right: 20px;" id="timestamp" class="right"></div>
      </div>
    </nav>
  </header>
  <main>
    <div class="center">
      <div class="col s6">
        <div style="padding: 35px;" align="center" class="card">
          <div class="row">
            <div class="center card-title">
              <b>Demo Stores</b>
            </div>
          </div>

          <div class="row">
            <a href="search\products_results.php">
                    <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                    <i class="indigo-text text-lighten-1 large material-icons">stores</i>
                    <span class="indigo-text text-lighten-1"><h5>Demo Store</h5></span>
                    </div>
                    </a>


            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>

            <a href="#!">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="indigo-text text-lighten-1 large material-icons">stores</i>
                <span class="indigo-text text-lighten-1"><h5>Unavailable</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>

  </div>
  </main>
  <footer class="indigo page-footer">
    <div class="container">
      <div class="row">
        <div class="col s12">
          <h5 class="white-text"> Credits</h5>
          <ul id='credits'>
            <li>
             This is owned by Affinty and is not duplicated or forged from any sources. Duplicating this content is illegal.<br>
	All your Products at one Place.<br>Custamize Your inventory with Affinity.
            </li>
          </ul>
          <h5 class="white-text"> Contact Us</h5>
          <ul id='credits'>
            <li>
             project.affinity1@gmail.com<br>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
         <span>Made By Affinity</span>
      </div>
    </div>
  </footer>
</body>

</html>
<!-- partial -->
  <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js'></script><script  src=".\Affinity files\script.js"></script>

</body>
</html>
