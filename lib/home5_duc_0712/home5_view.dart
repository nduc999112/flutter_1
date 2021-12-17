import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:flutter_1/home/home.dart';
import 'package:flutter_1/home10_hung1012/home_screen.dart';
import 'package:flutter_1/home6_hung_0712/home_screen.dart';
import 'package:flutter_1/home7/home7_view.dart';
import 'package:flutter_1/utils/size_utils.dart';
import 'package:flutter_1/view/complaint/complaint_screen.dart';
import 'package:flutter_1/view/deliveryAddress/delivery_address_view.dart';
import 'package:flutter_1/view/pay/viewpay.dart';

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
        child: Container(
          color: Color(0xffeeeeee),
          child: Column(
            children: [
              Container(
                height: SizeConst.h180,
                child: Column(
                  children: [
                    //component1
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: SizeConst.w16,vertical: SizeConst.w12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 2,
                                child: CircleAvatar(
                                  radius: 40.0,
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
                                flex: 5,
                                child: Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('${info?.name}',style: TextStyle(color: Colors.black,fontSize: SizeConst.size16,fontWeight: FontWeight.w300),),
                                      SizedBox(
                                        height: SizeConst.h5,
                                      ),
                                      Text('${info?.email}',style: TextStyle(color: Colors.black,fontSize: SizeConst.size12,fontWeight: FontWeight.w300),),

                                      Row(
                                        children: [
                                          Icon(Icons.star,color:  Color(0xffea5634),size: 24,),
                                          Text('${info?.vip}',style: TextStyle(color:  Color(0xffea5634),fontWeight: FontWeight.w600,fontSize: SizeConst.size17),)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                  flex:1,child:
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Home7Home()),
                                  );
                                },
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(Icons.navigate_next,size: 35,)),
                              ))
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
                      flex: 3,
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              flex:1,
                              child: Padding(
                                padding:  EdgeInsets.all(SizeConst.pad16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      flex:2,
                                        child: Text('${info?.price}',style: TextStyle(color: Color(0xffea5634),fontSize: SizeConst.size18,fontWeight: FontWeight.w500),)),
                                    Flexible(
                                        flex:1,
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
                                padding: EdgeInsets.all(SizeConst.pad16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                        flex:2,
                                        child: Text('${info?.price1}',style: TextStyle(color: Color(0xffea5634),fontSize: SizeConst.size18,fontWeight: FontWeight.w500),)),
                                    Flexible(
                                        flex: 1,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                        flex:2,
                                        child: Text('${info?.price2}',style: TextStyle(color: Color(0xffea5634),fontSize: SizeConst.size18,fontWeight: FontWeight.w500),)),
                                    Flexible(
                                      flex: 1,
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
                function: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewHome()),
                  );
                },
                title: 'Danh sách đơn hàng',
                  icon: Icons.file_copy_outlined
              ),
              Container(
                height: SizeConst.h1,
                color: Colors.grey[300],
              ),
              itemTitle2(
                  function: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ComplaintScreen()),
                    );
                  },
                  title: 'Quản lý khiến nại',
                  icon: Icons.insert_emoticon
              ),
              Container(
                height: SizeConst.h1,
                color: Colors.grey[300],
              ),
              itemTitle2(
                  function: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeSceen6()),
                    );
                  },
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
                color: Colors.grey[300],
              ),
              itemTitle2(
                  function: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen10()),
                    );
                  },
                  title: 'Danh sách phiếu giao hàng',
                  icon: Icons.menu
              ),
              Container(
                height: SizeConst.h1,
                color: Colors.grey[300],
              ),
              itemTitle2(
                  function: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DeliveryAddressView()),
                    );
                  },
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
                color: Colors.grey[300],
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewPay()),
                  );
                },
                child: itemTitle2(
                    title: 'Nạp tiền',
                    icon: Icons.login
                ),
              ),
              Container(
                height: SizeConst.h1,
                color: Colors.grey[300],
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
            margin: EdgeInsets.only(bottom: 20),
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
      child: Text(title!,style: TextStyle(fontSize: SizeConst.size15,fontWeight: FontWeight.w400),),
    ),
  );
}
Widget itemTitle2({IconData?icon,String ? title,bool?hide,Function? function}){
  return Container(
    color: Colors.white,
    child: Padding(
      padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon,size: 20,color: Colors.black45,),
              SizedBox(width: SizeConst.w12,),
              Text(title!,style: TextStyle(fontWeight: FontWeight.w400,fontSize: SizeConst.size14),)
            ],
          ),
          InkWell(
            onTap: (){
              function!.call();
            },
            child: Visibility(
                visible: hide??true,
                child: Icon(Icons.navigate_next,color: Colors.grey,)),
          )
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
