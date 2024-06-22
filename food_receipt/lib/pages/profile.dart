import 'package:flutter/material.dart';

import 'package:food_receipt/components/Profile/name_detail.dart';
import 'package:food_receipt/components/Profile/tabbar.dart';
import 'package:food_receipt/components/Profile/views.dart';
import 'package:food_receipt/constants/colorApp.dart';
import 'package:intl/intl.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String convertNodouble(int number) {
      if (number >= 1000) {
        return NumberFormat('#,###').format(number);
      } else {
        return number.toString();
      }
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 242, 231),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.05, height * 0.04, width * 0.05, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "My Profile",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz_rounded),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.05, height * 0.015, width * 0.05, 0),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                  radius:
                      55.0, // You can adjust the radius as per your requirement
                ),
                const Spacer(),
                SizedBox(
                  height: height * 0.05,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      side: WidgetStateProperty.all(
                        const BorderSide(
                          color: Colorapp.red,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                      ),
                    ),
                    child: const Text(
                      "Edit Profile",
                      style: TextStyle(color: Colorapp.red),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.015,
                ),
                Container(
                  height: height * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colorapp.red),
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_add_alt_1_outlined,
                        color: Colorapp.red,
                      )),
                )
              ],
            ),
          ),
          NameDetail(
            name: "Mild Wannaporn",
            detail:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum eget libero sit amet suscipit. Nunc id mi nec magna mollis finibus. In convallis leo nec neque commodo, ut convallis neque interdum. Nam eget orci velit. Nullam sed neque nec enim fermentum lacinia ac nec justo. Aliquam erat volutpat. Phasellus vestibulum nunc sed gravida tincidunt. Morbi sed ultricies odio. Suspendisse at orci vel risus mollis efficitur. Integer at nisl in velit egestas tempor. Nulla consectetur, ipsum ac pellentesque consequat, sem leo elementum purus, ut pharetra nisi sapien non lacus. Sed vestibulum eleifend purus, eu congue velit vestibulum eu. Ut pharetra ex et tortor condimentum, nec fringilla sapien vestibulum. Donec faucibus lectus id accumsan faucibus.",
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.05, height * 0.03, width * 0.05, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Views(header: "Recipe", amount: "3"),
                Views(header: "Videos", amount: "13"),
                Views(header: "Followers", amount: "14000"),
                Views(header: "Following", amount: "120"),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.03, width * 0.05, 0),
              height: height * 0.1,
              child: Tabbars()),
        ],
      ),
    );
  }
}
