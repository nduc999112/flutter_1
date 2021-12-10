import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';

class AppConstant{
  static Widget ({String ?tittle}){
    return Container(
      height: SizeConst.h50,
      child: TextField(
        style: TextStyle(
          height: 1,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffe1e1e1)),
            ),
            filled: true,
            contentPadding: EdgeInsets.only(left: 10),
            hintText: tittle,
            hintStyle: TextStyle(color: Color(0xffe2e2e2), fontSize: 15),
            fillColor: Colors.white70),
      ),
    );
  }
}