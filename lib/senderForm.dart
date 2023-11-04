import 'package:carrier/homePage.dart';
import 'package:carrier/login.dart';
import 'package:carrier/market.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:file_picker/file_picker.dart';

// ignore: non_constant_identifier_names
sender_form() => runApp(const senderForm());

// ignore: camel_case_types
class senderForm extends StatelessWidget {
  const senderForm({Key? key}) : super(key: key);

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
  TextEditingController nameController = TextEditingController();
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController collectLocController = TextEditingController();
  TextEditingController deliverLocController = TextEditingController();
  int? _selectedValue;
  int? _selectedValue2;

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
                        // const SizedBox(height: 20),
                        Row(
                          children: const [
                            Text(
                              'Sender Details',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFFF8FAFC),
                        labelText: 'Sender Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                    child: TextField(
                      controller: fromController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFFF8FAFC),
                        labelText: 'From',
                      ),
                    ),
                  ),
                  // const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                    child: TextField(
                      controller: toController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFFF8FAFC),
                        labelText: 'To',
                      ),
                    ),
                  ),
                  // const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                    child: TextField(
                      controller: phoneController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFFF8FAFC),
                        labelText: 'Phone Number',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      SizedBox(width: 10),
                      Text(
                        'Collection Point',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Radio(
                          value: 0,
                          groupValue: _selectedValue, // Use the selected value here
                          onChanged: (int? value) {
                            setState(() {
                              _selectedValue = value; // Update the selected value
                            });
                          },
                        ),
                        const Text('Collect from Airport'),
                        Radio(
                          value: 1,
                          groupValue: _selectedValue, // Use the selected value here
                          onChanged: (int? value) {
                            setState(() {
                              _selectedValue = value; // Update the selected value
                            });
                          },
                        ),
                        const Text('Collect from Location'),
                      ],
                    ),
                  ),
                  TextField(
                    controller: collectLocController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color(0xFFF8FAFC),
                      labelText: 'Specify Collect Location',
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      SizedBox(width: 10),
                      Text(
                        'Drop Point',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Radio(
                          value: 0,
                          groupValue: _selectedValue2, // Use the selected value here
                          onChanged: (int? value) {
                            setState(() {
                              _selectedValue2 = value; // Update the selected value
                            });
                          },
                        ),
                        const Text('Deliver at Airport'),
                        Radio(
                          value: 1,
                          groupValue: _selectedValue2, // Use the selected value here
                          onChanged: (int? value) {
                            setState(() {
                              _selectedValue2 = value; // Update the selected value
                            });
                          },
                        ),
                        const Text('Deliver to Location'),
                      ],
                    ),
                  ),
                  TextField(
                    controller: deliverLocController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color(0xFFF8FAFC),
                      labelText: 'Specify Deliver Location',
                    ),
                  ),
                  const SizedBox(height: 30),
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
                        child: Text('Confirm'),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MarketPage()),
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
