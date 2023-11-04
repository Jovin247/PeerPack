import 'package:carrier/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsButton extends StatefulWidget {
  const SettingsButton({
    Key? key,
  }) : super(key: key);
  @override
  State<SettingsButton> createState() =>_SettingsButtonState();
}

class _SettingsButtonState extends State<SettingsButton> {

  Future<void> logout () async {
    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String> (
      onSelected: (value) {
        if (value == 'Logout') {
          logout();
        }
      },
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'Logout',
            child: Text('Logout'),
          ),
        ];
      },
      child: const Icon(
        Icons.settings,
        size: 30,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }}