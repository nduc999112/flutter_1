import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:flutter_1/utils/image.dart';
import 'package:flutter_1/view/dashboard/view.dart';
import 'package:flutter_1/view/home/home_ui.dart';
import 'package:flutter_1/view/home11_hung/sign_in.dart';

import 'forgot.dart';

class Home11Screen extends StatefulWidget {
  const Home11Screen({Key? key}) : super(key: key);

  @override
  _Home11ScreenState createState() => _Home11ScreenState();
}

class _Home11ScreenState extends State<Home11Screen>
    with SingleTickerProviderStateMixin {
  @override
  TabController? _tabController;
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  String user1 ='';
  String pass1 = '';

  void  initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Image(
                        image: AssetImage(Utilsimage.logo),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
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
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Đăng nhập'),
                                  ),
                                  Text('Đăng ký'),
                                ],
                              ),
                              Container(
                                child: Expanded(
                                    child: TabBarView(
                                  controller: _tabController,
                                  children: [
                                    SingleChildScrollView(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 30),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  TextField(
                                                    controller: user,
                                                      onChanged: (text) {
                                                       setState(() {
                                                         user1 = text;
                                                         print('usser ${user1.toString()}');
                                                       });
                                                      },
                                                      style: TextStyle(fontSize: 15.0),
                                                      decoration: InputDecoration(
                                                        contentPadding: EdgeInsets.fromLTRB(
                                                            20.0, 15.0, 20.0, 15.0),
                                                        prefixIcon: Icon(Icons.person),
                                                        hintText: "Email và số điện thoại",
                                                        hintStyle: TextStyle(fontSize: 15),
                                                        border: UnderlineInputBorder(),
                                                      )),
                                                  SizedBox(height: 10,),
                                                  TextField(
                                                      obscureText: true,
                                                      controller: pass,
                                                      onChanged: (text) {
                                                       setState(() {
                                                         pass1 = text;
                                                         print('passs ${pass1.toString()}');
                                                       });
                                                      },
                                                      style: TextStyle(fontSize: 15.0),
                                                      decoration: InputDecoration(
                                                        contentPadding: EdgeInsets.fromLTRB(
                                                            20.0, 15.0, 20.0, 15.0),
                                                        prefixIcon: Icon(Icons.lock),
                                                        hintText: "Mật khẩu",
                                                        hintStyle: TextStyle(fontSize: 15),
                                                        border: UnderlineInputBorder(),
                                                      )),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            InkWell(
                                              onTap: (){
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => Forgot()),
                                                );
                                              },
                                                child: Text('Quên mật khẩu?', style: TextStyle(fontSize: 13, color: Colors.grey),)),
                                            SizedBox(height: 15,),
                                           InkWell(
                                             onTap: (){
                                               Navigator.push(
                                                 context,
                                                 MaterialPageRoute(builder: (context) => Dashboard()),
                                               );
                                             },
                                             child: Container(
                                                height: SizeConst.h50,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30),
                                                  color: (user1 =='' && pass1 =='')
                                                   ?Color(0xfff4a898)
                                                    :Color(0xffea5433)

                                                ),
                                                child: Center(child: Text('Đăng Nhập', style: TextStyle(color: Colors.white),)),
                                              ),
                                           ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SignIn()
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
    );
  }
}
