import 'package:flutter/material.dart';
import 'package:med_pay/Features/Profile/Widgets/forgot_password.dart';
import 'package:med_pay/Features/Profile/Widgets/reset_password.dart';
import 'package:med_pay/Features/Profile/Widgets/two_factor.dart';

class PasswordSecurity extends StatefulWidget {
  const PasswordSecurity({super.key});

  @override
  State<PasswordSecurity> createState() => _PasswordSecurityState();
}

class _PasswordSecurityState extends State<PasswordSecurity> {
  bool _isTwoFactorOn = true;
  bool _isEnableOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
            'Password and Security',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TwoFactor()),
              );
            },
            child: ListTile(
              title: Text('Enable two-factor authentication'),
              trailing: Switch(
              value: _isTwoFactorOn,
              onChanged: (value) {
                setState(() {
                  _isTwoFactorOn = value;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: Colors.green.shade300,
              ),
            ),
          ),
          ListTile(
            title: Text('Enable Login using biometrics'),
            trailing: Switch(
              value:_isEnableOn ,
              onChanged: (value) {
                setState(() {
                  _isEnableOn = value;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: Colors.green.shade300,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPassword()),
              );
            },
            child: ListTile(
              title: Text('Change password'),
            ),
          ),
        ],
      ),
    );
  }
}
