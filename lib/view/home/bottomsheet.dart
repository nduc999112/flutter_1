import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:flutter_1/home8_hung_0912/home_Screen.dart';
import 'package:flutter_1/utils/image.dart';
class Bottomsheet extends StatefulWidget {
  const Bottomsheet({Key? key, onContactAdd}) : super(key: key);

  @override
  _BottomsheetState createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: mediaQueryData.viewInsets,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(child: Text('Tìm kiếm Sản phảm')),
              ),
              Divider(color: Color(0xffaa1a18),),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Nguồn trang", style: TextStyle(fontSize: 17),)),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: SizeConst.h70,
                    width: SizeConst.w100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                    ),
                    child: Image(
                      image: AssetImage(Utilsimage.logo1),
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: SizeConst.h70,
                    width: SizeConst.w100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                    ),
                    child: Image(
                      image: AssetImage(Utilsimage.logo2),
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: SizeConst.h70,
                    width: SizeConst.w100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                    ),
                    child: Image(
                      image: AssetImage(Utilsimage.logo3),
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('sản phẩm cần tìm',style: TextStyle(fontSize: 17),)),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tìm kiếm...!',
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homeScreen8()),
                  );
                },
                child: Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xfff0532e),
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search, color: Colors.white,),
                      Text('Đăng Nhập', style: TextStyle(color: Colors.white),),
                    ],
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