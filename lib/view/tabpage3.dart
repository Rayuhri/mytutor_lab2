import 'package:flutter/material.dart';

class TabPage3 extends StatefulWidget {
  const TabPage3({Key? key}) : super(key: key);

  @override
  State<TabPage3> createState() => _TabPage3State();
}

class _TabPage3State extends State<TabPage3> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile'),
    );
  }
}
