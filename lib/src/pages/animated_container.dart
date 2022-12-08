 import 'dart:math';

import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
 
  @override
  State<AnimationPage> createState() => _AnimationPageState();


}

class _AnimationPageState extends State<AnimationPage> {

  double _width = 70.0;
  double _heigth = 70.0;
  Color _color = Colors.black;
  BorderRadiusGeometry _borderradius = BorderRadius.circular(8.0);
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width, 
          height: _heigth,
          decoration: BoxDecoration(
            borderRadius: _borderradius,
            color: _color
          ) ,

          
         
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon (Icons.abc_rounded),
        onPressed: _cambiarForma,
      ),
      
    );
  }

  void _cambiarForma() {
    final random = Random();
    
    setState(() {
      _width = random.nextInt(300).toDouble();
    _heigth= random.nextInt(300).toDouble();
    _color= Color.fromRGBO(
      random.nextInt(255),
       random.nextInt(255),
       random.nextInt(255),
        1);

        _borderradius = BorderRadius.circular(random.nextInt(100).toDouble());
      
    });
    



  }
}