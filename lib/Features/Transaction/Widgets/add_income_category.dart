import 'package:flutter/material.dart';
import 'package:med_pay/Features/Transaction/Widgets/filter_by_categories.dart';

class SelectCategory extends StatelessWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Category",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          FilterByCategories()
        ],
      ),
    );
  }
}
