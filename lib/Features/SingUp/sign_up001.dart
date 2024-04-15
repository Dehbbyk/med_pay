import 'package:flutter/material.dart';
import 'package:med_pay/Features/SingUp/sign_up_page.dart';
import 'package:med_pay/Provider/auth_provider.dart';
import 'package:provider/provider.dart';

class Signup001 extends StatelessWidget {
  const Signup001({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildSix(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                child: Column(
                  children: [
                    CustomButton(
                        text: "Sign up with email",
                        color: Color(0xff0D60D8),
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                        }),
                    SizedBox(
                      height: 10,
                    ),
                Container(
                  width: 335,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xff0D60D8)),
                    onPressed: (){
                      final authProvider =
                      Provider.of<AuthProvider>(context, listen: false);
                      authProvider.signInWithGoogle(context);
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/google_icon.png'),
                        SizedBox(width: 25),
                        Text(
                            'Continue with google',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        )
                      ],
                    )
                    ),
                  ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}

Widget _buildSix(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  return SizedBox(
    height: 338,
    width: double.maxFinite,
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
            width: width,
            child: Image.asset(
              "assets/images/sign_image.png",
              fit: BoxFit.cover,
            )),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Add functionality for going back
                print('Back button pressed');
              },
            ),
          ],
        ),
      ],
    ),
  );
}
