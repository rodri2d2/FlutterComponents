

import 'package:flutter/material.dart';

class CheckAndSwitches extends StatefulWidget {
  const CheckAndSwitches({Key? key}) : super(key: key);

  @override
  _CheckAndSwitchesState createState() => _CheckAndSwitchesState();
}

class _CheckAndSwitchesState extends State<CheckAndSwitches> {

  bool isChecked = false;
  bool isOn      = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switches & Checks"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 25),
        child: Column(
          children: [
            _makeCheckBox(),
            _makeSwitch()
          ],
        ),
      ),
    );
  }

  Widget _makeCheckBox(){
    return CheckboxListTile(
        value: isChecked,
        title: Text('Click to check'),
        onChanged: (value){
         setState(() {
           this.isChecked = value!;
         });
        }
    );
  }

  Widget _makeSwitch(){
    return SwitchListTile(
        value: isOn,
        title: Text('Click to switch'),
        onChanged: (value){
          setState(() {
            this.isOn = value;
          });
        }
    );
  }

}
