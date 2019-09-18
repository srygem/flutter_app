import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
class loginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: loginUi(),
    );
  }
}

class loginUi extends StatefulWidget {
  @override
  _loginUiState createState() => _loginUiState();
}

class _loginUiState extends State<loginUi> {
  TextEditingController tc1 = new TextEditingController();
  TextEditingController tc2 = new TextEditingController();
  bool _isNameEmpty = false;
  bool _isPassEmpty = false;
  Future<String> jsonRes;
  String res="no data";

  @override
  void dispose() {
    tc1.dispose();
    tc2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            controller: tc1,
            decoration: InputDecoration(
                hasFloatingPlaceholder: true,
                hintText: "Enter Name",
                errorText: _isNameEmpty ? "empty" : null
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            controller: tc2,
            decoration: InputDecoration(
                hintText: "Enter Password",
                errorText: _isPassEmpty ? "empty" : null
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              print("pressed");
              if (tc1.text.isNotEmpty && tc2.text.isNotEmpty) {
                signIn(tc1.text, tc2.text).then((s){
                  setState(() {
                    //res=s.runtimeType.toString();
                    try{
                      List<dynamic> l1=json.decode(s);
                      Map map3=l1[0];
                      String s1=map3["CustCode"];
                      res=s1;
                    }
                    catch(e){
                      Map map1=json.decode(s);
                      List<dynamic> l2=map1['FOODAPP'];
                      Map map2=l2[0];
                      String s2=map2['Message'];
                      res=s2;
                    }


                  });

                });
              }
            },

            child: Text(
                "Submit"
            ),
          ),
        ),
        Text(
            res
        )

      ],
    ),
    );
  }
}
signIn(String name,String pass) async {
  Response response=await http.get("http://www.speshfood.com/FoodWellHandler.ashx?RequestType=CustomerSignIN&MobileNo="+name+"&Password="+pass);
  String s=response.body;
  String betterString=s.replaceAll ("\\","");
  String bestString=betterString.substring (1,betterString.length -1);
  return bestString;
}