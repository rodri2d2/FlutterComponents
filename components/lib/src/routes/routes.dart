

import 'package:flutter/material.dart';

//Views
import 'package:components/src/views/Alert/alert_view.dart';
import 'package:components/src/views/Avatars/avatars_view.dart';
import 'package:components/src/views/Home/home_view.dart';
import 'package:components/src/views/Cards/card_view.dart';
import 'package:components/src/views/AnimatedContainer/animated_container.dart';


///This function returs every route on this app
///Before use a route a correct View MUST be registered on options file
Map<String, WidgetBuilder> getAppRoutes(){

  return <String, WidgetBuilder>{
    '/' : (BuildContext context)          => HomeView(),
    'alert'     : (BuildContext context)  => AlertView(),
    'avatar'    : (BuildContext context)  => AvatarstView(),
    'card'      : (BuildContext context)  => CardView(),
    'animated'  : (BuildContext context)  => AnimatingContainer()
  };
}
