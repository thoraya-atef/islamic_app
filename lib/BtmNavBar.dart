import 'package:flutter/material.dart';
import 'Ahadthview.dart';
import 'radio.dart';
import 'tasbeeh.dart';
import 'quran.dart';

class BtmNavBar extends StatefulWidget {
  @override
  _BtmNavBarState createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  int _currentIndex = 3;
//put here your pages
  List _screens = [
    Text("setting"),
    radio(),
    tasbeeh(),
    view(),
    SurasName()];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        backgroundColor: Color(0xFFB7935F),
        unselectedItemColor: Color(0xFFF8F8F8),
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
        selectedFontSize: 12,
        selectedLabelStyle: TextStyle(fontFamily: 'JF Flat'),
        iconSize: 40,
        items: [
          BottomNavigationBarItem(
            label: "الاعدادات",
            icon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(
            label: "الأذاعة",
            icon: ImageIcon(AssetImage("assets/icons/3.0x/radio@3x.png")),
          ),
          BottomNavigationBarItem(
            label: "التسبيح",
            icon: ImageIcon(AssetImage("assets/icons/3.0x/sebha_blue@3x.png")),
          ),
          BottomNavigationBarItem(
            label: "الأحاديث",
            icon: ImageIcon(AssetImage("assets/icons/3.0x/Group 6@3x.png")),
          ),
          BottomNavigationBarItem(
            label: "القرآن",
            icon: ImageIcon(AssetImage('assets/icons/3.0x/quran@3x.png')),
          ),
        ],
      ),
    );
  }
}
