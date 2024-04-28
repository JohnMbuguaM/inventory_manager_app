import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inventory Summary'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/non_consumables_summary');
                },
                child: Text('Consumable Summary'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/non_consumables_summary');
                  },
                  child: Text('Non-Consumables Summary')),
            ],
          ),
        ));
  }
}
