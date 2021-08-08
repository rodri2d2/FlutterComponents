//Flutter imports
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
        Locale('pt', ''), // Potuguese
        Locale('fr', '')  //French
      ],
      title: 'Material App',
      initialRoute: '/',
      routes: getAppRoutes(),
    );
  }
}
