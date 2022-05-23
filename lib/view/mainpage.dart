import 'package:flutter/material.dart';
import 'package:mytutor/view/tabpage1.dart';
import 'package:mytutor/model/user.dart';

import 'package:mytutor/view/tabpage3.dart';

class Mainpage extends StatefulWidget {
  // final User user;
  const Mainpage({
    Key? key,
  }) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  late List<Widget> tabchildren;
  int _currentIndex = 0;
  String maintitle = "Home";
  @override
  void initState() {
    super.initState();
    tabchildren = [
      const TabPage1(),
      const TabPage3(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MyTutor'),
        ),
        body: tabchildren[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black), label: ('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.black),
                label: ('Profile'))
          ],
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        maintitle = "Home";
      }

      if (_currentIndex == 2) {
        maintitle = "Profile";
      }
    });
  }
}
