import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter_application/KYCpage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  bool agreeToConditions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 138.0),
            const Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your full name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    width: 380.36,
                    height: 35.09,
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 26.94,
                          top: 28, //Position of agree condition
                          child: SizedBox(
                            width: 295.42,
                            height: 23.09,
                            child: Text(
                              'By continuing you accept our Privacy Policy',
                              style: TextStyle(
                                color: Color(0xFF9299A3),
                                fontSize: 11.55,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0.13,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: -14, //Position of round checkbox
                          top: 1.92,
                          child: Checkbox(
                            value: agreeToConditions,
                            shape: const OvalBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                agreeToConditions = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 36.0),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // TODO: Implement signup logic
                        Map<String, dynamic> data = {
                          'name': _nameController.text,
                          'email': _emailController.text,
                          'phone': _phoneController.text,
                          'password': _passwordController.text,
                        };
                        String jsonData = jsonEncode(data);
                        // Do something with the JSON data
                        print(jsonData);
                        // Navigate to KYCpage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => KYCpage()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(400, 50),
                      primary: Colors.green,
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  const Positioned(
                    left: 10, //Position of already account
                    top: 20,
                    child: SizedBox(
                      width: 344.49,
                      height: 110.79,
                      child: Text(
                        'Sign up with',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0A0615),
                          fontSize: 19.25,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 3.06,
                          letterSpacing: -1,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/apple_logo.png',
                        width: 38.0,
                        height: 38.0,
                      ),
                      const SizedBox(width: 26.0),
                      Image.asset(
                        'assets/images/fb_logo.png',
                        width: 38.0,
                        height: 38.0,
                      ),
                      const SizedBox(width: 26.0),
                      Image.asset(
                        'assets/images/google_logo.png',
                        width: 38.0,
                        height: 38.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 223.89,
                    height: 73.37,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 163, //Position of Signin
                          top: 60,
                          child: SizedBox(
                            width: 55.81,
                            height: 53.09,
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.47,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                height: 0.11,
                                letterSpacing: -1,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10, //Position of already account
                          top: 60,
                          child: SizedBox(
                            width: 198,
                            height: 23,
                            child: Text(
                              'Already have an account? ',
                              style: TextStyle(
                                color: Color(0xFF404B52),
                                fontSize: 13.47,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0.13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
