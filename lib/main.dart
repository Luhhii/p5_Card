import 'package:flutter/material.dart';

void main() => runApp(MyCardApp());

class MyCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Luhi CardApp'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
          ], //fin Widget
        ), //Fin AppBar
        body: Container(
          child: ListView(
            children: <Widget>[
              _items('https://raw.githubusercontent.com/Luhhii/FotoFamiliar/main/disco%20duro.jpg', 'discoDuro', 'SSD de 256 GB en buen estado'),
              SizedBox(height: 5.0), // Fin Item1
              _items('https://raw.githubusercontent.com/Luhhii/mis_imagenes/main/ram.jpg', 'Memoria Ram', '16 GB RAM G skill'),
              SizedBox(height: 5.0), //Fin Ietm 2
              _items('https://raw.githubusercontent.com/Luhhii/mis_imagenes/main/Laptop.jpg', 'Laptop', 'memoria interna 2080 ti ge force now'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/Luhhii/mis_imagenes/main/monitor.jpg', 'Monitor', 'Free sync 360 hz 1 ms'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/Luhhii/mis_imagenes/main/camara.jpg', 'Camara', '336 mP soporte al agua'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/Luhhii/mis_imagenes/main/bocina.jpg', 'Bocina', 'amplitud de 130 dB tamano 1 cm cubico'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/Luhhii/mis_imagenes/main/image01.jpg', 'Mi imagen', 'Mi imagen'),
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
        color: Colors.red[200],
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
