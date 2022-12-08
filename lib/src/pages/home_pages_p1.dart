import 'package:flutter/material.dart';



class HomePagesPractica extends StatelessWidget {

  final  Items  = ['Opcion1', 'Opcion2','Opcion3','Opcion4','Opcion5'] ;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PRACTICANDO FLUTTER"),
      ),
      body: ListView(
        children: _Listas(),
      ),
      

    );
  }

  List <Widget> _Listas(){

    return Items.map((opciones){
      return Column(
        children:<Widget> [
          ListTile(
            title: Text(opciones),
            subtitle: Text("no se que poner"),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.account_tree),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();



  }
}