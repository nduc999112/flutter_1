import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/color_const.dart';
import 'package:flutter_1/contants/size_const.dart';

class DeliveryAddressView extends StatefulWidget {
  const DeliveryAddressView({Key? key}) : super(key: key);

  @override
  _DeliveryAddressViewState createState() => _DeliveryAddressViewState();
}

class _DeliveryAddressViewState extends State<DeliveryAddressView> {
  List<Adress> ?listAdress;
  @override
  void initState() {
    listAdress=[
      Adress(name: 'Nguyễn Trần Tuấn',phone: '0376533745',adress: '505 Minh Khai',address1: 'Quận Hai Bà Trưng',address2: 'Hà Nội'),
      Adress(name: 'Nguyễn Văn Đức',phone: '0376533745',adress: '505 Minh Khai',address1: 'Quận Hai Bà Trưng',address2: 'Hà Nội'),
      Adress(name: 'Ngô Văn Hưng',phone: '0376533745',adress: '505 Minh Khai',address1: 'Quận Hai Bà Trưng',address2: 'Hà Nội'),
      Adress(name: 'Vũ Đình Luận',phone: '0376533745',adress: '505 Minh Khai',address1: 'Quận Hai Bà Trưng',address2: 'Hà Nội'),
      Adress(name: 'Nguyễn Trần Tuấn',phone: '0376533745',adress: '505 Minh Khai',address1: 'Quận Hai Bà Trưng',address2: 'Hà Nội'),

    ];
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Stack(
          children: [
            Container(
              child:Column(
                children: [
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: listAdress?.length,
                    itemBuilder: (context,int){
                      return Container(
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('${listAdress?[int].name}'),
                                  Text('- ${listAdress?[int].phone}')
                                ],
                              ),
                              Text('${listAdress?[int].adress}'),
                              Text('${listAdress?[int].address1}'),
                              Text('${listAdress?[int].address2}'),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: SizeConst.h80,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Container(
                        width: SizeConst.w364,
                        height: SizeConst.h40,
                        decoration: BoxDecoration(
                          color: ColorConst.colorRed1,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text('Thêm địa chỉ',style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                  ),
                ],
              )
            ),

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
      padding: EdgeInsets.only(top: SizeConst.h3),
      child: Text(
        'Địa chỉ nhận hàng',
        style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: SizeConst.size16,
            color: Colors.white60),
      ),
    ),
  );
}
class Adress{
  String? name;
  String ?phone;
  String ?adress;
  String ?address1;
  String ?address2;
  Adress({this.name,this.phone,this.adress,this.address1,this.address2});
}