import 'package:flutter/material.dart';

class Tabbars extends StatefulWidget {
  const Tabbars({Key? key}) : super(key: key);

  @override
  State<Tabbars> createState() => _TabbarsState();
}

class _TabbarsState extends State<Tabbars> with SingleTickerProviderStateMixin {
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(152, 246, 172, 155),
              child: TabBar(
                controller: _tabController,
                indicator: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.red, width: 3.0),
                  ),
                ),
                tabAlignment: TabAlignment.center,
                isScrollable: true,
                indicatorPadding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.red,
                unselectedLabelColor: const Color.fromARGB(255, 146, 146, 146),
                labelPadding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                labelStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                tabs: const [
                  Tab(
                    text: 'Videos',
                  ),
                  Tab(
                    text: 'Recipe',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Content for Videos tab
                  Container(
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        'Videos Content',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  // Content for Recipe tab
                  Container(
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        'Recipe Content',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
