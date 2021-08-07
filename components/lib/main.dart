//Flutter imports
import 'package:flutter/material.dart';


//Import Routes
import 'package:components/src/routes/routes.dart';

//Self imports
import 'package:components/src/views/Home/home_view.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//Turn off annoying banner on right conn
      title: 'Material App',
      initialRoute: '/',
      routes: getAppRoutes(),
    );
  }
}
