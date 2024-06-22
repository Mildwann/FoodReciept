// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:food_receipt/components/popular.dart';
import 'package:food_receipt/components/recent.dart';
import 'package:food_receipt/constants/colorApp.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 242, 231),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.08, width * 0.05, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/ramen.png",
                        height: height * 0.04,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Yummie",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colorapp.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.07,
                    child: Image.asset("assets/images/profile.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(width * 0.05, height * 0.03, 0, 0),
              child: const Text(
                "Let's Cook",
                style: TextStyle(
                  fontSize: 35,
                  color: Colorapp.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
              child: const Text(
                "Something Delicious",
                style: TextStyle(
                    fontSize: 40,
                    color: Colorapp.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.02, width * 0.05, 0),
              child: Row(
                children: [
                  const Expanded(
                    flex: 5,
                    child: TextField(
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: EdgeInsets.all(9),
                        hintText: "search",
                        hintStyle: TextStyle(height: 2),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      decoration: const BoxDecoration(
                        color: Colorapp.red,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.apps_rounded),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.03, width * 0.05, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Categories",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(
                        color: Color.fromARGB(255, 61, 61, 61),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Popular
            Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.015, width * 0.05, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Popular(
                      image: "assets/images/chicken1.png",
                      categorie: "Fried food",
                      color: const Color.fromARGB(255, 242, 232, 145),
                    ),
                    SizedBox(width: width * 0.02),
                    Popular(
                      image: "assets/images/meat.png",
                      categorie: "Meat",
                      color: const Color.fromARGB(255, 228, 178, 194),
                    ),
                    SizedBox(width: width * 0.02),
                    Popular(
                      image: "assets/images/mama.png",
                      categorie: "Noodle",
                      color: const Color.fromARGB(255, 196, 177, 200),
                    ),
                    SizedBox(width: width * 0.02),
                    Popular(
                      image: "assets/images/salad.png",
                      categorie: "healthy",
                      color: const Color.fromARGB(255, 178, 212, 178),
                    ),
                    SizedBox(width: width * 0.02),
                    Popular(
                      image: "assets/images/dessert.png",
                      categorie: "dessert",
                      color: const Color.fromARGB(255, 183, 206, 225),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.04, width * 0.05, 0),
              child: Container(
                width: double.infinity,
                height: height * 0.18,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(56, 173, 21, 21),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Undecided on tonight's dinner?",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "We'll craft a recipe using your ingredients.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 67, 66, 66),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: width * 0.5,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colorapp.red),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Text(
                                "Generate Recipe",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            SizedBox(width: width * 0.02),
                            Image.asset("assets/images/magic.png",
                                height: height * 0.03),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(
                    width * 0.05, height * 0.03, width * 0.05, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recent Recipes",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View All",
                        style: TextStyle(
                          color: Color.fromARGB(255, 61, 61, 61),
                        ),
                      ),
                    ),
                  ],
                )),
            // Recent Recipes
            Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.015, width * 0.05, height * 0.04),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Recent(
                      image: "assets/images/chicken1.png",
                      text: "ไก่ทอดน้ำปลา",
                    ),
                    SizedBox(width: width * 0.02),
                    Recent(
                      image: "assets/images/meat.png",
                      text: "ข้าวหน้าเนื้อ",
                    ),
                    SizedBox(width: width * 0.02),
                    Recent(
                      image: "assets/images/mama.png",
                      text: "มาม่าซุปปลาดแง",
                    ),
                    SizedBox(width: width * 0.02),
                    Recent(
                      image: "assets/images/salad.png",
                      text: "สลัดกุ้ง",
                    ),
                    SizedBox(width: width * 0.02),
                    Recent(
                      image: "assets/images/dessert.png",
                      text: "คัพเค้ก",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
