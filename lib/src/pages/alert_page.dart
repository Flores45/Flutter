import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert Page"),
      ),
      body: Center(
        child:  ElevatedButton(
          child: Text("Boton Alerta"),

          
          onPressed: () =>  _MostrarAlerta(context),
        ),
          
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarms_outlined),
        onPressed: (){
          Navigator.pop(context);

        },
      ) ,
    );

  }
  void _MostrarAlerta(BuildContext context){

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: ((context) {
        return AlertDialog(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60) ),
          title: Text("Hola contenido"),
          content:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ESTE ES EL CONTENIDO DE LAS ALERTASS"),
              FlutterLogo(size: 100,)
            ],
            ),
            actions:  <Widget>  [
              TextButton(
                child: Text("cancelar") ,
                onPressed: () => Navigator.of(context).pop() ,
              ),
              TextButton(
                child: Text("ok") ,
                onPressed: (){
                  Navigator.of(context).pop();
                },
              )
            ],
        );
      })
       );
  }
}
