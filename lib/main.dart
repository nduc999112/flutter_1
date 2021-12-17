import 'package:flutter/material.dart';
import 'package:flutter_1/home10_hung1012/home_screen.dart';

import 'package:flutter_1/home6_hung_0712/home_screen.dart';
import 'package:flutter_1/home7/home7_view.dart';
import 'package:flutter_1/view/complaint/complaint_screen.dart';
import 'package:flutter_1/view/complaint/complaint_ui.dart';
import 'package:flutter_1/view/dashboard/view.dart';
import 'package:flutter_1/view/home/home_ui.dart';
import 'package:flutter_1/view/home11_hung/login.dart';
import 'package:flutter_1/view/save/save_screen.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home/home.dart';
import 'home2/home2.dart';
import 'home3/home3.dart';
import 'home4_hung/home4.dart';
import 'home5_duc_0712/home5_view.dart';
import 'home8_hung_0912/home_Screen.dart';
import 'home9_duc/home9_view.dart';

void main() {
  runApp(
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      ScreenUtilInit(
        designSize: Size(392.72727272727275, 834.9090909090909),
          builder: ()=> MaterialApp(
            debugShowCheckedModeBanner: false,

            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home:  Home11Screen(),
          )

      );

  }
}

