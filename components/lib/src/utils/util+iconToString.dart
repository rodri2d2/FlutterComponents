import 'package:flutter/material.dart';


///This is an Icon Mapper. Every needed icon used on this app should be register before
final _icons = <String, IconData>{

  "add_alert"     : Icons.add_alert,
  "accessibility" : Icons.accessibility,
  "folder_open"   : Icons.folder_open

};

///Will return a Icon based on an already registered icon name.
Icon getIcon(String iconName){
  return Icon( _icons[iconName], color: Colors.blue );
}