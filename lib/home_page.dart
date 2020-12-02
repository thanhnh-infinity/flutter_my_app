library home_page;

import 'package:flutter/material.dart';

import 'example_page_1.dart' as example_1;
import 'example_page_2.dart' as example_2;
import 'product_list.dart' as products;


class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key:key);

  final String title;

  void _gotoExample(BuildContext context, int example) { 
      // flutter defined function 
      if (example == 1){
        print("Go to example 1");
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => example_1.MyHomePage(title: 'Example 1 - Counter++')),
        );
      } else if (example == 2){
        print("Go to example 2");
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => example_2.MyHomePage2(title: 'Example 2 - Components and Dialogsß')),
        );
      } else if (example == 3){
        print("Go to example 2");
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => products.MyProductList(title: 'Product List')),
        );
      }
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:  Text(this.title),),
      //body: Center(child : Text('Hello World',)),
      body: Center(
        /*
        child: GestureDetector( 
            onTap: () { 
              _showDialog(context); 
            }, 
            child: Text( 'Hello World', ) 
        ),
        */
        
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                _gotoExample(context,1);
              },
              child: Text(
                "Go To Example 1",
                 style: Theme.of(context).textTheme.headline4
              ),
            ),
            GestureDetector(
              onTap: () {
                _gotoExample(context,2);
              },
              child: Text(
                "Go To Example 2",
                 style: Theme.of(context).textTheme.headline4
              ),
            ),

            GestureDetector(
              onTap: () {
                //_gotoExample(context,2);
              },
              child: ElevatedButton(
                onPressed: () {
                  _gotoExample(context,3);
                },
                child: Text('Go To Product List'),
              ),
            ),
            
          ], 
        )
        
      )
    );
  }
}