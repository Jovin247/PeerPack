import 'package:carrier/homePage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:file_picker/file_picker.dart';

// ignore: non_constant_identifier_names
carrier_form() => runApp(const carrierForm());

// ignore: camel_case_types
class carrierForm extends StatelessWidget {
  const carrierForm({Key? key}) : super(key: key);

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
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController pnrController = TextEditingController();
  TextEditingController ticketController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2101),
    ))!;

    if (picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dateController.text = DateFormat('MMMM dd, yyyy').format(selectedDate!);;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked = (await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    ))!;

    if (picked != selectedTime) {
      setState(() {
        selectedTime = picked;
        timeController.text = selectedTime!.format(context);

      });
    }
  }

  Future<void> _uploadFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      PlatformFile file = result.files.first; // You can access the selected file here:
      print(file.name); // file.bytes (file content as bytes), file.size (file size in bytes), file.extension (file extension). You can now handle the selected file, e.g., upload it to a server.
    } else {
      // User canceled the file picker.
    }
  }

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
                              'Carrier Details',
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
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: AbsorbPointer(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                          child: TextField(
                            controller: dateController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFF8FAFC),
                              labelText: 'Date',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10), // Adjust the width as needed for spacing
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _selectTime(context);
                      },
                      child: AbsorbPointer(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                          child: TextField(
                            controller: timeController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFF8FAFC),
                              labelText: 'Time',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
                      controller: pnrController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFFF8FAFC),
                        labelText: 'PNR Number',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      SizedBox(width: 10),
                      Text(
                        'Upload Ticket',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                      'assets/ticket.png',
                    width: 100,
                    height: 100,
                  ),
                  // const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(width: 80),
                      const Text(
                        'Upload your ticket here',
                        style: TextStyle(
                            fontSize: 15
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            _uploadFile();
                          },
                          child: const Text(
                            'Browse',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.green
                            ),
                          )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                          child: TextField(
                            controller: weightController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFF8FAFC),
                              labelText: 'Available Weight',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10), // Adjust the width as needed for spacing
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                          child: TextField(
                            controller: priceController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none
                              ),
                              filled: true,
                              fillColor: Color(0xFFF8FAFC),
                              labelText: 'Price per kg',
                            ),
                          ),
                        ),
                      ),
                    ],
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
                        showDialog(
                          context: context, // You need to provide the context
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                              ),
                              title: const Text('Alert'),
                              content: const Text('Ad posted successfully!'),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Ok'),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomePage()),
                                    );
                                  },
                                ),
                              ],
                            );
                          },
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
