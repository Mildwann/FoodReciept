// ignore_for_file: use_super_parameters, unused_element, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_receipt/components/food_ingredients.dart';
import 'package:food_receipt/components/tabview/tabview.dart';
import 'package:food_receipt/constants/colorApp.dart';
import 'package:food_receipt/pages/home.dart';
import 'package:intl/intl.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    String convertNodouble(int number) {
      if (number >= 1000) {
        return NumberFormat('#,###').format(number);
      } else {
        return number.toString();
      }
    }

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 242, 231),
      appBar: AppBar(
        toolbarHeight: height * 0.1,
        backgroundColor: const Color.fromARGB(255, 247, 242, 231),
        leading: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const homePage()),
                  );
                },
                icon: const Icon(Icons.arrow_back))),
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Fusili Marinara Sauce',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: height * 0.007),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Rate By 200 people',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 15,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.more_horiz_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.02, width * 0.05, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child:
                    Image.asset("assets/images/noodle.jpg", fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.02, width * 0.05, 0),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      height: height * 0.07,
                      child: Image.asset("assets/images/human.png")),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: const Text(
                      "Smith Carreson",
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: width * 0.115,
                    height: height * 0.055,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colorapp.red),
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark_border_outlined,
                          color: Colorapp.red,
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum eget libero sit amet suscipit. Nunc id mi nec magna mollis finibus. In convallis leo nec neque commodo, ut convallis neque interdum. Nam eget orci velit. Nullam sed neque nec enim fermentum lacinia ac nec justo. Aliquam erat volutpat. Phasellus vestibulum nunc sed gravida tincidunt. Morbi sed ultricies odio. Suspendisse at orci vel risus mollis efficitur. Integer at nisl in velit egestas tempor. Nulla consectetur, ipsum ac pellentesque consequat, sem leo elementum purus, ut pharetra nisi sapien non lacus. Sed vestibulum eleifend purus, eu congue velit vestibulum eu. Ut pharetra ex et tortor condimentum, nec fringilla sapien vestibulum. Donec faucibus lectus id accumsan faucibus.",
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.01, width * 0.05, 0),
              child: const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 81, 80, 80),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FoodIngredients(
                  header: "Ingredients",
                  amount: convertNodouble(4),
                  unit: "items",
                ),
                SizedBox(
                  height: height * 0.055,
                  child: const VerticalDivider(
                    thickness: 1,
                    color: Color.fromARGB(255, 81, 80, 80),
                  ),
                ),
                FoodIngredients(
                  header: "Time",
                  amount: convertNodouble(3),
                  unit: "min",
                ),
                SizedBox(
                  height: height * 0.055,
                  child: const VerticalDivider(
                    thickness: 1,
                    color: Color.fromARGB(255, 81, 80, 80),
                  ),
                ),
                FoodIngredients(
                  header: "Calories",
                  amount: convertNodouble(5),
                  unit: "cal",
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(width * 0.05, 0, width * 0.05, 0),
              child: const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 81, 80, 80),
              ),
            ),

            //Tabview
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Container(
                height: height * 0.4,
                margin: EdgeInsets.fromLTRB(
                    width * 0.05, height * 0.02, width * 0.05, height * 0.02),
                child: const TabView(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
