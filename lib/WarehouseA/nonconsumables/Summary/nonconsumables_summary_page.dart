import 'package:flutter/material.dart';

class NonconsumablesSummaryDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Non-consumables Summary'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/nonconsumablesIncomingSummaryPage');
              },
              child: Text('Nonconsumbales Incoming Inventory Summary'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/nonconsumablesoutgoingSummaryPage');
              },
              child: Text('Nonconsumables Outgoing Inventory Summary'),
            ),
          ],
        ),
      ),
    );
  }
}
