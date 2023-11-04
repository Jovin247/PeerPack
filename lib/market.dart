import 'package:carrier/settingsButton.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

Widget createCard() {
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

class _MarketPageState extends State<MarketPage> {
  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 49),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Text(
                  'Carriers Near You',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 30),
                SizedBox(
                  width: 30,
                  child: SettingsButton(),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    // \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
                    createCard()
                    // \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _buildBody(),
    );
  }
}
