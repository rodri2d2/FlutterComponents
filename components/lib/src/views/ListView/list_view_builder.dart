import 'package:flutter/material.dart';
import 'dart:math';


class TableListView extends StatefulWidget {
  const TableListView({Key? key}) : super(key: key);

  @override
  _TableListViewState createState() => _TableListViewState();
}

class _TableListViewState extends State<TableListView> {

  //
  List<int> _listIndex = [];

  //Delegate for scroll view
  ScrollController _scrollController = new ScrollController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _addToListIndex();

    //
    _scrollController.addListener(() {
        if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
          this._addToListIndex();
        }
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: _makeTableView(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  Widget _makeTableView(){
    return ListView.builder(
        controller: _scrollController,
        itemCount:  _listIndex.length,
        itemBuilder: (BuildContext context, int index) {
          final random = Random();
          final image = random.nextInt(100);

          return FadeInImage(
              placeholder: AssetImage('resourses/assets/loading.gif'),
              image: NetworkImage('https://picsum.photos/id/$image/380/300')
          );
        }
    );
  }


  void _addToListIndex(){
    for(var i=0; i<10; i++){
      this._listIndex.add(i);
    }

    setState(() { });
  }

}
