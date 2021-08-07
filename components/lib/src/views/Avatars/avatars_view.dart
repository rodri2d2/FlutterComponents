import 'package:flutter/material.dart';


class AvatarstView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatars View'),
        actions: [
          Container(
              child: CircleAvatar(
                child: Text('RC'),
              ),
            margin: EdgeInsets.only(right: 10),
          ),

          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/rodri2d2/rodri2d2/master/fun.jpeg'),
            ),
            margin: EdgeInsets.only(right: 10),
          )
        ],
      ),
      body: Center(
        child: Container(
          child: FadeInImage(
            placeholder: AssetImage('resourses/assets/loading.gif'),
            image: NetworkImage('https://raw.githubusercontent.com/rodri2d2/rodri2d2/master/fun2.jpeg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
        ),
      );
  }
}
