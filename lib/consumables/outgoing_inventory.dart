import 'package:flutter/material.dart';

class OutgoingInventoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Outgoing Inventory'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Outgoing Inventory',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          DataTable(
            columns: [
              DataColumn(label: Text('Date')),
              DataColumn(label: Text('Particulars')),
              DataColumn(label: Text('Quantity')),
              DataColumn(label: Text('Description')),
              DataColumn(label: Text('Delivered by')),
              DataColumn(label: Text('Received by')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('2024-04-27')),
                DataCell(Text('Item 1')),
                DataCell(Text('10')),
                DataCell(Text('Description of item 1')),
                DataCell(Text('John Doe')),
                DataCell(Text('Kirogo Mugai')),
              ]),
              DataRow(cells: [
                DataCell(Text('2024-04-28')),
                DataCell(Text('Item 2')),
                DataCell(Text('15')),
                DataCell(Text('Description of item 2')),
                DataCell(Text('Jane Smith')),
                DataCell(Text('Kirogo Mugai')),
              ]),
              // Add more rows as needed
            ],
          ),
        ],
      ),
    );
  }
}
