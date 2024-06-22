// ignore_for_file: library_private_types_in_public_api, use_super_parameters

import 'package:flutter/material.dart';
import 'package:food_receipt/components/Tabview/ingredient_tabview.dart';
import 'package:food_receipt/components/Tabview/instruction_tabview.dart';
import 'package:food_receipt/constants/colorApp.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(152, 246, 172,
                    155), // Ensure the background color matches Scaffold
                child: TabBar(
                  dividerColor: const Color.fromARGB(255, 105, 103, 103),
                  controller: _tabController,
                  tabAlignment: TabAlignment.center,
                  isScrollable: true,
                  indicatorPadding: EdgeInsets.zero,
                  indicatorWeight: 3,
                  indicatorColor: Colorapp.red,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colorapp.red,
                  unselectedLabelColor:
                      const Color.fromARGB(255, 146, 146, 146),
                  labelPadding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  labelStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  tabs: const [
                    Tab(
                      text: 'Ingredient',
                    ),
                    Tab(
                      text: 'Instruction',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    IngredientTabview(),
                    InstructionTabview(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
