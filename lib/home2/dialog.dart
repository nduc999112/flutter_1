import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';

class DialogView extends StatefulWidget {
  const DialogView({Key? key}) : super(key: key);

  @override
  _DialogState createState() => _DialogState();
}

class _DialogState extends State<DialogView> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xfff4f4f4),
                  ),
              height: 50,
              width: double.infinity,
              child: Center(
                  child: Text(
                    'Chọn dịch vụ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.verified_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Kiểm hàng',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Chuyển tiết kiệm',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Quấn bọt khí',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Icon(Icons.all_inbox),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Đóng gỗ',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: SizeConst.h40,
                        width: SizeConst.w130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey)),
                        child: Center(child: Text('Đóng')),
                      ),
                      Container(
                        height: SizeConst.h40,
                        width: SizeConst.w130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffe95433),
                            border: Border.all(color: Colors.grey)),
                        child: Center(
                          child: Text(
                            'Xác nhận',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
