import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/app_consttans.dart';
import 'package:flutter_1/contants/size_const.dart';

class Home9View extends StatefulWidget {
  const Home9View({Key? key}) : super(key: key);

  @override
  _Home9ViewState createState() => _Home9ViewState();
}

class _Home9ViewState extends State<Home9View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        flex: 1,
                        child: AppConstant.Widget(tittle: 'Mã giao dịch')
                      ),
                      SizedBox(width: SizeConst.w10,),
                      Expanded(
                        flex: 1,
                        child: AppConstant.Widget(tittle: 'Mã đơn hàng')
                      ),

                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
  PreferredSizeWidget _appbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xffec846b),
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          'Lịch sử giao dịch',
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Icon(Icons.home),
        )
      ],
    );
  }
}
