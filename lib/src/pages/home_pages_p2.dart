import 'package:flutter/material.dart';

class HomePages2 extends StatelessWidget {
  final Opciones = ['PRIMERO', 'SEGUNDO'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practica 2"),
      ),
      body: ListView(children: _listas()),
    );
  }

  List<Widget> _listas() {
    return Opciones.map((titulos) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(titulos),
            subtitle: Text("no se que poner"),
            leading: Icon(Icons.access_alarm_sharp),
          )
        ],
      );
    }).toList();
  }
}
