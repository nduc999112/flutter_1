import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home/home.dart';
import 'home2/home2.dart';
import 'home3/home3.dart';
import 'home4_hung/home4.dart';
import 'home5_duc_0712/home5_view.dart';
import 'home8_hung_0912/home_Screen.dart';

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
            home:  homeScreen8(),
          )

      );

  }
}

