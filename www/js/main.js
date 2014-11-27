// TALLER 3

function iniciar(){

	var imagenes=document.querySelectorAll('#cajaIcono>figure>img');
	activos = [];
	// imageness=[];
	document.getElementById('reiniciar').addEventListener('click',reiniciar,false);

	for (var i = 0; i < imagenes.length; i++) {
		imagenes[i].addEventListener("dragstart",arrastrar,false);
		imagenes[i].addEventListener('dragend',finalizar,false);
	};

	soltar=document.getElementById('cajaDestino');

	lienzo=soltar.getContext("2d");

	soltar.addEventListener('dragenter',function(e){e.preventDefault();},false);
	soltar.addEventListener('dragover',function(e){e.preventDefault();},false);
	soltar.addEventListener('drop',soltarr,false);

	pintar();
}

function finalizar(e){
	elemento=e.target;
	elemento.style.visibility=false;
}
function arrastrar(e){
	elemento= e.target;
	var id= elemento.getAttribute('id');
	e.dataTransfer.setData('text',id);

}
function soltarr(e){
	e.preventDefault();
	var id = e.dataTransfer.getData('text');
	activos[activos.length]=id;

	
	
	var ele=document.getElementById(id);

	// var ima = new Image();

	// ima.src = 'data/'+id+'.jpg';
// imageness[imagenes.length]=new Image();

var posX=e.pageX-soltar.offsetLeft;
var posY=e.pageY-soltar.offsetTop;
lienzo.drawImage(ele,posX,posY);
$("#"+id).replaceWith("");
pintar();
}

function reiniciar(){
	activos = [];
	// imageness=[];

	$("#cajaIcono").replaceWith('<div id="cajaIcono" class="col-lg-6 col-md-6 col-sm-4 col-xs-4"><figure><img id="papeleria" src="data/papeleria.jpg" class="col-lg-4 col-md-6 col-sm-8 col-xs-12"></img><img id="bisuteria" src="data/bisuteria.jpg" class="col-lg-4 col-md-6 col-sm-8 col-xs-12"></img><img id="jugueteria" src="data/jugueteria.jpg" class="col-lg-4 col-md-6 col-sm-8 col-xs-12"></img></figure><button id="reiniciar">Reiniciar</button></div>');	


					$("#tabla").replaceWith('<div id="tabla"> </div>');
				document.getElementById('mapa').setAttribute("src","http://maps.google.com/maps/api/staticmap?center=3,420555600000000000,-76,522222199999990000&zoom=13&size=700x400&sensor=false");
		
			

	iniciar();
}


function pintar(){
	pedirDatosMapa();
	// ancho de la ventana
	var w= parseInt((""+$('#caja').css("width")).split("p")[0]); 
	// cambia las dimenciones del canvas
	document.getElementById("cajaDestino").width=w;
	document.getElementById("cajaDestino").height=w;

	// número de elementos arrastrados al canvas
	var num=activos.length;
	// var num=10;

	// crea un círculo dividido en la cantidad de objetos arrastrados al canvas 
	lienzo.lineWidth=10;
	lienzo.beginPath();
	// ángulo de inicio de la sección del círculo
	var  j=0;
	// angulo final de la sección del círculo
	var k=0;
	// for para crear el círculo
	for(var l=1;l<=num;l++){
		k=l*2*Math.PI/num;
		lienzo.arc(w/2,w/2,w/2-30,j,k);
		if(num>1){
			lienzo.lineTo(w/2,w/2);
		}
		j=k;
	}
	lienzo.fill();

	if(num>1){

		// borde del color del fondo para dividir el círculo
		lienzo.strokeStyle = "#FFFFFF";
		lienzo.stroke();
		// recorre la cantidad de objetos para saber su posición en el círculo
		for (var i = 0; i < num; i++) {
			//  calcula el ángulo con el que se encentra el objeto con respecto al centro
			k=i*2*Math.PI/(num)+Math.PI/(num);
			//  calcula las posiciones en x y y que le corresponden al ángulo 
			var x=(w/2)+(w/5)*Math.cos(k);
			var y=(w/2)+(w/5)*Math.sin(k);
			var r=w/(num*3);
			// crea la imagen correspondiente al elemento actual del for
			var ima=new Image(r*2,r*2);
			ima.src='data/'+activos[i]+'.jpg';
			// pinta la imagen en el lienzo
			lienzo.drawImage(ima,x-r,y-r,r*2,r*2);
		};

		//  PRUEBA PARA LA POSICIÓN DE LOS ICONOS
		// lienzo.strokeStyle = "#FF0000";
		// lienzo.moveTo(x+r,y)
		// 	lienzo.arc(x,y,r,0,2*Math.PI);
		// lienzo.stroke();

	}else if(num==1){
		var r=w/3;
		// crea la imagen correspondiente al elemento actual del for
		var ima=new Image(r*2,r*2);
		ima.src='data/'+activos[0]+'.jpg';
		// pinta la imagen en el lienzo
		lienzo.drawImage(ima,(w/2)-r,(w/2)-r,r*2,r*2);

		//  PRUEBA PARA LA POSICIÓN DEL ICONO
		// lienzo.strokeStyle = "#FF0000";
		// lienzo.moveTo((w/2)+r,(w/2))
		// lienzo.arc((w/2),(w/2),r,0,2*Math.PI);
		// lienzo.stroke();
	}
}

function pedirDatosMapa(){
	if(activos.length>0){

	var t=1;
	if(activos[0]=="bisuteria"){
		t=2;
	}else if(activos[0]=="jugueteria"){
		t=2;
	}
	var query= "SELECT * from taller3.mapa WHERE  tipo="+t;
	for(var i=1;i<activos.length;i++){

			t=1;
		if(activos[i]=="bisuteria"){
			t=2;
		}else if(activos[i]=="jugueteria"){
			t=3;
		}

		query=query+" OR tipo="+t;
	}
	// alert(query);

	$.ajax({
			type: "POST",
			// toca cambiar la url por la ubicació donde se encuentre el archivo php
			url: "includes/pedirDatosmapa.php",
			data: {query: query}
		}).done(function(){
			console.log("Solicitud enviada al API");
		}).success(function(result){
			var re=result.split(";;;");

				if(re[2]=="0"){
					$("#tabla").replaceWith('<div id="tabla"> </div>');
				}else{
				$("#tabla").replaceWith('<div id="tabla"> '+re[1]+'</div>');
				}	
				document.getElementById('mapa').setAttribute("src",re[0]);
				// alert(re[0]);
				// alert(re[1]);
			console.log("Resultado: "+result);
		}).error(function(error){
			console.log("Error: "+error);
		});


}



}


window.addEventListener('load',iniciar,false);