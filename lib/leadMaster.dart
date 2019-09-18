import 'package:flutter/material.dart';
class leadUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lead Master"
        ),
      ),
      body: leadBodyUi(),
    );
  }
}
class leadBodyUi extends StatefulWidget {
  @override
  _leadBodyUiState createState() => _leadBodyUiState();
}

class _leadBodyUiState extends State<leadBodyUi> {
  String nameCity = "";
  var _currencies = ['JD','IndiaMart','Direct'];
  var _currentItemSelected = 'IndiaMart';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
       Column(
         children: <Widget>[
           Card(
             borderOnForeground: true,
               margin:EdgeInsets.all(3.0),
           child:Row(
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.all(15),
               child:Text(
                 "Lead From:"
               )),
               Padding(
                 padding: EdgeInsets.all(15),
               child:DropdownButton<String>(
                   items: _currencies.map((String dropDownStringItem) {
                     return DropdownMenuItem<String>(
                       value: dropDownStringItem,
                       child: Text(dropDownStringItem),
                     );
                   }).toList(),
                 onChanged: (String newValueSelected) {
                   // Your code to execute, when a menu item is selected from drop down
                   _onDropDownItemSelected(newValueSelected);
                 },
                 value: _currentItemSelected,
               )),
             ],
           )),
           Card(
               borderOnForeground: true,
               margin:EdgeInsets.all(3.0),
           child:Row(
             verticalDirection: VerticalDirection.up,
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.all(15),
                 child: Text(
                   "Lead Details:"
                 ),
               ),
               Padding(
                 padding: EdgeInsets.all(15),
                   child: Column(
                     children: <Widget>[
                       Container(
                           width: 100.0,
                           child: new TextField(
                             decoration: InputDecoration(
                               hintText: "House No."
                             ),
                           )
                       ),
                       Container(
                           width: 100.0,
                           child: new TextField(
                             decoration: InputDecoration(
                                 hintText: "City"
                             ),
                           )
                       ),
                       Container(
                           width: 100.0,
                           child: new TextField(
                             decoration: InputDecoration(
                                 hintText: "Town"
                             ),
                           )
                       ),
                       Container(
                           width: 100.0,
                           child: new TextField(
                             decoration: InputDecoration(
                                 hintText: "Pin Code"
                             ),
                           )
                       ),
                       Container(
                           width: 100.0,
                           child: new TextField(
                             decoration: InputDecoration(
                                 hintText: "Mobile Number"
                             ),
                           )
                       ),
                       Container(
                           width: 100.0,
                           child: new TextField(
                             decoration: InputDecoration(
                                 hintText: "Pin Email"
                             ),
                           )
                       ),
                     ],
                   ),

               )
             ],
           )),
           Card(
               borderOnForeground: true,
               margin:EdgeInsets.all(3.0),
            child:Row(
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.all(15),
               child:Text(
                 "Lead Date:"
               )),
               Padding(
                 padding: EdgeInsets.all(15),
                 child:Container(
                     width: 100.0,
                     child: new TextField(
                       decoration: InputDecoration(
                           hintText: "Lead Date"
                       ),
                     )
                 ),
               )
             ],
           )),
           Card(
               borderOnForeground: true,
               margin:EdgeInsets.all(3.0),
           child:Row(
             children: <Widget>[
               Padding(
                   padding: EdgeInsets.all(15),
                   child:Text(
                       "Lead Assign:"
                   )),
               Padding(
                   padding: EdgeInsets.all(15),
                   child:DropdownButton<String>(
                     items: _currencies.map((String dropDownStringItem) {
                       return DropdownMenuItem<String>(
                         value: dropDownStringItem,
                         child: Text(dropDownStringItem),
                       );
                     }).toList(),
                     onChanged: (String newValueSelected) {
                       // Your code to execute, when a menu item is selected from drop down
                       _onDropDownItemSelected(newValueSelected);
                     },
                     value: _currentItemSelected,
                   )),
               Padding(
                 padding: EdgeInsets.all(15),
                 child:   Container(
                     width: 100.0,
                     child: new TextField(
                       decoration: InputDecoration(
                           hintText: "Follow Date"
                       ),
                     )
                 ),
               )

             ],
           )),
           Card(
               borderOnForeground: true,
               margin:EdgeInsets.all(3.0),
               child:Row(
             children: <Widget>[
               Padding(
                   padding: EdgeInsets.all(15),
                   child:Text(
                       "Lead Status"
                   )),
               Padding(
                   padding: EdgeInsets.all(15),
                   child:DropdownButton<String>(
                     items: _currencies.map((String dropDownStringItem) {
                       return DropdownMenuItem<String>(
                         value: dropDownStringItem,
                         child: Text(dropDownStringItem),
                       );
                     }).toList(),
                     onChanged: (String newValueSelected) {
                       // Your code to execute, when a menu item is selected from drop down
                       _onDropDownItemSelected(newValueSelected);
                     },
                     value: _currentItemSelected,
                   )),

             ],
           )),
           Card(
               borderOnForeground: true,
               margin:EdgeInsets.all(3.0),
           child:Row(
             children: <Widget>[

               Padding(
                 padding: EdgeInsets.all(15),
                     child: Text(
                      "Remarks"
                     ),
               ),
               Padding(
                 padding: EdgeInsets.all(15),
                 child:   Container(
                     width: 200.0,
                     child: new TextField(
                       decoration: InputDecoration(
                         hasFloatingPlaceholder: true,
                           hintText: "Remarks"
                       ),
                     )
                 ),
               ),
             ],
           )),
           Card(
             borderOnForeground: true,
               margin:EdgeInsets.all(3.0),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.all(15),
                 child: RaisedButton(
                   child: Text(
                     "Submit"
                   ),
                   color: Colors.blue
                   ,
                   onPressed: (){
                     },
                 ),
               ),
               Padding(
                 padding: EdgeInsets.all(15),
                 child: RaisedButton(
                   child: Text(
                       "Go Back"
                   ),
                   color: Colors.deepOrange
                   ,
                   onPressed: (){
                   },
                 ),
               )

             ],
           )),
         ],
       )

      ],
    );
  }
  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}




