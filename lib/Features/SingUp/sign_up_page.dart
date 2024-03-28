import 'package:flutter/material.dart';
import 'package:med_pay/Features/SingUp/sign_up_view.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                fontSize: 25
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
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 35.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> SignUpView()),
                );
              },
              child: Text(
                  'Continue',
                style: TextStyle(
                  color: Colors.lightBlue
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade100,
                minimumSize: Size(MediaQuery.of(context).size.width * 0.5, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                side: BorderSide(
                  color: Colors.blue.shade100,
                  width: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
