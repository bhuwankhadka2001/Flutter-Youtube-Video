import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  const MyDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[200],
          title: const Text("DataTable"),
        ),
        body: Center(
          child: DataTable(
              headingTextStyle: const TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              border: TableBorder.all(width: 2),
              columns: const [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Age')),
                DataColumn(label: Text('City')),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('Mark')),
                  DataCell(Text('24')),
                  DataCell(Text('New York'))
                ]),
                DataRow(cells: [
                  DataCell(Text('Devil')),
                  DataCell(Text('24')),
                  DataCell(Text('Los Angeles'))
                ]),
                DataRow(cells: [
                  DataCell(Text('Puby')),
                  DataCell(Text('30')),
                  DataCell(Text('Chicago'))
                ]),
              ]),
        ));
  }
}
