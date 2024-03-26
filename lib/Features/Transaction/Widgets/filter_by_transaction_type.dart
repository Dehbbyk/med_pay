import 'package:flutter/material.dart';

class FilterByTransactionType extends StatelessWidget {
  const FilterByTransactionType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: (){},
          child: Text(
            "Show all",
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 12,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
        ElevatedButton(
          onPressed: (){},
          child: Text(
            "Income",
            style: TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
        ElevatedButton(
          onPressed: (){},
          child: Text(
            "Expense",
            style: TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}