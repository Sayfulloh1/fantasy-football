import 'package:fantasy/presentation/pages/nav_bar_pages/balance/balance_page.dart';
import 'package:fantasy/presentation/pages/nav_bar_pages/settings_page.dart';
import 'package:flutter/material.dart';

import 'nav_bar_pages/home_page.dart';

class MyPages extends StatefulWidget {
  const MyPages({super.key});

  @override
  State<MyPages> createState() => _MyPagesState();
}

class _MyPagesState extends State<MyPages> {
  late PageController controller;
  var selected = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageView(
        onPageChanged: (index){
          setState(() {
            selected = index;
          });

        },
        controller: controller,
        children: const [
          HomePage(),
          BalancePage(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Colors.blue,
        currentIndex: selected,
        selectedLabelStyle: TextStyle(fontSize: screenHeight / 50),
        unselectedLabelStyle: TextStyle(fontSize: screenHeight / 50),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            selected = index;
            controller.animateToPage(index,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn);
          });
        },
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home_outlined),
              icon: Icon(Icons.home_outlined),
              label: 'Asosiy'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet), label: 'Balans'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Sozlamalar'),

          //BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
        ],
      ),
    );
  }
}
