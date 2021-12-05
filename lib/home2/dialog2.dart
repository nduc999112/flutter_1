import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DialogView2 extends StatefulWidget {
  const DialogView2({Key? key}) : super(key: key);

  @override
  _DialogView2State createState() => _DialogView2State();
}

class _DialogView2State extends State<DialogView2> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                border: Border(bottom: BorderSide(width: 1.0))),
            height: 50,
            width: double.infinity,
            child: Center(
                child: Text(
              'Ghi chú đơn hàng',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                    child: TextField(
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.withOpacity(0.2))),
                            hintText: 'Ghi chú cho đơn hàng',
                            hintStyle: TextStyle(color: Colors.grey)))),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 48, vertical: 12),
                        child: Text('Đóng'),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffe95433),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 48, vertical: 12),
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
    );
  }
}
