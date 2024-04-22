import 'package:flutter/material.dart';
import 'package:med_pay/Features/Profile/Widgets/link_bank_view.dart';
import 'package:med_pay/Features/Profile/Widgets/settings_view.dart';

class SyncBank extends StatelessWidget {
  const SyncBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0), // Adjust the left padding as needed
                  child: Text(
                    'Connect Your Bank \nAccount',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              ListTile(
                leading: Image.asset('assets/images/secure_icon.png'),
                title: Text(
                  'Secure',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'Medpay encryption helps to protect '
                      '\nyour personal information.',
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/private_icon.png'),
                title: Text(
                  'Private',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'Your credential will never be made'
                      '\navailable to other parties.',
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/manage_icon.png'),
                title: Text(
                  'Manage all your financial account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'Manage all your financial account from '
                      '\nincome to expenses.',
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/sync_icon.png'),
                title: Text(
                  'Sync bank account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'Connect your bank account to synchronize '
                      '\ntransactions in real time.',
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  width: 335,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LinkBank()),
                      );
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff0D60D8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      side: BorderSide(
                        color: Color(0xff0D60D8),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 335,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SettingsView()),
                      );
                    },
                    child: Text(
                      "Maybe Later",
                      style: TextStyle(
                        color: Color(0xff0D60D8),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      side: BorderSide(
                        color: Colors.blueAccent.shade700,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}