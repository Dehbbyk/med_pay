import 'package:flutter/material.dart';
import 'package:med_pay/Features/onboarding/onboarding1.dart';
import 'package:med_pay/Features/onboarding/onboarding2.dart';

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              children: [
                //_buildDots(),
                OnboardingScreen001(
                  currentPageIndex: _currentPageIndex,
                ),
                OnboardingScreen002(
                  currentPageIndex: _currentPageIndex,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
