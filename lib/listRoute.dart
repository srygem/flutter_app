import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
class listView extends StatefulWidget {
  @override
  _listViewState createState() => _listViewState();
}

class _listViewState extends State<listView> {
  List<String> l5=new List();
  int itemCount=2;
  bool isListNull=true;


  @override
  void initState() {
    if(l5.isEmpty){
      getList().then((s1){
        Map map1=json.decode(s1);
        List<dynamic> l2=map1["FOODAPP"];
        setState(() {
          for(int f=0;f<l2.length;f++){
            l5.add(l2[f]['Area']);
          }
          isListNull=false;
        });
      });
    }
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List View"
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, position) {
            return GestureDetector(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child:  Text(isListNull?"null":l5[position],
                    style: TextStyle(fontSize: 22.0),
                  ),
                ),
              ),
                  onTap:(){
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text(position.toString())));
            }
            );
          },
          itemCount: isListNull?2:l5.length,
        ),
      ),
    );
  }
}

Future getList() async {
  Response response=await http.get("http://www.speshfood.com/FoodWellHandler.ashx?RequestType=AutoSuggestSubLocality&SearchText=");
  String s4=response.body;
  return s4;
}

