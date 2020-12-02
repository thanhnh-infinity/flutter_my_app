library home_page_2;

import 'package:flutter/material.dart';


class MyHomePage2 extends StatelessWidget {
  MyHomePage2({Key key, this.title}) : super(key:key);

  final String title;

  void _showDialog(BuildContext context) { 
      // flutter defined function 
      showDialog( 
          context: context, 
          builder: (BuildContext context) { 
            return AlertDialog(
               title: new Text("Message"), 
               content: new Text("Hello World"),   
               actions: <Widget>[
                  new FlatButton(
                     child: new Text("Close"), 
                     onPressed: () {   
                        Navigator.of(context).pop();  
                     }, 
                  ), 
               ],
            );
         },
      );
  }

  void _sendEmail(BuildContext context) { 
      // flutter defined function 
      showDialog( 
          context: context, 
          builder: (BuildContext context) { 
            return AlertDialog(
               title: new Text("Email"), 
               content: new Text("Sending email"),   
               actions: <Widget>[
                  new FlatButton(
                     child: new Text("Close"), 
                     onPressed: () {   
                        Navigator.of(context).pop();  
                     }, 
                  ), 
               ],
            );
         },
      );
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
                _showDialog(context);
              },
              child: Image.asset("assets/smile.png"),
            ),
            Text("Hello World"),
            GestureDetector(
              onTap: () {
                _sendEmail(context);
              },
              child: Icon(Icons.email),
            ),
              
            Mybutton(),
          ], 
        )
        
      )
    );
  }
}


class Mybutton extends StatelessWidget {
  Mybutton ({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
          left: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
          right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
          bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
        ),
      ),
      child : Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 2.0) ,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
            left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
            right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
            bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
          ),
          color: Colors.grey,
        ),
        child: const Text(
          'OK',textAlign: TextAlign.center, style: TextStyle(color: Colors.blue),
        )
      ),
      
    );
  }
}