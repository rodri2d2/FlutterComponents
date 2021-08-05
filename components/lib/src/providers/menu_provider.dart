import 'package:flutter/services.dart' show rootBundle; //--> to read local JSON
import 'dart:convert';


class _MenuProvider{

  List options = [];
  _MenuProvider(){}

  Future<List<dynamic>> load() async {
    final result =
        await rootBundle.loadString('resourses/data/menu_options.json');
    Map dataMap = json.decode(result);
    this.options = dataMap['routes'];
    return options;
  }
}



///Sort of singleton
final menuProvider = new _MenuProvider();
