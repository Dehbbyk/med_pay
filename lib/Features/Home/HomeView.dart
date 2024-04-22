import 'package:flutter/material.dart';
import 'package:med_pay/Features/Home/Widgets/BalanceCard.dart';
import 'package:med_pay/Features/Home/Widgets/recent_transactions_section.dart';
import 'package:med_pay/Features/Profile/ProfileView.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Column(
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
                    SizedBox(width: 10), // Add spacing between text and images
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/images/notification_icon.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ProfileView()), // Replace ProfileView with your actual profile view widget
                              );
                            },
                            child: Image.asset(
                              "assets/images/profile_image.png",
                              height: 40,
                              width: 40,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              BalanceCard(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Image.asset(
                        "assets/images/take_control_image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Image.asset(
                        "assets/images/take_controll.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              RecentTransaction(),
            ],
          ),
        ),
      ),
    );
  }
}