<!DOCTYPE html>
<html lang="es">
<head>
<title>Seguridad SENA</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/footer.css">
</head>


<body>

<!-- Menu de navegacion-->
<div class="navbar navbar-default navbar-fixed-top sticky-navigation" role="navigation">
	<div class="container">
		<div class="navbar-header">
			
			<a href="#" class="navbar-brand"><img src="../../img/LogoSena.png"  alt="LogoSena"></a>
		</div>
			<ul class="nav navbar-nav navbar-right main-navigation">
				<li><a href="#inicio" >Inicio</a></li>
				<li><a href="#brigadista" >Brigadistas</a></li>
				<li><a onclick="window.location.href='../../reglamento/index.php'" >Reglamento</a></li>
				<li><a onclick="window.location.href='../../tarjetaObservacion/index.php'" >Reportar</a></li>
				<li><a onclick="window.location.href='../../senaletica/index.php'" >Señaletica</a></li>
                <li><a onclick="window.location.href='../cerrarSesion.php'" ><span class="material-symbols-outlined">logout</span></a></li>
			</ul>
		</div>
	</div>
</div>

<!-- Inicio-->
<section id="overview" >
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-12">
				<img src="../../img/LogoSena.png"  class="img-fluid w-100" alt="sst">
			</div>
			<div class="wow fadeInUp col-md-4 col-sm-12" data-wow-delay="1s">
				<div class="overview-detail">
					<h2>SENASST</h2>
					<p>Nuestro sistema  de seguridad SENASST te permite consultar 
						y de manera eficiente elementos de seguridad y ubicación, garantizando un entorno seguro y protegido para nuestros aprendices, intructores y funcionarios.</p>
				</div>
			</div>
		</div>
	</div>
</section>










<!-- =========================
    Seccion noticias y eventos proximos
============================== -->
<section id="testimonial">
	<div class="container">
		<div class="row">
			<h1>Noticias y eventos</h1>
			<p>				Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius,
				facere cupiditate libero corporis placeat quis quas ad aliquid sint
				perferendis odio consequatur vel sed velit cumque iure ex nam veniam.</p>

		</div>
	</div>
</section>


<!-- footer -->
<?php
include("../../footer/footer.php");
?>
</body>
</html>