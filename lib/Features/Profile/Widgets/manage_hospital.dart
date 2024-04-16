import 'package:flutter/material.dart';

class ManageHospital extends StatelessWidget {
  const ManageHospital({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
            'Manage hospital services',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Available Services",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/phamarcy_icon.png'),
              title: Text('Pharmacy'),
              trailing: Image.asset('assets/images/delete_icon.png'),
            ),
            ListTile(
              leading: Image.asset('assets/images/obgyn_icon.png'),
              title: Text('OB-GYN'),
            ),
            ListTile(
              leading: Image.asset('assets/images/lab_icon.png'),
              title: Text('Laboratory'),
            ),
            ListTile(
              leading: Image.asset('assets/images/lab_icon.png'),
              title: Text('Laboratory'),
            ),
            ListTile(
              leading: Image.asset('assets/images/lab_icon.png'),
              title: Text('Laboratory'),
            ),
            ListTile(
              leading: Image.asset('assets/images/lab_icon.png'),
              title: Text('Laboratory'),
            ),
            ListTile(
              leading: Image.asset('assets/images/lab_icon.png'),
              title: Text('Laboratory'),
            ),
            SizedBox(height: 45),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Add Service',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff0D60D8),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.95, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                side: BorderSide(
                  color: Color(0xff0D60D8),
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
