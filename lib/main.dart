import 'package:flutter/material.dart';
import 'package:inventory_manager_app/WarehouseA/Login/login_screen.dart';
import 'package:inventory_manager_app/WarehouseA/Login/registration_screen.dart';
import 'package:inventory_manager_app/WarehouseA/consumables/consumables_detail_page.dart';
import 'package:inventory_manager_app/WarehouseA/consumables/consumables_page.dart';
import 'package:inventory_manager_app/WarehouseA/consumables/incoming_summary_page.dart';
import 'package:inventory_manager_app/WarehouseA/consumables/outgoing_summary_page.dart';
import 'package:inventory_manager_app/WarehouseA/nonconsumables/Summary/nonconsumables_summary_page.dart';
import 'package:inventory_manager_app/WarehouseA/nonconsumables/non_consumables_detail_page.dart';
import 'package:inventory_manager_app/WarehouseA/consumables/incoming_inventory.dart';
import 'package:inventory_manager_app/WarehouseA/consumables/outgoing_inventory.dart';
import 'package:inventory_manager_app/WarehouseA/consumables/consumables_summary_page.dart';
import 'package:inventory_manager_app/WarehouseA/nonconsumables/nonconsumables_incoming_inventory.dart';
import 'package:inventory_manager_app/WarehouseA/nonconsumables/nonconsumable_outgoing_inventory.dart';
import 'package:inventory_manager_app/WarehouseA/nonconsumables/Summary/non_consumables_summary_page.dart';
import 'package:inventory_manager_app/WarehouseA/nonconsumables/Summary/nonconsumables_outgoing_summary_page.dart';
import 'package:inventory_manager_app/WarehouseA/nonconsumables/Summary/nonconsumables_incoming_summary_page.dart';
import 'package:inventory_manager_app/WarehouseA/nonconsumables/non_consumables_detail_page.dart';
import 'package:inventory_manager_app/WarehouseA/consumables/add_edit_table_content_page.dart';
import 'package:inventory_manager_app/WarehouseA/Login/registration_screen.dart';

void main() {
  runApp(InventoryApp());
}

class InventoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 6, 51, 97),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(255, 6, 51, 97),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              Colors.white,
            ),
            elevation: MaterialStateProperty.all<double>(4),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
        ),
      ),
      title: 'Inventory Management App',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => InventoryHomePage(),
        '/consumables': (context) => ConsumablesPage(),
        '/nonConsumablesdetailPage': (context) => NonconsumablesDetailPage(),
        '/consumablesSummaryDetailPage': (context) =>
            NonconsumablesSummaryDetailPage(),
        '/nonConsumablesSummary': (context) => NonConsumablesSummaryPage(),
        '/consumablesDetailPage': (context) => ConsumablesDetailPage(),
        '/incomingInventory': (context) => IncomingInventoryPage(),
        '/outgoingInventory': (context) => OutgoingInventoryPage(),
        '/incomingSummary': (context) => IncomingSummaryPage(),
        '/outgoingSummary': (context) => OutgoingSummaryPage(),
        '/nonconsumablesIncomingInventory': (context) =>
            NonconsumablesIncomingInventoryPage(),
        '/nonconsumablesOutgoingInventory': (context) =>
            NonconsumablesOutgoingInventoryPage(),
        '/nonconsumablesIncomingSummaryPage': (context) =>
            NonConsumablesIncomingSummaryPage(),
        '/nonconsumablesoutgoingSummaryPage': (context) =>
            NonConsumablesOutgoingSummaryPage(),
        '/nonconsumableDetailPage': (context) => NonconsumablesDetailPage(),
        '/consumablesSummaryPage': (context) => ConsumablesSummaryPage(),
        '/consumableAddEdditDetailPage': (context) => AddEditTableContentPage(),
        '/registration': (context) => RegistrationScreen(),
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
        automaticallyImplyLeading: false,
        title: Text(
          'Warehouse A',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto', // Use a modern font
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        // Wrap the column in a Center widget
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40), // Add space above the image
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'assets/warehouse.png', // Path to your warehouse image
                width: 200, // Adjust size as needed
                height: 200, // Adjust size as needed
              ),
            ),
            SizedBox(
                height: 40), // Add space below the image and above the buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConsumablesDetailPage(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 24.0,
                ),
                child: Text(
                  'Consumables',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto', // Use a modern font
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Add space between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NonconsumablesDetailPage(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 24.0,
                ),
                child: Text(
                  'Non-Consumables',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto', // Use a modern font
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
