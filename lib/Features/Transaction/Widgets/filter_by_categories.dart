import 'package:flutter/material.dart';

class FilterByCategories extends StatelessWidget {
  const FilterByCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Show all",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Pharmacy",
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Paradiatrics",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: (){},
              child: Text(
                "Surgery",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            ElevatedButton(
              onPressed: (){},
              child: Text(
                "Oncology",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            ElevatedButton(
              onPressed: (){},
              child: Text(
                "Emergency Ward",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: (){},
              child: Text(
                "Outpatient Services",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            ElevatedButton(
              onPressed: (){},
              child: Text(
                "Elderly Care",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            ElevatedButton(
              onPressed: (){},
              child: Text(
                "ICU",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: (){},
              child: Text(
                "OB-GYN",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            ElevatedButton(
              onPressed: (){},
              child: Text(
                "Children's Ward",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            ElevatedButton(
              onPressed: (){},
              child: Text(
                "Dietary",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}