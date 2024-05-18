import 'package:flutter/material.dart';

class NonConsumablesSummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Non-Consumable Summary'),
      ),
      body: Center(
        child: DataTable(
          columns: [
            DataColumn(label: Text('Particulars')),
            DataColumn(label: Text('Total Quantity')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('Hammers')),
              DataCell(Text('50')),
            ]),
            DataRow(cells: [
              DataCell(Text('Reflectors')),
              DataCell(Text('200')),
            ]),
            DataRow(cells: [
              DataCell(Text('Helmets')),
              DataCell(Text('150')),
            ]),
            //Add more raws as needed
          ],
        ),
      ),
    );
  }
}
