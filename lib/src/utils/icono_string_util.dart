  import 'package:flutter/material.dart';

  final _icons = <String , IconData>{

        'add_alert'    : Icons.add_alert,
        'accessibility': Icons.accessibility,
        'folder_open'  : Icons.folder_open,
        'add_chart' :Icons.add_chart,
         'label_important_outline_rounded' :Icons.label_important_outline_rounded,

  };



  Icon getIcon( String nombreIcono){

    return Icon(_icons[nombreIcono], color: Colors.blue);
  }