import 'package:flutter/material.dart';
import 'package:med_pay/Features/Home/Widgets/SavingsDetailCard.dart';
import 'package:med_pay/Features/Home/Widgets/expense_detail_card.dart';
import 'package:med_pay/Features/Transaction/Widgets/add_expense.dart';
import 'package:med_pay/Features/Transaction/Widgets/add_income_view.dart';

class BalanceCard extends StatefulWidget {
  const BalanceCard({
    Key? key, // Corrected syntax
  }) : super(key: key);

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: PageView(
            onPageChanged: (index) {
              setState(() {
                tabController.index = index;
              });
            },
            children: [
              Padding(
                padding: const EdgeInsets.all( 8.0),
                child: SavingsDetailCard(
                  balance: "500,000",
                  topRightWidget: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> AddIncome()),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.add),
                        Text("Add Income"),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 8,
                      ),
                      backgroundColor: Colors.blue.shade500,
                      foregroundColor: Colors.white,
                        disabledBackgroundColor: Colors.blue.shade500,
                        disabledForegroundColor: Colors.white
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ExpenseDetailCard(
                  balance: '50,000',
                  topRightWidget:ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> AddExpense()),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.add),
                        Text("Add Expense"),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 8,
                      ),
                      backgroundColor: Colors.orangeAccent,
                      foregroundColor: Colors.white,
                      disabledBackgroundColor: Colors.orangeAccent,
                      disabledForegroundColor: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        TabPageSelector(
          controller: tabController,
          selectedColor: Colors.blue,
          color: Colors.white,
        ),
      ],
    );
  }
}