import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:med_pay/Features/Home/HomePage.dart';
import 'package:med_pay/Features/LoginPage/login_page.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPage1 extends StatefulWidget {
  @override
  State<VerificationPage1> createState() => _VerificationPage1State();
}

class _VerificationPage1State extends State<VerificationPage1> {
  TextEditingController controller = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Verification',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            Text(
              "Enter the code sent to your email!",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 35),
            PinCodeTextField(
              appContext: context,
              cursorHeight: 19,
              textStyle: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ],
              length: 4,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderWidth: 1,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 50,
                fieldWidth: 40,
                inactiveColor: Colors.grey,
                activeFillColor: Colors.white,
                selectedColor: Colors.purpleAccent,
                selectedFillColor: Colors.white,
                inactiveFillColor: Colors.grey.shade100
              ),
              animationDuration: Duration(milliseconds: 300),
              enableActiveFill: true,
              errorAnimationController: errorController,
              controller: controller,
              keyboardType: TextInputType.number,
              boxShadows: const [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.black12,
                  blurRadius: 10,
                )
              ],
              onChanged: (value) {
                print(value);
              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't receive a code?"),
                SizedBox(width: 5),
                Text(
                    "Click to resend",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text(
                'Continue',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff0D60D8),
                 minimumSize: Size(MediaQuery.of(context).size.width * 0.95, 55),
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