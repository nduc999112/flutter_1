import 'package:flutter/material.dart';
import 'package:flutter_1/contants/app_consttans.dart';
import 'package:flutter_1/contants/size_const.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String ?selectState;
  List<String> state = ['kho 1', 'kho 2',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
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
                          hintText: "Email ",
                          hintStyle: TextStyle(fontSize: 15),
                          border: UnderlineInputBorder(),
                        )),
                    SizedBox(height: 10,),
                    TextField(
                        style: TextStyle(fontSize: 25.0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(
                              20.0, 15.0, 20.0, 15.0),
                          prefixIcon: Icon(Icons.phone),
                          hintText: "Số điện thoại",
                          hintStyle: TextStyle(fontSize: 15),
                          border: UnderlineInputBorder(),
                        )),
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
                    TextField(
                        style: TextStyle(fontSize: 25.0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(
                              20.0, 15.0, 20.0, 15.0),
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Nhập lại Mật khẩu",
                          hintStyle: TextStyle(fontSize: 15),
                          border: UnderlineInputBorder(),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              AppConstant.dropdownField(
                  title: '--chọn kho hàng--',
                  list: state,
                  valueselect: selectState,
                  function: (value){
                    setState(() {
                      selectState=value;
                    });
                  }
              ),
              SizedBox(height: 15,),
              Container(
                height: SizeConst.h50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xfff4a898),
                ),
                child: Center(child: Text('Đăng Ký', style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
