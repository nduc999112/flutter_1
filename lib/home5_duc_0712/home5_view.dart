import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:flutter_1/utils/size_utils.dart';

class Home5View extends StatefulWidget {
  const Home5View({Key? key}) : super(key: key);

  @override
  _Home5ViewState createState() => _Home5ViewState();
}

class _Home5ViewState extends State<Home5View> {
  Info ?info;
  @override
  void initState() {
    // TODO: implement initState
    info=Info(name: 'Nguyễn Trần Tuấn',email: 'shopcongnghe.cskh@gmail.com',vip: 'VIP1',price: '59.419đ',price1: '0đ',price2: '59.419đ');
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    print('${MediaQuery.of(context).size.width}');
    print('${MediaQuery.of(context).size.height}');
    return Scaffold(
      appBar: _appbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: SizeConst.h200,
              child: Column(
                children: [
                  //component1
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: SizeConst.w8,vertical: SizeConst.w12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: 2,
                              child: CircleAvatar(
                                radius: 55.0,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 50.0,
                                  backgroundImage:
                                  NetworkImage("https://www.anthedesign.fr/w2015/wp-content/uploads/2016/12/couleur-du-web-2017.jpg"),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: SizeConst.w10,
                            ),
                            Flexible(
                              flex: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${info?.name}',style: TextStyle(color: Colors.black,fontSize: SizeConst.size18,fontWeight: FontWeight.w500),),
                                  SizedBox(
                                    height: SizeConst.h5,
                                  ),
                                  Text('${info?.email}',style: TextStyle(color: Colors.black,fontSize: SizeConst.size13,fontWeight: FontWeight.w500),),

                                  Row(
                                    children: [
                                      Icon(Icons.star,color:  Color(0xffea5634),size: 28,),
                                      Text('${info?.vip}',style: TextStyle(color:  Color(0xffea5634),fontWeight: FontWeight.bold,fontSize: SizeConst.size19),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Flexible(
                                flex:1,child:
                            Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.navigate_next,size: 35,)))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    height: SizeConst.h1,
                  ),
                  //component2
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            flex:1,
                            child: Padding(
                              padding:  EdgeInsets.all(SizeConst.pad16),
                              child: Column(
                                children: [
                                  Flexible(
                                    flex:1,
                                      child: Text('${info?.price}',style: TextStyle(color: Color(0xffea5634),fontSize: SizeConst.size18,fontWeight: FontWeight.bold),)),
                                  Flexible(
                                      flex:2,
                                      child: Text('Số dư tài khoản',style: TextStyle(fontSize: SizeConst.size13),))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: SizeConst.pad8),
                            child: Container(
                              color: Colors.grey[300],
                              width: SizeConst.w1,

                            ),
                          ),
                          Flexible(
                            flex:1,
                            child: Padding(
                              padding:   EdgeInsets.all(SizeConst.pad16),
                              child: Column(
                                children: [
                                  Flexible(
                                      flex:1,
                                      child: Text('${info?.price1}',style: TextStyle(color: Color(0xffea5634),fontSize: SizeConst.size18,fontWeight: FontWeight.bold),)),
                                  Flexible(
                                      flex: 2,
                                      child: Text('Số dư đóng băng',style: TextStyle(fontSize: SizeConst.size13),))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: SizeConst.pad8),
                            child: Container(
                              color: Colors.grey[300],
                              width: SizeConst.w1,

                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.all(SizeConst.pad16),
                              child: Column(
                                children: [
                                  Flexible(
                                      flex:1,
                                      child: Text('${info?.price2}',style: TextStyle(color: Color(0xffea5634),fontSize: SizeConst.size18,fontWeight: FontWeight.bold),)),
                                  Flexible(
                                    flex: 2,
                                      child: Text('Số dư khả dụng',style: TextStyle(fontSize: SizeConst.size13),))
                                ],
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
            itemTittle(title: 'Quản lý nhập hàng',),
            itemTitle2(
              title: 'Danh sách đơn hàng',
                icon: Icons.file_copy_outlined
            ),
            Container(
              height: SizeConst.h1,
              color: Colors.grey[400],
            ),
            itemTitle2(
                title: 'Quản lý khiến nại',
                icon: Icons.insert_emoticon
            ),
            Container(
              height: SizeConst.h1,
              color: Colors.grey[400],
            ),
            itemTitle2(
                title: 'Quản lý kiện hàng',
                icon: Icons.now_widgets
            ),
            //quản lý giao hàng
            itemTittle(title: 'Quản lý giao hàng',),
            itemTitle2(
                title: 'Yêu cầu giao hàng',
                icon: Icons.bungalow
            ),
            Container(
              height: SizeConst.h1,
              color: Colors.grey[400],
            ),
            itemTitle2(
                title: 'Danh sách phiếu giao hàng',
                icon: Icons.menu
            ),
            Container(
              height: SizeConst.h1,
              color: Colors.grey[400],
            ),
            itemTitle2(
                title: 'Địa chỉ nhận hàng',
                icon: Icons.location_on_sharp
            ),
            itemTittle(title: 'Quản lý ví tiền',),
            itemTitle2(
                title: 'Lịch sử giao dịch',
                icon: Icons.swap_horiz_outlined
            ),
            Container(
              height: SizeConst.h1,
              color: Colors.grey[400],
            ),
            itemTitle2(
                title: 'Nạp tiền',
                icon: Icons.login
            ),
            Container(
              height: SizeConst.h1,
              color: Colors.grey[400],
            ),
            itemTitle2(
                title: 'Rút tiền',
                icon: Icons.logout
            ),
            itemTittle(title: 'Góc thông tin',),
            itemTitle2(
                title: 'Biểu phí',
                icon: Icons.flag_rounded
            ),
            Container(
              height: SizeConst.h1,
              color: Colors.grey[400],
            ),
            itemTitle2(
                title: 'Quy định và chính sách',
                icon: Icons.logout
            ),
            Container(
               color: Colors.grey[300],
              height: SizeConst.h10,
            ),
            itemTitle2(
                title: 'Sản phẩm đã lưu',
                icon: Icons.favorite,
              hide: false
            ),
            Container(
              color: Colors.grey[300],
              height: SizeConst.h10,
            ),
            itemTitle2(
                title: 'Hotline tư vấn: 1900.633.432',
                icon: Icons.workspaces,
                hide: false
            ),
            Container(
              color: Colors.grey[300],
              height: SizeConst.h10,
            ),
        Container(
          color: Colors.white,
          child: Padding(
            padding:  EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Đăng xuất',style: TextStyle(fontWeight: FontWeight.w400,fontSize: SizeConst.size17,color: Color(0xffec846b),),)
                  ],
                ),
                Icon(Icons.logout,color: Color(0xffec846b),)
              ],
            ),
          ),
        )
          ],
        ),
      ),
    );
  }
}
PreferredSizeWidget _appbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(0xffec846b),
    centerTitle: true,
    title: Padding(
      padding:  EdgeInsets.only(top: SizeConst.h3),
      child: Text('Cá nhân',style: TextStyle(fontWeight: FontWeight.normal,fontSize: SizeConst.size19),),
    ),

  );
}
Widget itemTittle({String ?title}){
  return Container(
    height: SizeConst.h40,
    width: double.infinity,
    color: Color(0xffeeeeee),
    child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: SizeConst.w16,vertical: SizeConst.h10),
      child: Text(title!,style: TextStyle(fontSize: SizeConst.size16,fontWeight: FontWeight.w500),),
    ),
  );
}
Widget itemTitle2({IconData?icon,String ? title,bool?hide}){
  return Container(
    color: Colors.white,
    child: Padding(
      padding:  EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(width: SizeConst.w12,),
              Text(title!,style: TextStyle(fontWeight: FontWeight.w400,fontSize: SizeConst.size17),)
            ],
          ),
          Visibility(
              visible: hide??true,
              child: Icon(Icons.navigate_next,color: Colors.grey,))
        ],
      ),
    ),
  );
}
class Info{
  String? name;
  String ?email;
  String ?vip;
  String ?price;
  String?price1;
  String ?price2;
  Info({this.name,this.email,this.vip,this.price,this.price1,this.price2});
}
