
import 'package:flutter/material.dart';

class SliderView extends StatefulWidget {
  const SliderView({Key? key}) : super(key: key);

  @override
  _SliderViewState createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {

  double _sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 25),
        child: Column(
          children:[
            _makeSliders(),
            Expanded(child:  _makeImage())

          ],
        ),
      ),
    );
  }


  Widget _makeSliders(){
    return Slider(
      min: 0,
      max: 500,
      value: _sliderValue,
      label: 'Slide Value',
      onChanged: (value){
          setState(() {
            this._sliderValue = value;
          });
      },
    );
  }

  Widget _makeImage(){
    return Image(
      image: NetworkImage('https://www.parapenteaventura.com/wp-content/uploads/2015/06/parapente-aventura-vuela-en-alicante-3-870x600.jpg'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

}
