import 'package:flutter/material.dart';
import 'package:flutter_app/loginScreen.dart';
import 'supportScreen.dart';
import 'listRoute.dart';
import 'leadMaster.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Main Screen"),
        ),
        body: mainUi(),
      ),
    );
  }
}
class mainUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Login Screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => loginScreen()),
            );
          },
        ),
        RaisedButton(
          child: Text('Support Screen'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => sendQuery()),
            );
 /*           Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => supportUi()),
            );*/
          },
        ),
        RaisedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => listView()),
            );
          },
          child: Text(
            "List"
          ),
        ),
        RaisedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => leadUi()),
            );
          },
          child: Text(
            "Lead Master"
          ),
        )

      ],
    ),
    );
  }
}



