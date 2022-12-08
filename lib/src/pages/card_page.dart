import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ventana De Card"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget> [
          _cartipo1(),
          SizedBox(height: 30.0,), 
          _cartipo2(),
           SizedBox(height: 30.0,), 
           _cartipo1(),
          SizedBox(height: 30.0,), 
          _cartipo2(),
           SizedBox(height: 30.0,), 
           _cartipo1(),
          SizedBox(height: 30.0,), 
          _cartipo2(),
           SizedBox(height: 30.0,), 
           _cartipo1(),
          SizedBox(height: 30.0,), 
          _cartipo2(),
           SizedBox(height: 30.0,), 
           _cartipo1(),
          SizedBox(height: 30.0,), 
          _cartipo2(),
           SizedBox(height: 30.0,), 
           _cartipo1(),
          SizedBox(height: 30.0,), 
          _cartipo2(),
           SizedBox(height: 30.0,), 
           _cartipo1(),
          SizedBox(height: 30.0,), 
          _cartipo2(),
           SizedBox(height: 30.0,), 
           _cartipo1(),
          SizedBox(height: 30.0,), 
          _cartipo2(),
           SizedBox(height: 30.0,), 
          
        ],
      ),
    );
  }
  
  Widget _cartipo1() {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20) ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.account_box, color: Colors.blue),
            title: Text("SOY EL TITULO"),
            subtitle: Text("NO SE QUE PONER EN ESTA PARTE DEL VIDEO Y NO SE QUE PONER Y TENER UNA IDEA DE LO QUIERO PROBAR"),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget> [
              TextButton(
                child: Text("Cancelar"),
                onPressed: (){},
              ),
              TextButton(
                child: Text("OK"),
                onPressed: (){},
              ),

            ],
          )
        ]),
    );
  }
  
 Widget _cartipo2() {

  final card = Container(
    
 child:  Column(
  children: <Widget>  [
    
    FadeInImage(
     image: NetworkImage('https://img.freepik.com/free-vector/best-scene-nature-landscape-mountain-river-forest-with-sunset-evening-warm-tone-illustration_1150-39403.jpg?w=2000'),
      placeholder:AssetImage('assets/jar-loading.gif'),
      fadeInDuration: Duration(milliseconds: 200),
      height: 300,
      fit: BoxFit.cover,
    ),
    //Image(
      //image: NetworkImage('https://img.freepik.com/free-vector/best-scene-nature-landscape-mountain-river-forest-with-sunset-evening-warm-tone-illustration_1150-39403.jpg?w=2000'),
    //),
    Container(
      padding: EdgeInsets.all(10),
      child: Text("no tengo idea de que poner")
      ),
  ],
 ),

  );
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30), 
      color: Colors.white,
      boxShadow: <BoxShadow>  [
        BoxShadow(
          color: Colors.black26 ,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, -10.0)
        )

      ],
      //color: Colors.red
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child:  card,
    ),
  );

 }




}
