import 'package:flutter/material.dart';
import 'package:med_pay/Features/utils.dart';

class LabTile extends StatelessWidget {
  const LabTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset("assets/images/lab_icon.png"),
      title: Text(
        "Laboratory",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        "Today, 12:00PM",
        style: TextStyle(
            color: Colors.black38,
            fontSize: 14
        ),
      ),
      trailing: TextButton(
        onPressed: () {},
        child: Text(
          "-${getNaira()}20,000",
          style: TextStyle(
              color: Colors.orange
          ),
        ),
      ),
      contentPadding: EdgeInsets.zero,
    );
  }
}