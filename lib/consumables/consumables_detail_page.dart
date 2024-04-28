import 'package:flutter/material.dart';

class ConsumablesDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumables Inventories'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: [
          _buildCard(
            context,
            icon: Icons.arrow_circle_down,
            title: 'Incoming Inventory',
            onTap: () {
              Navigator.pushNamed(context, '/incomingInventory');
            },
          ),
          _buildCard(
            context,
            icon: Icons.arrow_circle_up,
            title: 'Outgoing Inventory',
            onTap: () {
              Navigator.pushNamed(context, '/outgoingInventory');
            },
          ),
          _buildCard(
            context,
            icon: Icons.list_alt,
            title: 'Summary',
            onTap: () {
              Navigator.pushNamed(context, '/consumablesSummaryPage');
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context,
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 64.0,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
