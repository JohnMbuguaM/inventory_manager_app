import 'package:flutter/material.dart';
import 'package:inventory_manager_app/consumables/consumables_detail_page.dart';
import 'package:inventory_manager_app/consumables/consumables_page.dart';
import 'package:inventory_manager_app/consumables/incoming_summary_page.dart';
import 'package:inventory_manager_app/consumables/outgoing_summary_page.dart';
import 'package:inventory_manager_app/nonconsumables/non_consumables_page.dart';

import 'package:inventory_manager_app/nonconsumables/non_consumables_summary_page.dart';
import 'package:inventory_manager_app/consumables/incoming_inventory.dart';
import 'package:inventory_manager_app/consumables/outgoing_inventory.dart';
import 'package:inventory_manager_app/consumables/consumables_summary_page.dart';

void main() {
  runApp(InventoryApp());
}

class InventoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invetory Managment App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/consumables': (context) => ConsumablesPage(),
        '/nonConsumables': (context) => NonConsumablesPage(),
        '/consumablesSummaryPage': (context) => ConsumablesSummaryPage(),
        '/nonConsumablesSummary': (context) => NonConsumablesSummaryPage(),
        '/consumablesDetailPage': (context) => ConsumablesDetailPage(),
        '/incomingInventory': (context) => IncomingInventoryPage(),
        '/outgoingInventory': (context) => OutgoingInventoryPage(),
        '/incomingSummary': (context) => IncomingSummaryPage(),
        '/outgoingSummary': (context) => OutgoingSummaryPage(),
      },
      home: InventoryHomePage(),
    );
  }
}

class InventoryHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventory Manager Warehouse A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/consumablesDetailPage');
                },
                child: Text('Consumables')),
            SizedBox(
              height: 20,
            ), // Add some space between buttons
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/nonConsumables');
                },
                child: Text('Non-Consumables')),
          ],
        ),
      ),
    );
  }
}
