import javax.swing.JOptionPane;

String infoMarcador="&markers=";
String infoSQL="";
String marcadores="";
ArrayList<String> nombres;
ArrayList<String> direcciones;
void setup() {
  // datos de nombre y de dirección generados en: http://www.generatedata.com/
  nombres=new ArrayList<String>();
  direcciones=new ArrayList<String>();
  cargarNombresYDirecciones();


  String url="http://maps.google.com/maps/api/staticmap?center=3,420555600000000000,-76,522222199999990000&zoom=13&size=700x400&sensor=false";

  int n=1+Integer.parseInt(JOptionPane.showInputDialog("Ingrese La cantidad de marcadores"));

  String []guardar=new String[n];

  for (int i=1; i<n; i++) {
    float x=random(3.385, 3.450);
    float y=random(-76.57, -76.48);
    int t=(int)random(1, 4);
    String[] nd=getNombreDireccion();
    guardar[i]=agregar(nd[0],nd[1],x, y, t, i==n-1);
    agregarMarcador(x, y);
  }
  
  guardar[0]=url+marcadores;
  saveStrings("info.txt", guardar);
  println("acabé =)");
}

void draw() {
}

String[] getNombreDireccion() {

  if (nombres.size()<=0 || direcciones.size()<=0) {
    cargarNombresYDirecciones();
  }
  
  String[] res=new String[2];
  int nom=(int)random(nombres.size());
  res[0]=nombres.get(nom);
  nombres.remove(nom);
  int dir=(int)random(direcciones.size());
  res[1]=direcciones.get(dir);
  direcciones.remove(dir);
  return res;
}

void cargarNombresYDirecciones() {
  String lines[] = loadStrings("infoprueba.txt");
  for (int i=2; i<lines.length; i+=2) {
    nombres.add(lines[i]);
    direcciones.add(lines[i+1]);
  }
}

void agregarMarcador(float x, float y) {
  marcadores+=infoMarcador+x+","+y;
}

String agregar(String nombre,String direccion,float x, float y, int tipo, boolean ultimo) {
  String t="Papelería";
  if (tipo==2) {
    t="Bisutería";
  } else if (tipo==3) {
    t="Juguetería";
  }
  String res="INSERT INTO `mapa`(`nombre`, `direccion`, `x`, `y`, `tipo`, `tipoInfo`) VALUES ('"+nombre+"','"+direccion+"',"+x+","+y+","+tipo+",'"+t+"')"+((ultimo)?"":";");
  return res;
} 

