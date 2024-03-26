
import 'package:flutter/material.dart';
import 'package:med_pay/Features/Home/Widgets/SavingsDetailCard.dart';

class UserBalanceDetails extends StatefulWidget {
  const UserBalanceDetails({
    super.key,
  });

  @override
  State<UserBalanceDetails> createState() => _UserBalanceDetailsState();
}

class _UserBalanceDetailsState extends State<UserBalanceDetails> with SingleTickerProviderStateMixin{
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
                  balance: "20000",
                  topRightWidget:  ElevatedButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children:[
                        Text("View Savings"),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 8,
                        ),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0),
              //   child: InvestDetailCard(),
              // ),
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