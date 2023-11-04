import 'package:carrier/changePassword.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
otp() => runApp(const OTP());

// ignore: camel_case_types
class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);

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
  TextEditingController otpController = TextEditingController();

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
                                'We have sent a verification code to the registered email ID. Please enter the code below',
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
                      controller: otpController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFFF8FAFC),
                        labelText: 'Verification Code',
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
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
                          MaterialPageRoute(builder: (context) => const changePassword()),
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
