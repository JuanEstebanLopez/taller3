<?php

include_once("database.php");

if(isset($_POST)){

	if($_POST["query"]<>""){

		$rutaImagenes=array("../taller3/data/papeleria.jpg","../taller3/data/bisuteria.jpg","../taller3/data/jugueteria.jpg");

		$mapa="http://maps.google.com/maps/api/staticmap?center=3,420555600000000000,-76,522222199999990000&zoom=13&size=700x400&sensor=false";
		$marcadores="";
		$tabla="";
		$cantidad=0;


		$resultado=mysqli_query($conexion,$_POST["query"]);

		$tabla.="<div class='container'> <table border=1 cellpadding=4 cellspacing=0>
		<tr>
			<div class='tituloTabla'>  
				Tabla con Los lugares mostrados del mapa
			</div>
		</tr>
		<tr>  
			<th>Nombre</th>  <th>Direccion</th>   <th>Tipo</th> <th>Icono</th> 
		</tr>";
		if($resultado<>""){
		while ($row = mysqli_fetch_array($resultado)) {
			$cantidad++;
			$tabla.= "<tr>
			<td class='col-lg-3 col-md-3 col-sm-4 col-xs-4'>".$row["nombre"]."</td><td class='col-lg-4 col-md-4 col-sm-3 col-xs-3'>".$row["direccion"]."</td><td class='col-lg-3 col-md-3 col-sm-3 col-xs-3'>".$row["tipoInfo"]."</td>";
			$tabla.= "<td class='col-lg-3 col-md-3 col-sm-2 col-xs-2'>
						<div class='ima'> 
							<figure>
								<img src='".$rutaImagenes[($row["tipo"]-1)]."'> 
							</figure>
						</div> 
					</td>
				</tr>";
			$marcadores.="&markers=".$row["x"].",".$row["y"];
		}
		}
		$tabla.= "</table> </div>";
		echo $mapa.$marcadores.";;;".$tabla.";;;".$cantidad;
	}

}

?>