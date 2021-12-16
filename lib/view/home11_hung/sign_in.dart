import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  TextEditingController user2 = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController pass3 = TextEditingController();
  TextEditingController pass4= TextEditingController();
  String user3 ='';
  String phone1 = '';
  String pass5 ='';
  String pass6 = '';
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
                        style: TextStyle(fontSize: 15.0),
                        controller: user2,
                        onChanged: (text) {
                          setState(() {
                            user3 = text;
                          });
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(
                              20.0, 15.0, 20.0, 15.0),
                          prefixIcon: Icon(Icons.email),
                          hintText: "Email ",
                          hintStyle: TextStyle(fontSize: 15),
                          border: UnderlineInputBorder(),
                        )),
                    SizedBox(height: 10,),
                    TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only numbers can be entered
                      controller: phone,
                        onChanged: (text) {
                          setState(() {
                            phone1 = text;
                          });
                        },
                        style: TextStyle(fontSize: 15.0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(
                              20.0, 15.0, 20.0, 15.0),
                          prefixIcon: Icon(Icons.phone),
                          hintText: "Số điện thoại",
                          hintStyle: TextStyle(fontSize: 15),
                          border: UnderlineInputBorder(),
                        )),
                    SizedBox(height: 10,),
                    TextField(
                        obscureText: true,
                      controller: pass3,
                        onChanged: (text) {
                          setState(() {
                            pass5 = text;
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
                    SizedBox(height: 10,),
                    TextField(
                        obscureText: true,
                      controller: pass4,
                        onChanged: (text) {
                          setState(() {
                            pass6 = text;
                          });
                        },
                        style: TextStyle(fontSize: 15.0),
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
                  color: (user3 =='' && phone1=='' && pass5 ==''&& pass6=='')
                      ?Color(0xfff4a898)
                      :Color(0xffea5433)
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
