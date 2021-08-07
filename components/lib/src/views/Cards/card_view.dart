

import 'package:components/src/utils/util+iconToString.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card view'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _simpleCardExemple1(),
          SizedBox(),
          _simpleCardExemple2(),
          SizedBox(),
        ],
      ),
    );
  }


  //
  Widget _simpleCardExemple1(){
      return Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          children: [
            ListTile(
              leading: getIcon("photo"),
              title: Text('This is title text'),
              subtitle: Text('This is a simple exemple on how to create a card view'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text('Cancelar'),
                  onPressed: (){},
                ),
                TextButton(
                  child: Text('Ok'),
                  onPressed: (){},
                )
              ],
            )
          ],
        ),
      );
  }



  Widget _simpleCardExemple2(){
      final card =  Container(
        color: Colors.white,
        child: Column(
          children: [
            FadeInImage(
                placeholder: AssetImage('resourses/assets/loading.gif'),
                image: NetworkImage('https://estellanatura.com/wp-content/uploads/2020/04/parapente2.jpg'),
                fadeInDuration: Duration(milliseconds: 200),
                height: 300,
                fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Descubra el increible mundo del vuelo'),
            )
          ],
        ),
      );


      return Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: card,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(1, 1),
              spreadRadius: 0

            )
          ],
        ),
        padding: EdgeInsets.all(10),
      );
  }


}
