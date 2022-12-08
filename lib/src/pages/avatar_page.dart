import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions:  <Widget>  [
          Container(
            padding:  EdgeInsets.all(5.0 ),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://yt3.ggpht.com/ytc/AMLnZu_DRiYS6n49aEeTmFYsAlzix26g_4SoltvMmh_Fuw=s900-c-k-c0x00ffffff-no-rj'),
              radius:25 ,
            ),
          ),


          Container(
            margin: EdgeInsets.only(right:  20),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.indigo,
            ),
          ),
        ],

        ),
        body: Center(
          child: FadeInImage(
            image: NetworkImage('https://i.ytimg.com/vi/qAbK0pTV_dg/maxresdefault.jpg') ,
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 1000),
          ),
          ),
    );
  }
}
