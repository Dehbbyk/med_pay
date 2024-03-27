import 'package:flutter/material.dart';
import 'package:med_pay/Features/Transaction/FilteredPhamarcyView.dart';
import 'package:med_pay/Features/Transaction/Widgets/filter_by_categories.dart';
import 'package:med_pay/Features/Transaction/Widgets/filter_by_date_range.dart';
import 'package:med_pay/Features/Transaction/Widgets/filter_by_transaction_type.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Filter by",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 8)),
            FilterByCategories(),
            SizedBox(height: 40),
            Text(
              "Transaction Type",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 8)),
            FilterByTransactionType(),
            SizedBox(height: 30),
            Text(
              "Date Range",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            FilterByDateRange(),
            SizedBox(height: 30),
            Text(
              "Select month",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      "March, 2024",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_down),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: FilteredPhamarcyView(),
                    );
                  },
                );
              },
              child: Text(
                  "Confirm",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent.shade700,
                minimumSize: Size(MediaQuery.of(context).size.width * 0.5, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                side: BorderSide(
                  color: Colors.blueAccent.shade700,
                  width: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
