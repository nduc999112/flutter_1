


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:flutter_1/utils/image.dart';

import 'bottomsheet.dart';
class HomeUi extends StatefulWidget {
  const HomeUi({Key? key}) : super(key: key);

  @override
  _HomeUiState createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
    appBar: AppBar(
      title: Text('Trang chủ'),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Color(0xfff0886f),
      actions: [
        IconButton(icon: Icon(Icons.search),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (_) {
                  return Bottomsheet();
                });
          },
        )],
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: SizeConst.h32,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0xfff39c11),
              ),
              child: Center(child: Text('Tỷ giá đổi ngoại tệ 3.865 VNĐ/CNY ', style: TextStyle(color: Colors.white),)),
            ),
          SizedBox(height: 15,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      height: SizeConst.h100,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        color: Color(0xff00a65a)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Column(
                                children: [
                                  Text('0 đ', style: TextStyle(color: Colors.white),),
                                  SizedBox(height: 5,),
                                  Text('Số dư',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                            ),
                           Icon(Icons.attach_money, size: 80,color: Color(0xff058b4e),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: SizeConst.h40,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          color: Color(0xff009551)
                      ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('Xem chi tiết', style: TextStyle(color: Colors.white)),
                           SizedBox(width: 5,),
                           Icon(Icons.east_sharp, color: Colors.white,),
                         ],
                       ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      height: SizeConst.h100,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          color: Color(0xff00c0ef)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Column(
                                children: [
                                  Text('17 đơn', style: TextStyle(color: Colors.white),),
                                  SizedBox(height: 5,),
                                  Text('Đơn hàng nhập',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                            ),
                            Icon(Icons.description_outlined, size: 80,color: Color(0xff00a3ce),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: SizeConst.h40,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          color: Color(0xff00acd6)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Xem chi tiết', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 5,),
                          Icon(Icons.east_sharp, color: Colors.white,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      height: SizeConst.h100,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          color: Color(0xfff39c11)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Column(
                                children: [
                                  Text('2 sản phẩm', style: TextStyle(color: Colors.white),),
                                  SizedBox(height: 5,),
                                  Text('giỏ hàng',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                            ),
                            Icon(Icons.shopping_cart, size: 80,color: Color(0xffd18410),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: SizeConst.h40,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          color: Color(0xffda8c10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Xem chi tiết', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 5,),
                          Icon(Icons.east_sharp, color: Colors.white,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      height: SizeConst.h100,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          color: Color(0xffdd4c39)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Column(
                                children: [
                                  Text('1', style: TextStyle(color: Colors.white),),
                                  SizedBox(height: 5,),
                                  Text('khiếu nại',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                            ),
                            Icon(Icons.sentiment_very_dissatisfied, size: 80,color: Color(0xffc2402f),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: SizeConst.h40,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          color: Color(0xffc64233)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Xem chi tiết', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 5,),
                          Icon(Icons.east_sharp, color: Colors.white,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ],
        ),
      ),
    );
  }
}
