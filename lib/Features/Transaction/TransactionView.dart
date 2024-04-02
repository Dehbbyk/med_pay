import 'package:flutter/material.dart';
import 'package:med_pay/Features/Transaction/Widgets/filter_page.dart';
import 'package:med_pay/Features/Transaction/Widgets/lab_positive_tile.dart';
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
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.symmetric(vertical: 10),
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
                  onPressed: (){
                    showModalBottomSheet(
                       isScrollControlled: true,
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.elliptical(50, 50)
                        )
                      ),
                      showDragHandle: true,
                      builder: (context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FilterPage(),
                          ],
                        );
                      },
                    );
                  },
                  child: Row(
                    children: [
                      Image.asset("assets/images/filter_icon.png"),
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
            SizedBox(height: 8),
            OgBynTile(),
            SizedBox(height: 8),
            LabTile1(),
            SizedBox(height: 8),
            PharmacyTile(),
            SizedBox(height: 8),
            LabTile1(),
            SizedBox(height: 8),
            PharmacyTile(),
            SizedBox(height: 8),
            OgBynTile(),
            SizedBox(height: 8),
            OgBynTile()
          ],
        ),
      ),
    );
  }
}