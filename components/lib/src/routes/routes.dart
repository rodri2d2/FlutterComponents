//Flutter Imports
import 'package:flutter/material.dart';

//Views
import 'package:components/src/views/Alert/alert_view.dart';
import 'package:components/src/views/Avatars/avatars_view.dart';
import 'package:components/src/views/Home/home_view.dart';
import 'package:components/src/views/Cards/card_view.dart';
import 'package:components/src/views/AnimatedContainer/animated_container.dart';
import 'package:components/src/views/Input/input_view.dart';
import 'package:components/src/views/Slider/slider_view.dart';
import 'package:components/src/views/SwitchesCheboxes/switches_view.dart';
import 'package:components/src/views/ListView/list_view_builder.dart';
import 'package:components/src/views/ListViewFuture/list_view_with_future.dart';


///This function returs every route on this app
///Before use a route a correct View MUST be registered on options file
Map<String, WidgetBuilder> getAppRoutes(){

  return <String, WidgetBuilder>{
    '/' : (BuildContext context)          => HomeView(),
    'alert'     : (BuildContext context)  => AlertView(),
    'avatar'    : (BuildContext context)  => AvatarstView(),
    'card'      : (BuildContext context)  => CardView(),
    'animated'  : (BuildContext context)  => AnimatingContainer(),
    'inputs'    : (BuildContext context)  => InputView(),
    'slider'    : (BuildContext context)  => SliderView(),
    'switch'    : (BuildContext context)  => CheckAndSwitches(),
    'list'      : (BuildContext context)  => TableListView(),
    'listFuture': (BuildContext context)  => TableListViewFuture()
  };
}
