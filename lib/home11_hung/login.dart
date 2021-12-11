import 'package:flutter/material.dart';
import 'package:flutter_1/contants/app_consttans.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:flutter_1/home11_hung/sign_in.dart';
import 'package:flutter_1/utils/image.dart';

class Home11Screen extends StatefulWidget {
  const Home11Screen({Key? key}) : super(key: key);

  @override
  _Home11ScreenState createState() => _Home11ScreenState();
}

class _Home11ScreenState extends State<Home11Screen>
    with SingleTickerProviderStateMixin {
  @override
  TabController? _tabController;

  void initState() {
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
      child: Expanded(
        flex: 4,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Image(
                    image: AssetImage(Utilsimage.logo),
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: DefaultTabController(
                  initialIndex: 1,
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
                          Expanded(
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
                                                style: TextStyle(fontSize: 25.0),
                                                decoration: InputDecoration(
                                                  contentPadding: EdgeInsets.fromLTRB(
                                                      20.0, 15.0, 20.0, 15.0),
                                                  prefixIcon: Icon(Icons.search),
                                                  hintText: "Email và số điện thoại",
                                                  hintStyle: TextStyle(fontSize: 15),
                                                  border: UnderlineInputBorder(),
                                                )),
                                            SizedBox(height: 10,),
                                            TextField(
                                                style: TextStyle(fontSize: 25.0),
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
                                      Text('Quên mật khẩu?', style: TextStyle(fontSize: 13),),
                                      SizedBox(height: 15,),
                                     Container(
                                        height: SizeConst.h50,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Color(0xfff4a898),
                                        ),
                                        child: Center(child: Text('Đăng Nhập', style: TextStyle(color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SignIn()
                            ],
                          ))
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
    );
  }
}
