import 'package:flutter/material.dart';

void main() => runApp(MyCardApp());

class MyCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Brisa CardApp'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
          ], //fin Widget
        ), //Fin AppBar
        body: Container(
          child: ListView(
            children: <Widget>[
              _items('https://raw.githubusercontent.com/BrisaContreras/Mis_Imagenes/main/185057519_493718121823016_534388446227651723_n%20(1).jpg', 'Mi foto', 'Brisa Contreras'),
              SizedBox(height: 5.0), // Fin Item1
              _items('https://raw.githubusercontent.com/BrisaContreras/Mis_Imagenes/main/descarga.jpg', 'Disco duro', 'SSD de 256 gb'),
              SizedBox(height: 5.0), //Fin Ietm 2
              _items('https://raw.githubusercontent.com/BrisaContreras/Mis_Imagenes/main/91273.jpg', 'Memoria USB', '32 gb'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/BrisaContreras/Mis_Imagenes/main/laptop.jpg', 'Laptop', 'Memoria interna 2078'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/BrisaContreras/Mis_Imagenes/main/monitor.jpg', 'Monitor', 'Free sync 360 hz 1 ms'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/BrisaContreras/Mis_Imagenes/main/descarga%20(2).jpg', 'Camara', 'Con flash y lentes'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/BrisaContreras/Mis_Imagenes/main/descarga%20(3).jpg', 'Bocina', 'Amplitud de 130 dB'),
            ], //Fin Widget []
          ), //Fin ListView
        ), //Fin de Container
      ), //Fin Scaffold
    ); //Fin MaterialApp
  } //Fin widget

  Widget _items(String url, String producto, String subt) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.yellow[200],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text(subt, style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //Fin MyCardApp