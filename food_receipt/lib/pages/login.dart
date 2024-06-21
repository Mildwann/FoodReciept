import 'package:flutter/material.dart';
import 'package:food_receipt/constants/colorApp.dart';
import 'package:food_receipt/constants/fonts.dart';
import 'package:food_receipt/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colorapp.red,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.4,
              child: Image.asset("assets/images/Foodtime.png"),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(225, 252, 242, 242),
                      Color.fromARGB(225, 255, 241, 241),
                      Color.fromARGB(225, 235, 214, 214),
                      Color.fromARGB(182, 225, 157, 157),
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: height * 0.03),
                        child: const Text(
                          "Login",
                          style: Fonts.big,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                            horizontal: width * 0.05, vertical: height * 0.04),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(172, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05),
                              child: TextField(
                                decoration: InputDecoration(
                                  isCollapsed: true,
                                  contentPadding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  filled: true,
                                  fillColor:
                                      const Color.fromARGB(0, 253, 251, 251),
                                  border: InputBorder.none,
                                  hintText: "creative@gmail.com",
                                  hintStyle: const TextStyle(
                                      color:
                                          Color.fromARGB(255, 199, 197, 197)),
                                  prefixIcon: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Image.asset(
                                      'assets/images/user.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.black,
                              height: 0.2, // Divider height
                              width: width * 0.75,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05),
                              child: TextField(
                                decoration: InputDecoration(
                                  isCollapsed: true,
                                  contentPadding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  prefixIcon: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Image.asset(
                                      'assets/images/padlock.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor:
                                      const Color.fromARGB(0, 255, 255, 255),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "create account",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 120, 120, 120)),
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(
                                    Colors.black),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 23, vertical: 18),
                                child: Text(
                                  "Log in",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const homePage()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: height * 0.05), // Add space at the bottom
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
