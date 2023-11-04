import 'package:flutter/material.dart';
import 'package:carrier/OTP.dart';

// ignore: non_constant_identifier_names
forgot_password() => runApp(const forgotPassword());

// ignore: camel_case_types
class forgotPassword extends StatelessWidget {
  const forgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: _title,
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(vertical:20),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 10, 10),
              child: ListView(
                children: <Widget>[
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          // Row(
                          //   children: [
                          //     IconButton(
                          //       onPressed: () {
                          //         Navigator.of(context).pop();
                          //OTP       },
                          //       icon: const Icon(Icons.arrow_back_ios_new),
                          //     )
                          //   ],
                          // ),
                          const SizedBox(height: 40),
                          Row(
                            children: const [
                              Text(
                                'Forgot Password',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          Row(
                            children: const [
                              Flexible(
                                child: Text(
                                  'Please provide your registered email address to receive verification code',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                  ),
                                  maxLines: 2, // Set the maximum number of lines
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFFF8FAFC),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextButton(
                      onPressed: () {
                      },
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Try another Method?',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text('Next'),
                      ),
                      onPressed: () {
                        // const Map();////////////////////////////////////////////////////////////////////////////////
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const OTP()),
                        );
                      },
                    ),
                  ),
                ],
              )),
        )
    );
  }
}
