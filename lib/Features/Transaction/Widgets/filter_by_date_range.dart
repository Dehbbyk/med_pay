import 'package:flutter/material.dart';

class FilterByDateRange extends StatelessWidget {
  const FilterByDateRange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: (){},
          child: Text(
            "Monthly",
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
            "Quarterly",
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
            "Yearly",
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
            "Custom",
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