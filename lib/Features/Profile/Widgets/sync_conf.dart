import 'package:flutter/material.dart';
import 'package:med_pay/Features/Home/HomePage.dart';

class SyncConfirmation extends StatelessWidget {
  const SyncConfirmation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height:60),
            Image.asset('assets/images/mark_icon.png'),
            SizedBox(height: 24),
            Text(
              "Your bank account has Successfully ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              'been linked',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'You can link other account to \nmanage your transactions',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff0D60D8),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.95, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(29),
                ),
                side: BorderSide(
                  color: Color(0xff0D60D8),
                  width: 2,
                ),
              ),
              child: Text(
                'Link Another Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width * 0.95, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(29),
                ),
                side: BorderSide(
                  color: Color(0xff0D60D8),
                  width: 2,
                ),
              ),
              child: Text(
                "Go to Home",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0D60D8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}