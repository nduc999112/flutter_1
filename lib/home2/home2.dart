import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/color_const.dart';
import 'package:flutter_1/contants/size_const.dart';

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
        body: Container(
          color: Color(0xffe7e7e7),
          child: Column(
            children: [
              total(),
              Expanded(
                child: Stack(
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
                                color: ColorConst.colorgray1,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              //component1
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.panorama_fish_eye,
                                                        color: Colors.grey,
                                                        size: SizeConst.size19,
                                                        // color: Color(0xffec846b),
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
                                                    width: SizeConst.w4,
                                                  ),
                                                  Flexible(
                                                    flex: 1,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                            margin: EdgeInsets.only(
                                                                left: 10, top: 15),
                                                            child: Text(
                                                              '???????????????????????????',
                                                              style: TextStyle(
                                                                  color:
                                                                  ColorConst.colorOrange,
                                                                  fontSize: SizeConst.size16,
                                                                fontWeight: FontWeight.bold
                                                              ),
                                                            )),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          'S??? s???n ph???m: 1',
                                                          style: TextStyle(
                                                              color: Colors.grey,
                                                              fontSize: SizeConst.size16
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Divider(),
                                              //component2
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    flex: 1,
                                                    fit: FlexFit.loose,
                                                    child: Row(
                                                      children: [
                                                        Flexible(
                                                          flex:1,
                                                          child: Icon(
                                                            Icons.panorama_fish_eye,
                                                            color: Colors.grey,
                                                            size: SizeConst.size20,
                                                          ),
                                                        ),
                                                        Flexible(
                                                          flex:1,
                                                          child: Image.network(
                                                            'https://img.alicdn.com/i1/2135905218/O1CN01jPHlTO1oPtCDcIq6g_!!0-item_pic.jpg_q50s50.jpg',
                                                            height: SizeConst.h60,
                                                            width: SizeConst.w60,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: SizeConst.w10,
                                                  ),
                                                  Expanded(
                                                    flex: 3,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          '???????????????????????????????????????',
                                                          style:
                                                          TextStyle(fontSize: SizeConst.size13,fontWeight: FontWeight.w500),
                                                        ),
                                                        Text(
                                                          '????????????????????????????????????',
                                                          style:
                                                          TextStyle(fontSize: SizeConst.size13,fontWeight: FontWeight.w500),
                                                        ),
                                                        Text(
                                                          '??????????????????????????? 200g',
                                                          style: TextStyle(
                                                              color: Colors.grey,
                                                              fontSize: SizeConst.size13),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Flexible(
                                                              flex:1,
                                                              fit: FlexFit.loose,
                                                              child: Text(
                                                                '1x 20.070.9?? ',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight.w400,
                                                                    fontSize: SizeConst.size14),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              flex:1,
                                                              fit: FlexFit.loose,
                                                              child: Text(
                                                                '(Y5.22)',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight.w400,
                                                                    fontSize: SizeConst.size12),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: SizeConst.h5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Flexible(
                                                              flex:1,
                                                              fit: FlexFit.loose,
                                                              child: Text(
                                                                '20.070.9?? ',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight.w400,
                                                                    fontSize: SizeConst.size15),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              flex:1,
                                                              fit: FlexFit.loose,
                                                              child: Text(
                                                                '(Y5.22)',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight.w400,
                                                                    fontSize: SizeConst.size12),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 7,
                                                        ),
                                                        Text('Ghi ch??',style: TextStyle(
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            fontSize: SizeConst.size16),),
                                                        SizedBox(
                                                          height: 7,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons.delete_rounded,
                                                              color: Color(0xffd2523f),
                                                              size: 20,
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
                                                                  size: 20,
                                                                ),
                                                                Text(
                                                                  'Ghi ch??',
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
                                                              size: 20,
                                                              color: Colors.red,
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Flexible(
                                                    flex: 1,
                                                    fit: FlexFit.loose,
                                                    child: Container(
                                                      margin: EdgeInsets.only(right: 10),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors.grey
                                                                  .withOpacity(0.4))),
                                                      child: Padding(
                                                        padding:
                                                         EdgeInsets.symmetric(
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
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Divider(),
                                              //component3
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    'D???ch v???',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: SizeConst.size17),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      showDialog(
                                                          context: context,
                                                          builder: (ctxt) => DialogView());
                                                    },
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          'L???a ch???n d???ch v???',
                                                          style: TextStyle(
                                                              color: Color(0xff2ea4d3),
                                                              fontSize: SizeConst.size16
                                                          ),
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
                                              //component4
                                              ghichu(context),
                                              Divider(),
                                              //componnet5
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Flexible(
                                                    flex: 1,
                                                    fit: FlexFit.tight,
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.delete_rounded,
                                                          color: Color(0xffd2523f),
                                                        ),
                                                        Text(
                                                          'X??a shop',
                                                          style: TextStyle(
                                                              color: Color(0xffd2523f),
                                                              fontSize: 15),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Flexible(
                                                    flex: 0,
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.send,
                                                          color: Color(0xff3f8db8),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          '?????t h??ng',
                                                          style: TextStyle(
                                                              color: Color(0xff3f8db8),
                                                              fontSize: 17,
                                                              fontWeight:
                                                              FontWeight.bold),
                                                        )
                                                      ],
                                                    ),
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
                          Container(
                            height: SizeConst.h150,
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: SizeConst.h130,
                          width: double.infinity,
                          color: Color(0xfff2f2f2),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: SizeConst.h16, horizontal: SizeConst.w16),
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Row (
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex:1,
                                        child: Text(
                                          'T???ng ti???n h??ng',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      Flexible(
                                        flex:1,
                                        child: Text(
                                          '250.771??',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConst.h10,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          width:SizeConst.w180,
                                          height: SizeConst.h50,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.white,
                                              border: Border.all(color: Colors.grey)),
                                          child: Center(child: Text('Ti???p t???c mua')),
                                        ),
                                      ),
                                      SizedBox(
                                        width: SizeConst.w10,
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          width:SizeConst.w180,
                                          height: SizeConst.h50,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Color(0xffe95433),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '?????t h??ng t???t c???',
                                              style: TextStyle(color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}

PreferredSizeWidget _appbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(0xffec846b),
    centerTitle: true,
    title: Padding(
      padding:  EdgeInsets.only(top: 20),
      child: Text(
        'Gi??? h??ng',
        style: TextStyle(fontWeight: FontWeight.normal,fontSize: SizeConst.size17,color: Colors.white60),
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
    margin: EdgeInsets.only(top: 5, left: 8, right: 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConst.w8,vertical: SizeConst.w16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex:1,
                  child: Icon(
                    Icons.panorama_fish_eye,
                    color: Colors.grey,
                    size: SizeConst.size19,
                  ),
                ),
                SizedBox(
                  width: SizeConst.w10,
                ),
                Flexible(
                  flex:1,
                  child: Text(
                    'Ch???n t???t c???',
                    style:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Text('2/2',style:
            TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),
          )
        ],
      ),
    ),
  );
}

Widget ghichu(BuildContext context) {
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 8),
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (ctxt) => Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                        child: DialogView2(),
                      ));
            },
            child: Row(
              children: [
                Icon(
                  Icons.border_color,
                  color: Color(0xff2ea4d3),
                  size: SizeConst.size20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Ghi ch?? ????n h??ng',
                  style: TextStyle(color: Color(0xff2ea4d3),fontSize: SizeConst.size16),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text('Ghi ch?? ????n h??ng',style: TextStyle(color: Colors.grey),),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ti???n h??ng',
                style: TextStyle(color: Colors.grey),
              ),
              Text('10.000??',
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w500))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ph?? mua h??ng',
                style: TextStyle(color: Colors.grey),
              ),
              Text('20.071??',
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w500))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ph?? ki???m ?????m',
                style: TextStyle(color: Colors.grey),
              ),
              Text('0??',
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w500))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Khuy???n m???i',
                style: TextStyle(color: Colors.grey),
              ),
              Text('0??',
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w500))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'T???ng gi?? tr???',
                style: TextStyle(color: Colors.grey),
              ),
              Text('30.071??',
                  style: TextStyle(
                      color: Color(0xffb75841), fontWeight: FontWeight.w500))
            ],
          ),
        ],
      ),
    ),
  );
}
