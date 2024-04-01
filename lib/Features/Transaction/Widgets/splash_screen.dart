import 'package:flutter/material.dart';
import 'package:med_pay/Provider/splash_provider.dart';
import 'package:provider/provider.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<SplashScreenState>(context, listen: false);
    state.initialize();
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/home_vector1.png',
              scale: 0.78, // Adjust the path accordingly
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/splash_logo.png'),
                SizedBox(height: 20),
                Text(
                  'MedPay Tracka',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/home_vector2.png',
              scale: 0.48,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}