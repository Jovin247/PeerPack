import 'package:flutter/material.dart';

class DateBlock extends StatelessWidget {
  const DateBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 7, left: 10, right: 10, bottom: 3),
      decoration: const BoxDecoration(
          color: Color(0xff4285F4),
          borderRadius: BorderRadius.all(Radius.circular(4)),
          boxShadow: [BoxShadow()]),
      child: Column(
        children: [
          const Text(
            '10',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Nov',
            style: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(.6),
            ),
          ),
        ],
      ),
    );
  }
}
