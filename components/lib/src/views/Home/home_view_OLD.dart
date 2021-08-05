import 'package:flutter/material.dart';


/*
* This class was used as a training exemple
* */

class HomeViewOLD extends StatelessWidget {

  final options = ['Uno', 'Dos', 'Tres', 'Cuantro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: ListView(
        children: _makeTilesMap(),
      ),
    );
  }


  ///Create simple List Tiles using for loop
  List<Widget> _makeTiles(){

    List<Widget> tileList = [];

    for (String item in options){
      final tempWidget = ListTile(
          title: Text(item),
      );

      tileList..add(tempWidget)
              ..add(Divider());
    }

    return tileList;
  }

  ///Create a simple list using MAP funtion
  List<Widget> _makeTilesMap(){
    return options.map( (item)  {
        return Column(
          children: [
            ListTile(
              title: Text(item),
              subtitle: Text('List Subtitle'),
              leading: Icon( Icons.graphic_eq_outlined),
              trailing: Icon(Icons.chevron_right_outlined)
            ),
            Divider()
          ],
        );
      }).toList();
  }

}


