//Flutter imports
import 'package:flutter/material.dart';

//Self imports
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/util+iconToString.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {

    return FutureBuilder(
        future: menuProvider.load(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
          return ListView(
            children: _listItems(snapshot.data!),
          );
      },
    );
  }

  List<Widget> _listItems(List<dynamic> data) {

    final List<Widget> optionsTile =[];
    
    data.forEach((item) {
        final widget = ListTile(
          title: Text(item['text']),
          leading: getIcon(item['icon']),
          trailing: Icon(Icons.chevron_right, color: Colors.blue),
          onTap: (){}
        );
        
        optionsTile..add(widget)
                    ..add(Divider());
    });

    return optionsTile;

  }
}
