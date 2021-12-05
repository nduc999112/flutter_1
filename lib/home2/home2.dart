import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dialog.dart';
import 'dialog2.dart';

class HomeView2 extends StatefulWidget {
  const HomeView2({Key? key}) : super(key: key);

  @override
  _HomeView2State createState() => _HomeView2State();
}

class _HomeView2State extends State<HomeView2> {
  int i = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  cong() {
    setState(() {
      i++;
    });
  }

  tru() {
    setState(() {
      i--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appbar(),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, int) {
                      return Container(
                        color: Color(0xffe7e7e7),
                        child: Column(
                          children: [
                            total(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.verified_outlined,
                                                color: Color(0xffec846b),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Image.network(
                                                'https://cf.shopee.vn/file/524bfbb2a25e9a91ae5091d8f305bb80',
                                                height: 20,
                                                width: 20,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      left: 10, top: 10),
                                                  child: Text(
                                                    '你好你好你好你好你好',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xfff7a592)),
                                                  )),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Số sản phẩm: 1',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.verified_outlined,
                                                color: Color(0xffec846b),
                                              ),
                                              Image.network(
                                                'https://img.alicdn.com/i1/2135905218/O1CN01jPHlTO1oPtCDcIq6g_!!0-item_pic.jpg_q50s50.jpg',
                                                height: 60,
                                                width: 60,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Flexible(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '中國人中國人中國國國人200',
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                                Text(
                                                  '中國人中國人中國人中國人',
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                                Text(
                                                  '中國人中國人中國人',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      '1x 20.070.9đ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11),
                                                    ),
                                                    Text(
                                                      '(Y5.22)',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 9),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      '20.070.9đ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14),
                                                    ),
                                                    Text(
                                                      '(Y5.22)',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 9),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.delete_rounded,
                                                      color: Color(0xffd2523f),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.border_color,
                                                          color:
                                                              Color(0xff2ea4d3),
                                                        ),
                                                        Text(
                                                          'Ghi chú',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff2ea4d3),
                                                              fontSize: 14),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Icon(
                                                      Icons.favorite,
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey
                                                        .withOpacity(0.4))),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 16,
                                                      horizontal: 16),
                                              child: Column(
                                                children: [
                                                  InkWell(
                                                      onTap: (){
                                                        cong();
                                                      },
                                                      child: Text(
                                                    '+',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text('$i',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16)),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  InkWell(
                                                    onTap: (){
                                                      tru();
                                                    },
                                                    child: Text('-',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Dịch vụ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (ctxt) => Dialog(
                                                        child: DialogView(),
                                                      ));
                                            },
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Lựa chọn dịch vụ',
                                                  style: TextStyle(
                                                      color: Color(0xff2ea4d3)),
                                                ),
                                                Icon(
                                                  Icons.navigate_next,
                                                  color: Color(0xff2ea4d3),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Divider(),
                                      ghichu(context),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Center(
                                                  child: Icon(
                                                Icons.delete_rounded,
                                                color: Color(0xffd2523f),
                                              )),
                                              Text(
                                                'Xóa shop',
                                                style: TextStyle(
                                                    color: Color(0xffd2523f),
                                                    fontSize: 17),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.send,
                                                color: Color(0xff3f8db8),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Đặt hàng',
                                                style: TextStyle(
                                                    color: Color(0xff3f8db8),
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 120,
                  width: double.infinity,
                  color: Color(0xfff2f2f2),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tổng tiền hàng',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '250.771đ',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 16),
                                child: Text('Tiếp tục mua'),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffe95433),
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 16),
                                child: Text(
                                  'Đặt hàng tất cả',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ));
  }
}

PreferredSizeWidget _appbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(0xffec846b),
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        'Giỏ hàng',
        style: TextStyle(fontWeight: FontWeight.normal),
      ),
    ),
    actions: [
      Container(
        margin: EdgeInsets.only(right: 10),
        child: Icon(Icons.home),
      )
    ],
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
              Icon(
                Icons.verified_outlined,
                color: Color(0xffec846b),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Chọn tất cả',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Text('2/2')
        ],
      ),
    ),
  );
}

Widget ghichu(BuildContext context) {
  return Container(
    child: Column(
      children: [
        InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (ctxt) => Dialog(
                      child: DialogView2(),
                    ));
          },
          child: Row(
            children: [
              Icon(
                Icons.border_color,
                color: Color(0xff2ea4d3),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Ghi chú đơn hàng',
                style: TextStyle(color: Color(0xff2ea4d3)),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tiền hàng',
              style: TextStyle(color: Colors.grey),
            ),
            Text('10.000đ',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Phí mua hàng',
              style: TextStyle(color: Colors.grey),
            ),
            Text('20.071đ',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Phí kiểm đếm',
              style: TextStyle(color: Colors.grey),
            ),
            Text('0đ',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Khuyến mại',
              style: TextStyle(color: Colors.grey),
            ),
            Text('0đ',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tổng giá trị',
              style: TextStyle(color: Colors.grey),
            ),
            Text('30.071đ',
                style: TextStyle(
                    color: Color(0xffb75841), fontWeight: FontWeight.bold))
          ],
        ),
      ],
    ),
  );
}
