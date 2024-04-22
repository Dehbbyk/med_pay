import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:med_pay/Features/Home/HomePage.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPage1 extends StatefulWidget {
  @override
  State<VerificationPage1> createState() => _VerificationPage1State();
}

class _VerificationPage1State extends State<VerificationPage1> {
  TextEditingController controller = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  bool isFilled = false;

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
                fontWeight: FontWeight.bold,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ],
              length: 4,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderWidth: 1,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 62,
                fieldWidth: 62,
                inactiveColor: Colors.grey,
                activeFillColor: Colors.white,
                selectedColor: Colors.purpleAccent,
                selectedFillColor: Colors.white,
                inactiveFillColor: Colors.grey.shade100,
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
                setState(() {
                  isFilled = value.length == 4; // Check if all 4 boxes are filled
                });
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
                    color: Color(0xff0D60D8),
                  ),
                )
              ],
            ),
            SizedBox(height: 25),
            Center(
              child: Container(
                width: 335,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0D60D8),
                    side: BorderSide(
                      color: Color(0xff0D60D8),
                      width: 2,
                    ),
                  ),
                  onPressed: isFilled
                      ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
                      : null,
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                    ),
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