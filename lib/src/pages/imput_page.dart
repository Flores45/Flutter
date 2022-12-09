import 'package:flutter/material.dart';


class ImputPage extends StatefulWidget {


  @override
  State<ImputPage> createState() => _ImputPageState();
}

class _ImputPageState extends State<ImputPage> {

  String _Nombre ='';
  String _Email= '';
  String _Password='';


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
          _crearEmail(),
          Divider(),
            _crearPassword(),
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
      
      hintText: "Nombre de la persona",
      labelText: "Nombre",
      //helperText: "Ayuda",
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
    subtitle: Text('Correo es: $_Password'),
    
    
  );


 }


  Widget  _crearPassword() {

  return TextField(
   obscureText: true ,
    decoration: InputDecoration(
      border:OutlineInputBorder(
        borderRadius: BorderRadius.circular(10)
      ) ,
    
      hintText: "Ingrese Su Contraseña",
      labelText: "Password",
      //helperText: "Ayuda",
      suffixIcon: Icon(Icons.lock_open),
      icon: Icon(Icons.password)

    ),
    onChanged: (valor) {
      setState(() {
         _Password = valor;
      
      });
     
    },
  ); 

 }
  Widget _crearEmail() {
      return TextField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      border:OutlineInputBorder(
        borderRadius: BorderRadius.circular(10)
      ) ,
    
      hintText: "Ingrese Su Correo",
      labelText: "Correo",
      //helperText: "Ayuda",
      suffixIcon: Icon(Icons.alternate_email),
      icon: Icon(Icons.email)

    ),
    onChanged: (valor) {
      setState(() {
         _Email = valor;
      
      });
     
    },
  ); 
  }
  

  

 

 
}