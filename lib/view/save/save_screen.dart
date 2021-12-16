import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:flutter_1/view/complaint/complaint_ui.dart';

import 'detail.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({Key? key}) : super(key: key);

  @override
  _SaveScreenState createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              height: SizeConst.h200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    "https://vn-live-05.slatic.net/p/ff17d900fda6683d68b9c72f1a796676.jpg_525x525q80.jpg",
                    width: 100,
                    height: 140,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                            onTap: (){
                              Navigator.push( context, MaterialPageRoute(builder: (context) => Detail()), );
                            },
                            child: Text('我们认为数据保护很重要我们认为数\n据保护很重要',)),
                        SizedBox(
                          width: SizeConst.w32,height: 10,
                        ),
                        Text('shop: 我们认为数'),
                        SizedBox(height: 5,),
                        Text('Giá bán: 850 ¥'),
                        SizedBox(height: 5,),
                        InkWell(
                          onTap: (){
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title:  Text('Thông báo '),
                                content:  Text('Bạn muốn xóa sản phẩm này không'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Không'),
                                    child: const Text('Không'),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Có'),
                                    child: const Text('Có'),
                                  ),
                                ],
                              ),
                            );

                          },
                          child: Container(
                            height: SizeConst.h35,
                            width: SizeConst.w70,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                            child: Center(
                                child: Text(
                                  'bỏ lưu',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

PreferredSizeWidget _appbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(0xffec846b),
    leading: Padding(
      padding: const EdgeInsets.only(left: 3),
      child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios)),
    ),
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        'Sản phẩm đã lưu',
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
