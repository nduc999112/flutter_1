import 'package:flutter/material.dart';
class DetailNew extends StatefulWidget {
  const DetailNew({Key? key}) : super(key: key);

  @override
  _DetailNewState createState() => _DetailNewState();
}

class _DetailNewState extends State<DetailNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kính Gửi qúy khách hàng'),
            Text('Naipot xin chân trong thông báo về việc thay đổi phí mua hộ hàng trung quốc về việt nam cụ thee như sau:'),
            RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: "- Phí mua hộ: ", style: TextStyle(color: Colors.black)),
                    TextSpan(text: " 1% Giá trị đơn hàng ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  ]
              )),
            RichText(
                text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: "- Thời gian áp dụng: đơn đặt cọc từ  ", style: TextStyle(color: Colors.black)),
                      TextSpan(text: " 0h00 ngày 12/12/2021", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    ]
                )),
            RichText(
                text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: " *Lưu ý: ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                      TextSpan(text: "Phí mua hộ tối thiểu là  ", style: TextStyle(color: Colors.black)),
                      TextSpan(text: " 10.000đ/đơn hàng", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    ]
                )),
            SizedBox(height: 30,),
            Text('Các đơnhàng dặt cóc trước ngày 12/12/2021 vẫn áp dụng theo biểu phí cũ\n Trân trọng!'),
        ]),
      ),);
  }
}
PreferredSizeWidget _appbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xffec846b),
      leading: Padding(
        padding: const EdgeInsets.only(left: 3),
        child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text('Chi tiết tin tức',style: TextStyle(fontWeight: FontWeight.normal),),
      ),

      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Icon(Icons.home),
        )
      ],

    );
}