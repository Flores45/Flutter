import 'package:flutter/material.dart';
import 'package:widgets_flutter/src/pages/alert_page.dart';
import 'package:widgets_flutter/src/routes/rutas.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
    supportedLocales: [
    Locale('en', 'US'), // English, no country code
    Locale('es', 'ES'), // Spanish, no country code
  ],
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