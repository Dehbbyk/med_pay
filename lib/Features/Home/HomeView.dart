import 'package:flutter/material.dart';
import 'package:med_pay/Features/Home/Widgets/BalanceCard.dart';
import 'package:med_pay/Features/Home/Widgets/recent_transactions_section.dart';
import 'package:med_pay/Features/Home/Widgets/SavingsDetailCard.dart';
import 'package:med_pay/Features/Home/Widgets/take_control.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Mary,",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "Welcome Onboard!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          BalanceCard(),
          Expanded(
            child: TakeControl(),
          ),
          RecentTransaction(),
        ],
      ),
    );
  }
}
