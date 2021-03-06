import 'package:flutter/material.dart';
import 'package:flutter_1/contants/color_const.dart';
import 'package:flutter_1/home2/home2.dart';
import 'package:flutter_1/home5_duc_0712/home5_view.dart';
import 'package:flutter_1/view/home/home_ui.dart';
import 'package:flutter_1/view/notifications/notifit_Home.dart';




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
    HomeUi(),
    HomeView2(),
    NotifitUi(),
    Home5View(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            icon: Icon(Icons.shopping_cart),
            label: 'Giỏ hàng',
            // backgroundColor: ColorConst.colorOrange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Thông báo',
            // backgroundColor: ColorConst.colorOrange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Cá nhân',
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
