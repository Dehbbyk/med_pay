import 'package:flutter/material.dart';
import 'package:med_pay/Features/Transaction/TransactionView.dart';
import 'package:med_pay/Features/Transaction/Widgets/lab_tile.dart';
import 'package:med_pay/Features/Transaction/Widgets/obgyn_tile.dart';
import 'package:med_pay/Features/Transaction/Widgets/pharmacy_tile.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Transactions",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                  onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context){
                        return TransactionView();
                      })
                    );
                  },

                  child: Row(
                    children: [
                      Text(
                          "View More",
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Colors.black,
                      )
                    ],
                  )
              )
            ],
          ),
          SizedBox(height: 20),
          PharmacyTile(),
          SizedBox(height: 15),
          OgBynTile(),
          SizedBox(height: 15),
          LabTile(),
          SizedBox(height: 15),
          PharmacyTile()
          // Listview start
        ],
      ),
    );
  }
}