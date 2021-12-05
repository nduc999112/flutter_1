import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          status: 'Đang vận chuyển TQ-VN',
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
          status: 'Đang vận chuyển TQ-VN',
          shopname: '越南店越南店越南店',
          total: '6/3/-',
          kg: '8.2',
          totalmoney: '984.973đ',
          totalmoney1: '245.973đ',
          totalmoney2: '665684.973đ',
          totalmoney3: '884.973đ',
          totalmone4: '984.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đang vận chuyển TQ-VN',
          shopname: '越南店越南店越南店',
          total: '3/9/-',
          kg: '9.2',
          totalmoney: '984.973đ',
          totalmoney1: '345.973đ',
          totalmoney2: '965684.973đ',
          totalmoney3: '984.973đ',
          totalmone4: '984.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đang vận chuyển TQ-VN',
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
          status: 'Đang vận chuyển TQ-VN',
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
          status: 'Đang vận chuyển TQ-VN',
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
          status: 'Đang vận chuyển TQ-VN',
          shopname: '越南店越南店越南店',
          total: '9/3/-',
          kg: '9.2',
          totalmoney: '984.973đ',
          totalmoney1: '345.973đ',
          totalmoney2: '965684.973đ',
          totalmoney3: '984.973đ',
          totalmone4: '984.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đang vận chuyển TQ-VN',
          shopname: '越南店越南店越南店',
          total: '3/9/-',
          kg: '6.2',
          totalmoney: '984.973đ',
          totalmoney1: '845.973đ',
          totalmoney2: '565684.973đ',
          totalmoney3: '384.973đ',
          totalmone4: '884.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đang vận chuyển TQ-VN',
          shopname: '越南店越南店越南店',
          total: '6/3/-',
          kg: '46.2',
          totalmoney: '884.973đ',
          totalmoney1: '375.973đ',
          totalmoney2: '765684.973đ',
          totalmoney3: '884.973đ',
          totalmone4: '684.973đ'),
      model(
          image: 'https://cf.shopee.vn/file/9cdd067cb7fe19ade918db0a503287b9',
          id: 'NP45643567',
          status: 'Đang vận chuyển TQ-VN',
          shopname: '越南店越南店越南店',
          total: '3/5/-',
          kg: '4.23',
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
                        Container(
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: listmode?.length,
                            itemBuilder: (context, int) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 6),
                                child: Container(
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
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      '${listmode?[int].id}',
                                                      style: TextStyle(
                                                          color: Color(0xffe88b44),
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                    SizedBox(width: 5,),
                                                    Container(
                                                      color: Color(0xffee9a11),
                                                      child: Padding(
                                                        padding:
                                                        const EdgeInsets.all(6.0),
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
                          ),
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
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                changeColor();
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color:
                            click == true ? Colors.transparent : Colors.grey),
                    color: click == true ? Color(0xffe95433) : Colors.white),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 4),
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
                decoration: BoxDecoration(
                    border: Border.all(
                        color:
                            click == false ? Colors.transparent : Colors.grey),
                    color: click == false ? Color(0xffe95433) : Colors.white),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 4),
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
        ));
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
                  // border:  Border.all(color: click==true?Colors.transparent:Colors.grey),
                  color: Color(0xffe95433)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${list![int]} (15)',
                  style: TextStyle(color: Colors.white),
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
