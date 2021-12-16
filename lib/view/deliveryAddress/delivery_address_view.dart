import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';

class DeliveryAddressView extends StatefulWidget {
  const DeliveryAddressView({Key? key}) : super(key: key);

  @override
  _DeliveryAddressViewState createState() => _DeliveryAddressViewState();
}

class _DeliveryAddressViewState extends State<DeliveryAddressView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Container(),
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