
import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math';


class TableListViewFuture extends StatefulWidget {
  const TableListViewFuture({Key? key}) : super(key: key);

  @override
  _TableListViewFutureState createState() => _TableListViewFutureState();
}

class _TableListViewFutureState extends State<TableListViewFuture> {

  //
  List<int> _listIndex = [];
  bool _isLoading = false;

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
          fetchData();
      }
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: Stack(
        children: [
          _makeTableView(),
          _makeLoadingView()
        ],
      ),
    );
  }

  Widget _makeTableView(){

    return RefreshIndicator(
        onRefresh: _obtainFirstPageRequest,
        child: ListView.builder(
            controller: _scrollController,
            itemCount:  _listIndex.length,
            itemBuilder: (BuildContext context, int index) {
              final random = Random();
              final image = random.nextInt(300);

              return FadeInImage(
                placeholder: AssetImage('resourses/assets/loading.gif'),
                image: NetworkImage('https://picsum.photos/500/300/?image=$image'),
                fit: BoxFit.cover,
              );
            }
        ),
    );


  }


  Widget _makeLoadingView(){
      if(_isLoading){

        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator()
                ],
            ),
            SizedBox(height: 32)
          ],
        );


      }else{
        return Container();
      }
  }


  void _addToListIndex(){
    for(var i=0; i<10; i++){
      this._listIndex.add(i);
    }

    setState(() { });
  }

  ///This fuction simulates a request from HTTP
  Future<Null> fetchData() async {

    setState(() {
      _isLoading = true;
    });
    new Timer(Duration(seconds: 2), simulatedHTTPResponse);

  }


  Future<Null> _obtainFirstPageRequest() async{

    new Timer(
        Duration(seconds: 2), () {
            _listIndex.clear();
            _addToListIndex();

      });

    return Future.delayed(Duration(seconds: 2));

  }

  void simulatedHTTPResponse(){
    _isLoading = false;
    
    _scrollController.animateTo(
        _scrollController.position.pixels + 100,
        duration: Duration(seconds: 2),
        curve: Curves.fastOutSlowIn
    );
    
      _addToListIndex();
  }

}
