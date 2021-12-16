import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:flutter_1/utils/image.dart';
import 'package:flutter_1/view/home11_hung/login.dart';
class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          children: [
                            TextField(
                                style: TextStyle(fontSize: 15.0),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 15.0, 20.0, 15.0),
                                  prefixIcon: Icon(Icons.email),
                                  hintText: "Email ",
                                  hintStyle: TextStyle(fontSize: 15),
                                  border: UnderlineInputBorder(),
                                )),
                            SizedBox(height: 20,),
                            Container(
                              height: SizeConst.h50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffea5433),
                              ),
                              child: Center(child: Text('Khôi phục', style: TextStyle(color: Colors.white),)),
                            ),
                            SizedBox(height: 10,),
                            Center(
                                child: Text('Bạn chưa có tài khoản Naipot', style: TextStyle(fontWeight: FontWeight.bold),)),
                            SizedBox(height: 10,),
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Home11Screen()),
                                );
                              },
                              child: Container(
                                height: SizeConst.h50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(child: Text('Đăng Ký tài khoản')),
                              ),
                            ),
                          ],
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