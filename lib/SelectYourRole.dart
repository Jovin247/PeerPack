import 'package:flutter/material.dart';

class SelectYourRole extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Your Role'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CarrierScreen()),
                );
              },
              child: Text('Carrier'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SenderScreen()),
                );
              },
              child: Text('Sender'),
            ),
          ],
        ),
      ),
    );
  }
}

class CarrierScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrier Screen'),
      ),
      // Add your Carrier Screen UI components here
    );
  }
}

class SenderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sender Screen'),
      ),
      // Add your Sender Screen UI components here
    );
  }
}
