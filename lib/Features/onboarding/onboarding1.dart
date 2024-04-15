import 'package:flutter/material.dart';
import 'package:med_pay/Features/onboarding/onboarding2.dart';
import 'package:med_pay/Features/widgets/build_dots.dart';
import 'package:med_pay/Features/widgets/custom_btn.dart';

class OnboardingScreen001 extends StatelessWidget {
  const OnboardingScreen001({super.key, required this.currentPageIndex});
  final currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: Stack(children: [
            Center(
              child: Container(
                alignment: Alignment.topCenter,
                width: 350,
                height: double.infinity,
                child: Image.asset(
                  'assets/images/onboarding_image5.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              top: 80,
              right: 100,
              child: Container(
                alignment: Alignment.topCenter,
                width: 350,
                height: double.infinity,
                child: Image.asset(
                  'assets/images/onboarding_image6.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                width: double.infinity,
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Color(0xFFFEFEFE),
                    ],
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.9)),
                  child: Center(
                      child: Column(
                    children: [
                      const SizedBox(
                        width: 10,
                        height: 10,
                      ),
                      buildDots(currentPageIndex),
                      const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Center(
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: 'Never lose sight of ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w600),
                          )
                        ])),
                      ),
                      Center(
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: 'your',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: '  medical',
                            style: TextStyle(
                                color: Color(0xffF97707),
                                fontSize: 28,
                                fontWeight: FontWeight.w600),
                          )
                        ])),
                      ),
                      Center(
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: 'spending',
                            style: TextStyle(
                                color: Color(0xffF97707),
                                fontSize: 28,
                                fontWeight: FontWeight.w600),
                          )
                        ])),
                      ),
                      const SizedBox(
                        width: 30,
                        height: 30,
                      ),
                      CustomButton(
                          text: "Continue",
                          color: const Color(0xff0D60D8),
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => const OnboardingScreen002()));
                          }),
                      const SizedBox(
                        width: 30,
                        height: 30,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              color: const Color(0xff0D60D8),
                            ),
                          ))
                    ],
                  )),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
