import 'package:flutter/material.dart';

class TwoFactor2 extends StatelessWidget {
  const TwoFactor2({Key? key});

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
            SizedBox(height: 10),
            Text(
              'Two-factor authentication \nenabled',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              "We'll ask for login code anytime you log in \non a device we don't recognize.",
            ),
            SizedBox(height: 25),
            Container(
              constraints: BoxConstraints.expand(height: 80, width: 375),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
              ),
              child: Center(
                child: Text(
                  'How do you want to get login codes?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Image.asset('assets/images/font_icon.png'),
              title: Text("Email"),
              subtitle: Text("We'll send an email to marywilson@gmail.com"),
              trailing: Icon(Icons.circle_outlined),
            ),
            ListTile(
              leading: Image.asset('assets/images/font_icon.png'),
              title: Text("Phone number"),
              trailing: Icon(Icons.circle_outlined),
            )
          ],
        ),
      ),
    );
  }
}