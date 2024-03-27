import 'package:flutter/material.dart';

class AddIncome extends StatelessWidget {
  const AddIncome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Income",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Select Category",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Category"),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
            Divider(),
            // Add other fields here
          ],
        ),
      ),
    );
  }
}