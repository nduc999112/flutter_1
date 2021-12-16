import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:flutter_1/home4_hung/home4.dart';

import 'complazintdata.dart';

class ComplaintUi extends StatefulWidget {
  const ComplaintUi({Key? key}) : super(key: key);

  @override
  _ComplaintUiState createState() => _ComplaintUiState();
}

class _ComplaintUiState extends State<ComplaintUi> {
  TabController? _tabController;
  List<dataComplaint>? data;

  @override
  void initState() {
    data = [
      dataComplaint(
        ma: 'NP989777766',
        ld: 'Không nhận được hàng',
        sl: '0',
        sp: '43643774',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      flex: 8,
                      child: DefaultTabController(
                        initialIndex: 0,
                        length: 2,
                        child: Scaffold(
                          body: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                TabBar(
                                  controller: _tabController,
                                  labelColor: Colors.black,
                                  isScrollable: true,
                                  indicatorColor: Color(0xffec846b),
                                  unselectedLabelColor: Colors.grey,
                                  unselectedLabelStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                  labelStyle: TextStyle(
                                    fontSize: 15,
                                  ),
                                  tabs: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Text('Thông tin '),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Text('Trao đổi với NaiPot'),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Expanded(
                                      child: TabBarView(
                                    children: [
                                      SingleChildScrollView(
                                        child: Container(
                                          color: Color(0xfff2f2f2),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            child: Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 10),
                                                    height: SizeConst.h70,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                              'Mã khiếu nại: 8495954'),
                                                          Container(
                                                            height:
                                                                SizeConst.h40,
                                                            width:
                                                                SizeConst.w110,
                                                            decoration: BoxDecoration(
                                                                color: Color(
                                                                    0xff00a65a),
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10))),
                                                            child: Center(
                                                                child: Text(
                                                              'Hoàn thành',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            )),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: SizeConst.h300,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 10),
                                                            child: Text(
                                                              "Khuyến mại sản phẩm 5688787 trong đơn hàng 886668665",
                                                              style: TextStyle(
                                                                  fontSize: 16),
                                                            ),
                                                          ),
                                                          Divider(),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Mã đơn hàng'),
                                                              Text(
                                                                  '${data![0].ma}'),
                                                            ],
                                                          ),
                                                          Divider(),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text('Lý do'),
                                                              Text(
                                                                  '${data![0].ld}'),
                                                            ],
                                                          ),
                                                          Divider(),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text('số lượng'),
                                                              Text(
                                                                  '${data![0].sl}'),
                                                            ],
                                                          ),
                                                          Divider(),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Mã Sản phẩm'),
                                                              Text(
                                                                  '${data![0].sp}'),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    height: SizeConst.h200,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10),
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 10),
                                                            child: Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Text(
                                                                  "Ảnh khiếu nại (tối đa 5 ảnh)",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16),
                                                                )),
                                                          ),
                                                          Divider(),
                                                          Container(
                                                            height:
                                                                SizeConst.h40,
                                                            width:
                                                                SizeConst.w40,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.grey,
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          50)),
                                                            ),
                                                            child: Icon(
                                                              Icons.add_sharp,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    height: SizeConst.h300,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 10),
                                                            child: Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Text(
                                                                  "Lịch sử khứu nại",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16),
                                                                )),
                                                          ),
                                                          Divider(),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text('tạo'),
                                                              Text(
                                                                  '07:12-28/09/2021'),
                                                            ],
                                                          ),
                                                          Divider(),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Đã tiếp nhận'),
                                                              Text(
                                                                  '08:49-28/09/2021'),
                                                            ],
                                                          ),
                                                          Divider(),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Đang xử lý'),
                                                              Text(
                                                                  '15:08-07/10/2021'),
                                                            ],
                                                          ),
                                                          Divider(),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Thành công'),
                                                              Text(
                                                                  '21:29-30/11/2021'),
                                                            ],
                                                          ),
                                                          Divider(),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text('Đóng'),
                                                              Text('-----'),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    height: SizeConst.h220,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10),
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 10),
                                                            child: Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Text(
                                                                  "Sản phẩm",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16),
                                                                )),
                                                          ),
                                                          Divider(),
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Image.network(
                                                                "https://vn-live-05.slatic.net/p/ff17d900fda6683d68b9c72f1a796676.jpg_525x525q80.jpg",
                                                                width: 100,
                                                                height: 140,
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            15),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        '我爱你阿里巴巴阮文阳我爱你阿里\n[COMPLAINT]'),
                                                                    Text(
                                                                        '我爱你阿 (爱你阿)'),
                                                                    Text(
                                                                        'số lượng: 25'),
                                                                    Text(
                                                                        '166.725đ(¥45)'),
                                                                    Text(
                                                                        'Thành tiền 4.168.125đ'),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      HomeView4()
                                    ],
                                  )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget _appbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(0xffec846b),
    leading: Padding(
      padding: const EdgeInsets.only(left: 3),
      child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios)),
    ),
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        'Chi tiết khiếu nại',
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
