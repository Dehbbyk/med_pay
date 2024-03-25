import 'package:flutter/material.dart';
import 'package:med_pay/Features/Analytics/AnalyticsView.dart';
import 'package:med_pay/Features/Home/HomeView.dart';
import 'package:med_pay/Features/Profile/ProfileView.dart';
import 'package:med_pay/Features/Transaction/TransactionView.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listOfPages = [
    const HomeView(),
    const TransactionView(),
    const AnalyticsView(),
    const ProfileView(),
  ];
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfPages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.grey, // Set background color
        elevation: 5, // Add elevation for a shadow effect
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/transaction_icon.svg"),
            label: "Transactions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket_launch),
            label: "Analytics",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
