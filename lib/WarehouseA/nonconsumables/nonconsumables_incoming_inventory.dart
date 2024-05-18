import 'package:flutter/material.dart';
import 'package:inventory_manager_app/WarehouseA/consumables/add_edit_table_content_page.dart';

class NonconsumablesIncomingInventoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Non-Consumables '),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Non-consumables Incoming Inventory',
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
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('2024-04-27')),
                    DataCell(Text('Item 1')),
                    DataCell(Text('10')),
                    DataCell(Text('New')),
                    DataCell(Text('Description of item 1')),
                    DataCell(Text('John Doe')),
                    DataCell(Text('Kirogo Mugai')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2024-04-28')),
                    DataCell(Text('Item 2')),
                    DataCell(Text('15')),
                    DataCell(Text('Used')),
                    DataCell(Text('Description of item 2')),
                    DataCell(Text('Jane Smith')),
                    DataCell(Text('Kirogo Mugai')),
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
