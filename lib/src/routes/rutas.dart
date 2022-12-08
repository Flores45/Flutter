import 'package:flutter/material.dart';



import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/card_page.dart';
import '../pages/home_page_f.dart';


Map <String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{
        '/':(BuildContext context) => HomePages(),
         'alert':(BuildContext context) => AlertPage(),
          'avatar':(BuildContext context) => AvatarPage(),
           'card':(BuildContext context) => CardPage(),
      };

}


