import 'package:flutter/material.dart';

class ConsumablesSummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumables Summary'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/incomingSummary');
              },
              child: Text('Incoming Inventory Summary'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/outgoingSummary');
              },
              child: Text('Outgoing Inventory Summary'),
            ),
          ],
        ),
      ),
    );
  }
}
