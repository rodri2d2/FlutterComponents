import 'package:flutter/material.dart';


///This is an Icon Mapper. Every needed icon used on this app should be register before
final _icons = <String, IconData>{

  "add_alert"   : Icons.add_alert,
  "face"        : Icons.face,
  "folder_open" : Icons.folder_open,
  "photo"       : Icons.photo_album

};

///Will return a Icon based on an already registered icon name.
Icon getIcon(String iconName){
  return Icon( _icons[iconName], color: Colors.blue );
}