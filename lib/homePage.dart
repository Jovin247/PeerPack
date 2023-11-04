import 'package:carrier/carrierForm.dart';
import 'package:carrier/contentBlock.dart';
import 'package:carrier/dateBlock.dart';
import 'package:carrier/senderForm.dart';
import 'package:carrier/settingsButton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formGlobalKey1 = GlobalKey<FormState>();

  List<BottomNavigationBarItem> _getBottomNavBarItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Sender",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.shop),
        label: "Market",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.travel_explore),
        label: "Carrier",
      ),
    ];
  }

  Widget _buildNavigationSheet() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedLabelStyle:
      const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
      selectedItemColor: const Color(0xff97CB43),
      currentIndex: 0,
      backgroundColor: Colors.white,
      elevation: 0,
      onTap: (int index) {
        if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const carrierForm()),
          );
        }
        else if (index == 2) { // Index 2 corresponds to the notifications icon
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const senderForm()),
          );
        }
      },
      items: _getBottomNavBarItems(),
    );
  }

  Widget _getTextField(
      GlobalKey<FormState> formKey,
      String hintText, {
        bool isPassword = false,
      }
      // Function valueSetter,
      ) {
    // final isFieldInFocus = false;

    return Padding(
      padding:
      EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            color: const Color(0xff4285F4).withOpacity(.3)),
        alignment: Alignment.center,
        child: Form(
          key: formKey,
          child: TextFormField(
            textAlign: TextAlign.start,
            onChanged: (val) {
              // valueSetter(val);
            },
            validator: (val) {
              return null;
            },
            keyboardType: TextInputType.text,
            obscureText: isPassword,
            decoration: InputDecoration(
              filled: false,
              suffixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              counterText: "",
              errorStyle: const TextStyle(fontSize: 8),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.black.withOpacity(.4),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            textInputAction: TextInputAction.done,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 49),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: _getTextField(_formGlobalKey1, 'search'),
                ),
                const SizedBox(width: 15),
                const SizedBox(
                  width: 30,
                  child: SettingsButton(),
                )
              ],
            ),
            const SizedBox(
              height: 23,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(6, (index) => const DateBlock()),
              ],
            ),
            const SizedBox(
              height: 37,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 32,
                      width: 3,
                      decoration: const BoxDecoration(
                          color: Color(0xffFBBC04),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Trip History',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

              ],
            ),
            const SizedBox(
              height: 21,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [...List.generate(5, (index) => const ContentBlock())],
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
      bottomNavigationBar: _buildNavigationSheet(),
      body: _buildBody(),
    );
  }
}
