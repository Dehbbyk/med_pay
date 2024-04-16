import 'package:flutter/material.dart';
import 'package:med_pay/Features/Profile/Widgets/reset_password1.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Enter the email address associated with this account"),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey.shade300, // Faint border color
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email address",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Container(
                child: ElevatedButton(
                  onPressed: email != ''
                      ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResetPassword1()),
                    );
                  }
                      : null,
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0D60D8),
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.95, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    side: BorderSide(
                      color: Color(0xff0D60D8),
                      width: 2,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}