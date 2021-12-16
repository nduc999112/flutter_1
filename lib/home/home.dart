import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';

import 'model.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({Key? key}) : super(key: key);

  @override
  _ViewHomeState createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  bool click = true;
  bool click1 = false;
  List<String>? list;
  List<model>? listmode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = ['Tất cả đơn', 'Đã đăt cọc', 'Đang mua hàng', 'Đã mua hàng'];
    listmode = [
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đã giao hàng',
          shopname: '越南店越南店越南店',
          total: '3/3/-',
          kg: '4.2',
          totalmoney: '984.973đ',
          totalmoney1: '345.973đ',
          totalmoney2: '965684.973đ',
          totalmoney3: '984.973đ',
          totalmone4: '984.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đã giao hàng',
          shopname: '越南店越南店越南店',
          total: '3/3/-',
          kg: '4.2',
          totalmoney: '984.973đ',
          totalmoney1: '345.973đ',
          totalmoney2: '965684.973đ',
          totalmoney3: '984.973đ',
          totalmone4: '984.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đã giao hàng',
          shopname: '越南店越南店越南店',
          total: '3/3/-',
          kg: '4.2',
          totalmoney: '984.973đ',
          totalmoney1: '345.973đ',
          totalmoney2: '965684.973đ',
          totalmoney3: '984.973đ',
          totalmone4: '984.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đã giao hàng',
          shopname: '越南店越南店越南店',
          total: '3/3/-',
          kg: '4.2',
          totalmoney: '984.973đ',
          totalmoney1: '345.973đ',
          totalmoney2: '965684.973đ',
          totalmoney3: '984.973đ',
          totalmone4: '984.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đã giao hàng',
          shopname: '越南店越南店越南店',
          total: '3/3/-',
          kg: '4.2',
          totalmoney: '984.973đ',
          totalmoney1: '345.973đ',
          totalmoney2: '965684.973đ',
          totalmoney3: '984.973đ',
          totalmone4: '984.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đã giao hàng',
          shopname: '越南店越南店越南店',
          total: '3/3/-',
          kg: '4.2',
          totalmoney: '984.973đ',
          totalmoney1: '345.973đ',
          totalmoney2: '965684.973đ',
          totalmoney3: '984.973đ',
          totalmone4: '984.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đã giao hàng',
          shopname: '越南店越南店越南店',
          total: '3/3/-',
          kg: '4.2',
          totalmoney: '984.973đ',
          totalmoney1: '345.973đ',
          totalmoney2: '965684.973đ',
          totalmoney3: '984.973đ',
          totalmone4: '984.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đã giao hàng',
          shopname: '越南店越南店越南店',
          total: '3/3/-',
          kg: '4.2',
          totalmoney: '984.973đ',
          totalmoney1: '345.973đ',
          totalmoney2: '965684.973đ',
          totalmoney3: '984.973đ',
          totalmone4: '984.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đã giao hàng',
          shopname: '越南店越南店越南店',
          total: '3/3/-',
          kg: '4.2',
          totalmoney: '984.973đ',
          totalmoney1: '345.973đ',
          totalmoney2: '965684.973đ',
          totalmoney3: '984.973đ',
          totalmone4: '984.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đã giao hàng',
          shopname: '越南店越南店越南店',
          total: '3/3/-',
          kg: '4.2',
          totalmoney: '984.973đ',
          totalmoney1: '345.973đ',
          totalmoney2: '965684.973đ',
          totalmoney3: '984.973đ',
          totalmone4: '984.973đ'),
    ];
  }

  changeColor() {
    setState(() {
      click = !click;
    });
    print(click);
  }

  changeColor1() {
    setState(() {
      click1 = !click1;
    });
    print(click1);
  }

  int getindex(int index) {
    print(index);
    return index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  textField(),
                  searchButton(),
                  SizedBox(
                    height: 10,
                  ),
                  listviewHoti(),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xffe7e7e7),
                child: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Column(
                      children: [
                        total(),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: listmode?.length,
                          itemBuilder: (context, int) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              child: Container(
                                height: SizeConst.h270,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Image.network(
                                            '${listmode?[int].image}',
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Text(
                                                    '${listmode?[int].id}',
                                                    style: TextStyle(
                                                        color: Color(
                                                            0xffe88b44),
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                  SizedBox(width: SizeConst.w32,),
                                                  Container(
                                                    height: SizeConst.h35,
                                                    width: SizeConst.h120,
                                                    decoration: BoxDecoration(
                                                        color: Color(0xff00a65b),
                                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '${listmode?[int].status}',
                                                        style: TextStyle(
                                                            color: Colors.white),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text('Shop: ${listmode?[int].shopname}'),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                        children: [
                                                         Row(
                                                           children: [
                                                             Text('Số lượng: '),
                                                             Text('${listmode?[int].total}',style: TextStyle(fontWeight: FontWeight.bold),)
                                                           ],
                                                         ),
                                                          SizedBox(width: 30,),
                                                          Row(
                                                            children: [
                                                              Text('Cân nặng:'),
                                                              Text('${listmode?[int].kg} kg',style: TextStyle(fontWeight: FontWeight.bold),)
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('Tiền hàng',style: TextStyle(color: Colors.grey),),
                                                  SizedBox(
                                                    width: 50,
                                                  ),
                                                  Text('${listmode?[int].totalmoney1}')
                                                ],
                                              ),
                                      Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('Tổng các phí',style: TextStyle(color: Colors.grey),),
                                                  SizedBox(
                                                    width: 50,
                                                  ),
                                                  Text('${listmode?[int].totalmoney2}')
                                                ],
                                              ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Tổng giá trị đơn',style: TextStyle(color: Colors.grey),),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Text('${listmode?[int].totalmoney3}',style: TextStyle(
                                            color: Color(0xffc76548),
                                          ),)
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Đã thanh toán',style: TextStyle(color: Colors.grey),),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Text('${listmode?[int].totalmone4}',style: TextStyle(
                                                          color: Color(0xff2a8157),
                                                          fontWeight: FontWeight.bold
                                                        ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Còn thiếu',style: TextStyle(color: Colors.grey),),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Text('${listmode?[int].totalmone4}',style: TextStyle(
                                              color: Color(0xffb42a2c),
                                              fontWeight: FontWeight.bold
                                          ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _appbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xffec846b),
      leading: Padding(
        padding: const EdgeInsets.only(left: 3),
        child: Icon(Icons.arrow_back_ios),
      ),
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text('Danh sách đơn hàng',style: TextStyle(fontWeight: FontWeight.normal),),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Icon(Icons.home),
        )
      ],
    );
  }

  Widget textField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: TextField(
            decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.all(16),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                hintText: 'Mã đơn hàng,tên shop',
                hintStyle: TextStyle(color: Colors.grey))));
  }

  Widget searchButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
            changeColor();
          },
          child: Container(
            height: SizeConst.h40,
            width: SizeConst.w180,
            decoration: BoxDecoration(
                border: Border.all(
                    color:
                        click == true ? Colors.transparent : Colors.grey),
                color: click == true ? Color(0xffe95433) : Colors.white),
            child: Center(
              child: Text(
                'Tìm kiếm',
                style: TextStyle(
                    color: click == true ? Colors.white : Colors.grey,
                    fontSize: 18),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            changeColor();
          },
          child: Container(
            height: SizeConst.h40,
            width: SizeConst.w180,
            decoration: BoxDecoration(
                border: Border.all(
                    color:
                        click == false ? Colors.transparent : Colors.grey),
                color: click == false ? Color(0xffe95433) : Colors.white),
            child: Center(
              child: Text(
                'Nâng cao',
                style: TextStyle(
                    color: click == false ? Colors.white : Colors.grey,
                    fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget listviewHoti() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 32,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: list!.length,
        itemBuilder: (context, int) {
          return InkWell(
            onTap: () {
              getindex(int);
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${list![int]} (15)',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget total() {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 16, right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Số đơn hàng :',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' 17',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Tổng giá trị đơn: ',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  '667.643.770đ',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
