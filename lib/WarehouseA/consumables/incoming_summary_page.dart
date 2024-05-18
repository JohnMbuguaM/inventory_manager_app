import 'package:flutter/material.dart';

class IncomingSummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary For Incoming Inventory'),
      ),
      body: Center(
        child: DataTable(
          columns: [
            DataColumn(label: Text('Particulars')),
            DataColumn(label: Text('Total Quantity')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('Item 1')),
              DataCell(Text('20')),
            ]),
            //Add more raws as needed
          ],
        ),
      ),
    );
  }
}
