import 'package:flutter/material.dart';
import 'package:flutter_1/contants/color_const.dart';
import 'package:flutter_1/home2/home2.dart';




class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
            // backgroundColor: ColorConst.colorOrange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            // backgroundColor: ColorConst.colorOrange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Business',
            // backgroundColor: ColorConst.colorOrange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            // backgroundColor: ColorConst.colorOrange,
          ),
        ],
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        currentIndex: _selectedIndex,
        selectedItemColor: ColorConst.colorOrange,
        onTap: _onItemTapped,
      ),
    );
  }
}
