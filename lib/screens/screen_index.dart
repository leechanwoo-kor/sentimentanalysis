import 'package:flutter/material.dart';
import 'package:sentimentanalysis/tabs/tab_analysis.dart';
import 'package:sentimentanalysis/tabs/tab_document.dart';
import 'package:sentimentanalysis/tabs/tab_help.dart';
import 'package:sentimentanalysis/tabs/tab_home.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() {
    return _IndexScreenState();
  }
}

class _IndexScreenState extends State<IndexScreen> {
  int _currentIndex = 0;

  final List<Widget> tabs = [
    TabHome(),
    TabDocument(),
    TabAnalysis(),
    TabHelp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 44,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontSize: 12),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner_outlined), label: 'document'),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics_outlined), label: 'analysis'),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: 'help'),
        ],
      ),
    );
  }
}
