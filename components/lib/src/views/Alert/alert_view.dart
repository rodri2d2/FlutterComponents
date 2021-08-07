import 'package:flutter/material.dart';


class AlertView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert View'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shape: StadiumBorder()
          ),
          onPressed: (){
            _showAlert(context);
          },
        ),
      ),
    );
  }


  _showAlert(BuildContext context){
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
            return AlertDialog(
              title: Text('Aler Title'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Content of Alert Dialog'),
                  FlutterLogo(size: 100)
                ],
              ),
              actions: [
                TextButton(
                    child: Text('Cancelar'),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                ),
                
                TextButton(
                  child: Text('Ok'),
                  onPressed: (){
                    Navigator.of(context).pop();
                    },
                )
              ],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            );
        },
    );
  }



}
