import 'package:flutter/material.dart';
import 'package:widgets_flutter/src/pages/animated_container.dart';



import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/card_page.dart';
import '../pages/home_page_f.dart';
import '../pages/imput_page.dart';


Map <String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{
        '/':(BuildContext context) => HomePages(),
         'alert':(BuildContext context) => AlertPage(),
          'avatar':(BuildContext context) => AvatarPage(),
           'card':(BuildContext context) => CardPage(),
            'animated':(BuildContext context) => AnimationPage(),
            'imput':(BuildContext context) => ImputPage(),

      };

}


