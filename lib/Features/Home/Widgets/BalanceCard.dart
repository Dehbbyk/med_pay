
import 'package:flutter/material.dart';
import 'package:med_pay/Features/Home/Widgets/SavingsDetailCard.dart';

class BalanceCard extends StatefulWidget {
  const BalanceCard({
    super.key,
  });

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child:  PageView(
            onPageChanged:(index){
              setState(() {
                tabController.index = index;
              });
            } ,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SavingsDetailCard(
                  balance: "500,000",
                  topRightWidget:  ElevatedButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children:[
                        Icon(Icons.add),
                        Text("Add Income"),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 8,
                        ),
                        backgroundColor: Colors.lightBlue,
                        foregroundColor: Colors.white
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                // child: InvestDetailCard(),
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