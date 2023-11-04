import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContentBlock extends StatelessWidget {
  const ContentBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(vertical: 11.5),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          Image.asset(
              'assets/plane.jpg',
            height: 200,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              elevation: 5,
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "TVC to DXB",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'fri nov 22, 2022 at 6:30 P.M',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(.5)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
