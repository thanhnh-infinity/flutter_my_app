library home_page_2;

import 'package:flutter/material.dart';


class MyHomePage2 extends StatelessWidget {
  MyHomePage2({Key key, this.title}) : super(key:key);

  final String title;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:  Text(this.title),),
      //body: Center(child : Text('Hello World',)),
      body: Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/smile.png"),
            Text("Hello World"),
            Icon(Icons.email)
          ], 
        )
      )
    );
  }
}