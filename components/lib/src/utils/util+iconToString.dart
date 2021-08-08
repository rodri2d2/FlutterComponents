import 'package:flutter/material.dart';


///This is an Icon Mapper. Every needed icon used on this app should be register before
final _icons = <String, IconData>{

  "add_alert"   : Icons.add_alert,
  "face"        : Icons.face,
  "folder_open" : Icons.folder_open,
  "photo"       : Icons.photo_album,
  "container"   : Icons.takeout_dining_outlined,
  "play"        : Icons.play_arrow,
  "input"       : Icons.input,
  "account"     : Icons.account_circle,
  "accessibility" : Icons.accessibility,
  "at"            : Icons.alternate_email,
  "email"         : Icons.email,
  "lockOP"        : Icons.lock_open,
  "lock"          : Icons.lock,
  "calendar"       : Icons.calendar_today
};

///Will return a Icon based on an already registered icon name.
Icon getIcon(String iconName, { color = Colors.blue }){
  return Icon( _icons[iconName], color: color );
}