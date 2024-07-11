import 'package:flutter/material.dart';
import 'package:med_pay/Features/SingUp/Widgets/verification_page1.dart';
import 'package:med_pay/Features/models/auth/register_model.dart';
import 'package:med_pay/Provider/auth_api.dart';
import 'package:med_pay/Provider/auth_provider.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String name = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  void _register() {
    if (_formKey.currentState!.validate()) {
      final user = User(
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        userName: _userNameController.text,
        password: _passwordController.text,
        email: _emailController.text.isNotEmpty ? _emailController.text : null,
      );
      Provider.of<SignUpProvider>(context, listen: false).register(user);
    }
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<AuthProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              Text(
                "Hello! Let's get you started!",
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
              SizedBox(height: 18.0),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade300, // Faint border color
                  ),
                ),
                child: TextField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                    hintText: 'Full name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade300, // Faint border color
                  ),
                ),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade300, // Faint border color
                  ),
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  validator:(value){
                    if(value == null || value.isEmpty){
                      return 'Please enter a password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Image.asset('assets/images/password_eye.png'),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  // onChanged: (value) {
                  //   setState(() {
                  //     password = value;
                  //   });
                  // },
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade300, // Faint border color
                  ),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      confirmPassword = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 35.0),
              Container(
                width: 335,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff0D60D8),
                    side: BorderSide(
                      color: Color(0xff0D60D8),
                      width: 2,
                    ),
                  ),
                  onPressed: _register,
                  // onPressed: name != '' && email != '' && password != '' && confirmPassword != ''
                  //     ? () {
                  //   userProvider.signInWithEmailAndPassword(email, password, name, context);
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => VerificationPage1()),
                  //   );
                  // }
                  //     : null,
                  child: Text(
                      "Continue",
                    style: TextStyle(color: Colors.white,
                  ),
                ),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}