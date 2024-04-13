import 'package:flutter/material.dart';
import 'package:med_pay/Features/Profile/Widgets/sync_bank_view.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Settings",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
            ),
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Account Settings',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/settings_image.png'),
              title: Text('Password and Security'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Image.asset('assets/images/settings_image.png'),
              title: Text('Personal Details'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SyncBank()),
                );
              },
              child: ListTile(
                leading: Image.asset('assets/images/settings_image.png'),
                title: Text('Bank Details/Link Bank'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/settings_image.png'),
              title: Text('Manage Hospital Services'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 15),
            Text(
              'Accessibility',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/dark_mode.png'),
              title: Text("Dark mode"),
              trailing: Switch(
                value: false,
                onChanged: (value) {},
                activeColor: Colors.white,
                activeTrackColor: Colors.grey,
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/language_icon.png'),
              title: Text("Language"),
                trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Image.asset('assets/images/font_icon.png'),
              title: Text("Font size"),
                trailing: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
