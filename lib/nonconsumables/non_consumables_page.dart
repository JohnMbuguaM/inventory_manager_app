import 'package:flutter/material.dart';

class NonConsumablesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Non-Consumables'),
      ),
      body: ListView(padding: EdgeInsets.all(16.0), children: [
        Text(
          'Non-Consumables Inventory',
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
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('2024-04-27')),
              DataCell(Text('Item A')),
              DataCell(Text('5')),
              DataCell(Text('Description of item A')),
              DataCell(Text('John Doe')),
            ]),
            DataRow(cells: [
              DataCell(Text('2024-04-28')),
              DataCell(Text('Item B')),
              DataCell(Text('8')),
              DataCell(Text('Description of item B')),
              DataCell(Text('John Doe')),
            ]),
            //Add more rows as needed
          ],
        )
      ]),
    );
  }
}
