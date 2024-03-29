import 'package:flutter/material.dart';
import 'package:med_pay/Features/SingUp/Widgets/custom_button.dart';
import 'package:med_pay/Features/SingUp/sign_up001.dart';
import 'package:med_pay/Features/SingUp/sign_up_view.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                fontSize: 25
              ),
            ),
            Text(
              "Hello! Let's get you started!",
              style: TextStyle(
                  color: Colors.black45,
              ),
            ),
            SizedBox(height: 18.0),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Full name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 35.0),
            CustomButtons(
                isEnabled: !(_nameController.text.isEmpty &&
                    _emailController.text.isEmpty &&
                    _passwordController.text.isEmpty &&
                    _confirmPasswordController.text.isEmpty),
                onPressed: (){},
                child: Text("Continue")
            )
          ],
        ),
      ),
    );
  }
}
