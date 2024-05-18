import 'package:flutter/material.dart';
import 'package:inventory_manager_app/WarehouseA/consumables/add_edit_table_content_page.dart';

class NonconsumablesOutgoingInventoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Non-consumables'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Outgoing Inventory',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columnSpacing: 16.0,
                columns: const [
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Particulars')),
                  DataColumn(label: Text('Quantity')),
                  DataColumn(label: Text('State')),
                  DataColumn(label: Text('Description')),
                  DataColumn(label: Text('Delivered by')),
                  DataColumn(label: Text('Received by')),
                  DataColumn(label: Text('Destination Site')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('2024-04-27')),
                    DataCell(Text('Hammer')),
                    DataCell(Text('10')),
                    DataCell(Text('New')),
                    DataCell(Text('10 used hammers')),
                    DataCell(Text('John Kiarie')),
                    DataCell(Text('Kirogo Mugai')),
                    DataCell(Text('Kahawa West')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2024-04-28')),
                    DataCell(Text('Reflectors')),
                    DataCell(Text('15')),
                    DataCell(Text('used')),
                    DataCell(Text('15 new reflectors')),
                    DataCell(Text('Jane Wanjiku')),
                    DataCell(Text('Kirogo Mugai')),
                    DataCell(Text('Ruiru Kamakis')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2024-04-28')),
                    DataCell(Text('Tape Measures')),
                    DataCell(Text('15')),
                    DataCell(Text('Used')),
                    DataCell(Text('15 New tapes')),
                    DataCell(Text('Jane Wanjiku')),
                    DataCell(Text('Kirogo Mugai')),
                    DataCell(Text('Thika')),
                  ]),
                  // Add more rows as needed
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddEditTableContentPage()),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
