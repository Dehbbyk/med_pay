import 'package:flutter/material.dart';
import 'package:med_pay/Features/Home/HomePage.dart';

class AddIncomeSheet extends StatelessWidget {
  const AddIncomeSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/mark_icon.png'),
          SizedBox(height: 24),
          Text(
            "Income successfully added",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 24),
          Center(
            child: Container(
              width: 335,
              height: 60,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Color(0xff0D60D8),
                        width: 2,
                      ),
                    backgroundColor:Color(0xff0D60D8),
                  ),
                  child: Text(
                    'Add another Income',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  )
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              width: 335,
              height: 60,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Color(0xff0D60D8),
                      width: 2,
                    )
                ),
                child: Text(
                  "Go to Home",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0D60D8),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}