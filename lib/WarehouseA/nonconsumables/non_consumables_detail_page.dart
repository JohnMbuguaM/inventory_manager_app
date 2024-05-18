import 'package:flutter/material.dart';

class NonconsumablesDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Non-Consumables'),
        elevation: 16, // Remove app bar elevation
        backgroundColor: Colors.white12, // Use white background for app bar
        centerTitle: true, // Center the title
      ),
      backgroundColor: Color(0xFFf7f7f7), // Use a light gray background
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0), // Add horizontal and vertical padding
            alignment: Alignment.centerLeft, // Align contents to the left
            height: 50.0, // Set the height of the container
            decoration: BoxDecoration(
              color: Theme.of(context)
                  .primaryColor, // Use the primary color of the app
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                    16.0), // Apply border radius to the bottom left corner
                bottomRight: Radius.circular(
                    16.0), // Apply border radius to the bottom right corner
              ),
            ),
            child: Text(
              'Welcome to Non-Consumables Inventory',
              style: TextStyle(
                color: Colors.white, // Set text color to white
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 40.0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 16.0), // Add horizontal padding
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16.0, // Add spacing between items vertically
                children: [
                  _buildCard(
                    context,
                    icon: Icons.arrow_circle_down,
                    title: 'Incoming Inventory',
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/nonconsumablesIncomingInventory');
                    },
                  ),
                  _buildCard(
                    context,
                    icon: Icons.arrow_circle_up,
                    title: 'Outgoing Inventory',
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/nonconsumablesOutgoingInventory');
                    },
                  ),
                  _buildCard(
                    context,
                    icon: Icons.list_alt,
                    title: 'Summary',
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/consumablesSummaryDetailPage');
                    },
                  ),
                ],
              ),
            ),
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
      color: Color.fromARGB(255, 231, 246, 254),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(16.0),
              child: Icon(
                icon,
                size: 32.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
