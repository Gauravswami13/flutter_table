import 'package:flutter/material.dart';
class DTE extends StatefulWidget {
  const DTE({Key? key}) : super(key: key);

  @override
  State<DTE> createState() => _DTEState();
}

class _DTEState extends State<DTE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter DataTable Example"),
      ),
      body: ListView(
        children: [
          Center(
            child: Text("People -Chart",
            style: TextStyle(
              fontSize: 25,fontWeight: FontWeight.bold
            ),),
          ),
          DataTable(columns: [
            DataColumn(label: Text("Id",
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ),
            DataColumn(label: Text("Name",
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ),
            DataColumn(label: Text("Profession",
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ),
          ],
              rows:[
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Stephen")),
                  DataCell(Text("Actor")),
                ]),
                DataRow(cells: [
                  DataCell(Text("5")),
                  DataCell(Text("Johan")),
                  DataCell(Text("Student")),
                ]),
                DataRow(cells: [
                  DataCell(Text("10")),
                  DataCell(Text("Harry")),
                  DataCell(Text("Leader")),
                ]),
                DataRow(cells: [
                  DataCell(Text("15")),
                  DataCell(Text("Peter")),
                  DataCell(Text("Scientist")),
                ]),
              ] )
        ],
      ),
    );
  }
}
