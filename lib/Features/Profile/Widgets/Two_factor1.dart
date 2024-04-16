import 'package:flutter/material.dart';
import 'package:med_pay/Features/Profile/Widgets/two_factor2.dart';

class TwoFactor1 extends StatefulWidget {
  const TwoFactor1({super.key});

  @override
  State<TwoFactor1> createState() => _TwoFactor1State();
}

class _TwoFactor1State extends State<TwoFactor1> {
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mary Wilson'),
            Text(
                'Please re-enter your \npassword',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey.shade300, // Faint border color
                ),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Image.asset('assets/images/password_eye.png'),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                ),
              ),
            SizedBox(height: 100),
            Center(
              child: ElevatedButton(
                onPressed: password.isNotEmpty
                    ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TwoFactor2()),
                  );
                }
                    : null,
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent.shade700,
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.85, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  side: BorderSide(
                    color: Colors.blueAccent.shade700,
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
