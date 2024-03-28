import 'package:flutter/material.dart';
import 'package:med_pay/Features/Home/HomePage.dart';
import 'package:med_pay/Features/SingUp/sign_up_page.dart';
import 'package:med_pay/Features/Transaction/Widgets/add_income_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor:Colors.blue ,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.grey.shade100
      ),
      home: SignUpPage(),
    );
  }
}