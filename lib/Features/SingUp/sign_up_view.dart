import 'package:flutter/material.dart';
import 'package:med_pay/Features/SingUp/Widgets/verification_page1.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
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
                hintText: 'Mary Williams',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'marywilliams@gmail.com',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: '************',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: '************',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 35.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> VerificationPage1()),
                );
              },
              child: Text(
                'Continue',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                minimumSize: Size(MediaQuery.of(context).size.width * 0.5, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                side: BorderSide(
                  color: Colors.blueAccent,
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
