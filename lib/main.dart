

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_table/flutter_data_table.dart';

void main()=>runApp(MaterialApp(home: MyApp(),));
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Table Example"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(120.0),
                border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2
                ),
                children: [
                  TableRow(
                    children: [
                      Column(children: [Text("Website",style: TextStyle(fontSize: 20.0))]),
                      Column(children: [Text("Tutorial",style: TextStyle(fontSize: 20.0))]),
                      Column(children: [Text("Review",style: TextStyle(fontSize: 20.0))]),
                    ]),
                  TableRow(
                    children: [
                      Column(children: [Text("Javatpoint")],),
                      Column(children: [Text("Flutter")],),
                      Column(children: [Text("5*")],),
                    ]),
                  TableRow(
                      children: [
                        Column(children: [Text("Javatpoint")],),
                        Column(children: [Text("MySQL")],),
                        Column(children: [Text("5*")],),
                      ]),
                  TableRow(
                      children: [
                        Column(children: [Text("Javatpoint")],),
                        Column(children: [Text("ReactJS")],),
                        Column(children: [Text("5*")],),
                      ]),
                ],
              ),
            ),
        RaisedButton(
          child: Text("Click here to next Page",style: TextStyle(fontSize: 20),),
          color: Colors.red,
          textColor: Colors.yellow,
          padding: EdgeInsets.all(8.0),
          splashColor: Colors.grey,
          onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>DTE()));
          },
        )
          ],
        ),
      ),
    );
  }
}
