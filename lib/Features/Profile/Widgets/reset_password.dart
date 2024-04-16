import 'package:flutter/material.dart';
import 'package:med_pay/Features/LoginPage/login_page.dart';
import 'package:med_pay/Features/Profile/Widgets/reset_password1.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  String createPassword = '';
  String renterPassword = '';

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
            Text("Let's get you onboard again"),
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
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Create new password",
                  suffixIcon: Image.asset('assets/images/password_eye.png'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    createPassword = value;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey.shade300, // Faint border color
                ),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Re-enter password",
                  suffixIcon: Image.asset('assets/images/password_eye.png'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    renterPassword = value;
                  });
                },
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Container(
                child: ElevatedButton(
                  onPressed: createPassword != '' && renterPassword != ''
                      ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  }
                      : null,
                  child: Text(
                    "Log in",
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