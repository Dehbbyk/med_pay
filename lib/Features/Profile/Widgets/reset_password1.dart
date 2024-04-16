import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:med_pay/Features/Profile/Widgets/forgot_password.dart';
import 'package:med_pay/Features/Profile/Widgets/reset_password.dart';
import 'package:med_pay/Features/Profile/Widgets/reset_password1.dart';

class ResetPassword1 extends StatelessWidget {
  const ResetPassword1({Key? key});
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
              "Reset Password",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("We have just sent a reset link to the email"),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'marywilson@gmail.com.',
                  style:TextStyle(
                    color: Colors.orangeAccent,
                  ),
                ),
                Text('Click on the link to complete')
              ],
            ),
            Text('password reset.'),
            SizedBox(height: 20),
            Text(
                "Didn't get the link? Request again",
              style: TextStyle(
                color: Colors.red.shade600
              ),
            ),
            SizedBox(height:60),
            Center(
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResetPassword()),
                    );
                  },
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
                  ),
                ),
              ),
            ),
            SizedBox(height:10),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text("Didn't get the link?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotPassword()),
                      );
                    },
                    child: Text(
                      'Request again',
                      style: TextStyle(
                        color: Color(0xff0D60D8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}