import 'package:flutter/material.dart';
import 'package:widgets_flutter/src/pages/alert_page.dart';
import 'package:widgets_flutter/src/routes/rutas.dart';

//import 'package:widgets_flutter/src/pages/home_pages.dart';
//import 'package:widgets_flutter/src/pages/home_pages_p1.dart';
//import 'package:widgets_flutter/src/pages/home_pages_p2.dart';
//import 'package:widgets_flutter/src/pages/home_pages_p3.dart';
 
 void main() => runApp(MyApp());

 class MyApp extends StatelessWidget {


   @override
   Widget build(BuildContext context) {
     // ignore: prefer_const_constructors
     return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Componentes',
      // home:  HomePages(), 
      initialRoute:  '/',
      routes: getApplicationRoutes(),
      
      onGenerateRoute: (RouteSettings settings){
       return MaterialPageRoute(
        builder: (BuildContext context) => AlertPage()
       );

      },
     );
     
   }
 } 