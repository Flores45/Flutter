import 'package:flutter/material.dart';



class HomePageTemp   extends StatelessWidget {
  
   
  final Opciones = ['uno','dos', 'tres','cuatro','cinco'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Componentes 2"),
      ),
      body: ListView(
        children: _crearItems()

      ),
    );
  
 
  }
  List <Widget> _crearItems(){

     return Opciones.map((items ){
          return Column(
            children:<Widget> [
              ListTile(
                title:  Text(items),
                subtitle: Text("Cualquier Cosa"),
                leading: Icon(Icons.ac_unit_outlined),
                trailing: Icon(Icons.accessibility_new_rounded),
                onTap: (){},

              ),
              Divider()
            ],
          );
      }).toList();
    
    
  }
}