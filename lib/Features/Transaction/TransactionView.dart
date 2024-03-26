import 'package:flutter/material.dart';
import 'package:med_pay/Features/Transaction/Widgets/filter_page.dart';
import 'package:med_pay/Features/Transaction/Widgets/lab_tile.dart';
import 'package:med_pay/Features/Transaction/Widgets/obgyn_tile.dart';
import 'package:med_pay/Features/Transaction/Widgets/pharmacy_tile.dart';

void main() {
  runApp(MaterialApp(
    home: TransactionView(),
  ));
}

class TransactionView extends StatelessWidget {
  const TransactionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transactions",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return FilterPage();
                      }),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.filter,
                        size: 18,
                        color: Colors.black,
                      ),
                      Text(
                        "Filter",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            PharmacyTile(),
            SizedBox(height: 15),
            OgBynTile(),
            SizedBox(height: 15),
            LabTile(),
            SizedBox(height: 15),
            PharmacyTile(),
            LabTile(),
            SizedBox(height: 15),
            PharmacyTile(),
            SizedBox(height: 15),
            OgBynTile(),
            SizedBox(height: 15),
            OgBynTile()
          ],
        ),
      ),
    );
  }
}