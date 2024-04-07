import 'package:flutter/material.dart';
import 'package:med_pay/Features/SingUp/Widgets/verification_page1.dart';
import 'package:med_pay/Provider/auth_provider.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String name = '';
  String email = '';
  String password = '';
  String confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<AuthProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              Text(
                "Hello! Let's get you started!",
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
              SizedBox(height: 18.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Full name',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    confirmPassword = value;
                  });
                },
              ),
              SizedBox(height: 35.0),
              ElevatedButton(
                onPressed: name != '' && email != '' && password != '' && confirmPassword != ''
                    ? () {
                  userProvider.signInWithEmailAndPassword(email, password, name, context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerificationPage1()),
                  );
                }
                    : null,
                child: Text("Continue"),
              ),
      
            ],
          ),
        ),
      ),
    );
  }
}