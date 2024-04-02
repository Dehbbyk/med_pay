import 'package:flutter/material.dart';
import 'package:med_pay/Features/Transaction/Widgets/filter_page.dart';
import 'package:med_pay/Features/Transaction/Widgets/pharmacy_postive_tile.dart';
import 'package:med_pay/Features/Transaction/Widgets/pharmacy_tile.dart';

class FilteredPhamarcyView extends StatelessWidget {
  const FilteredPhamarcyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(16),
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
                    onPressed: () {},
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
              SizedBox(height: 15),
              PharmacyTile1(),
              SizedBox(height: 8),
              PharmacyTile1(),
              SizedBox(height: 8),
              PharmacyTile1(),
              SizedBox(height: 8),
              PharmacyTile1(),
              SizedBox(height: 8),
              PharmacyTile1(),
              SizedBox(height: 8),
              PharmacyTile1(),
              SizedBox(height: 8),
              PharmacyTile(),
              SizedBox(height: 8),
              PharmacyTile1()
            ],
          ),
        ),
      ),
    );
  }
}