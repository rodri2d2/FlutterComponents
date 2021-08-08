import 'package:flutter/material.dart';


class InputView extends StatefulWidget {
  const InputView({Key? key}) : super(key: key);

  @override
  _InputViewState createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
    );
  }
}
