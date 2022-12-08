import 'package:flutter/material.dart';



class HomePage4 extends StatelessWidget {
  final objetos = ['Opcion 1', 'Opcion2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Pages 4"),
      ),
      body: ListView(
        children: _contenido_lista()
      ),
    );
  }

  List <Widget> _contenido_lista(){

    return objetos.map((listas){
      return Column(
        children:<Widget> [
          ListTile(
            title: Text(listas),
            subtitle: Text("no  se que poner"),
            leading: Icon(Icons.access_alarms_rounded),
            trailing: Icon(Icons.account_balance),
            onTap:() {} ,

      
          )
        ],

      );
    }).toList();
  }
}