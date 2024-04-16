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
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0D60D8),
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.95, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29)
                  ),
                  side: BorderSide(
                    color: Color(0xff0D60D8),
                    width: 2,
                  )
              ),
              child: Text(
                'Add another Income',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              )
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
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
                    borderRadius: BorderRadius.circular(29)
                ),
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
          )
        ],
      ),
    );
  }
}