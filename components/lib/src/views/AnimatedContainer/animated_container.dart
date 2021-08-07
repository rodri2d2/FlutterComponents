//Flutter imports
import 'package:flutter/material.dart';
import 'dart:math';

//Self imports
import 'package:components/src/utils/util+iconToString.dart';

class AnimatingContainer extends StatefulWidget {
  const AnimatingContainer({Key? key}) : super(key: key);

  @override
  _AnimatingContainerState createState() => _AnimatingContainerState();
}

class _AnimatingContainerState extends State<AnimatingContainer> {

  double _width  = 50.0;
  double _height = 50.0;
  Color  _color  = Colors.deepPurpleAccent;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animating a Container'),
      ),
      body: Center(
        heightFactor: 600,
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.loose,
              child:Container(
              margin: EdgeInsets.all(10),
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                  borderRadius: _borderRadius,
                  color: _color
              ),
            )
            ),
            Flexible(
              fit: FlexFit.loose,
                child: AnimatedContainer(
              curve: Curves.easeInBack,
              duration: Duration(milliseconds: 300),
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                  borderRadius: _borderRadius,
                  color: _color
              ),
            ))
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: getIcon('play', color: Colors.white),
        onPressed: _setSizeStyleProperties,
      ),
    );
  }


  void _setSizeStyleProperties(){

    final random = Random();

    setState(() {
      this._width =  random.nextInt(300).toDouble();
      this._height = random.nextInt(300).toDouble();
      this._color = Color.fromRGBO(
          random.nextInt(254),
          random.nextInt(254),
          random.nextInt(254),
          1);

      _borderRadius = BorderRadius.circular( random.nextInt(100).toDouble());
    });

  }

}
