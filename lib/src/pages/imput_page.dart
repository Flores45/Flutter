import 'package:flutter/material.dart';


class ImputPage extends StatefulWidget {


  @override
  State<ImputPage> createState() => _ImputPageState();
}

class _ImputPageState extends State<ImputPage> {

  String _Nombre;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina De Imput"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: <Widget> [
          _crearImput(),
          Divider(),
            _crearPersona(),
          
        ],
      ),
    );
  }
  
 Widget _crearImput() {
  return TextField(
    //autofocus: true,
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
      border:OutlineInputBorder(
        borderRadius: BorderRadius.circular(10)
      ) ,
      counter: Text("Letras ${_Nombre.length}"),
      hintText: "Nombre de la persona",
      labelText: "Nombre",
      helperText: "Ayuda",
      suffixIcon: Icon(Icons.accessibility),
      icon: Icon(Icons.account_circle)

    ),
    onChanged: (valor) {
      setState(() {
         _Nombre = valor;
      
      });
     
    },
  );

  }
  
 Widget _crearPersona() {

  return ListTile(
    title: Text('Nombre es: $_Nombre'),
  );
 }
}