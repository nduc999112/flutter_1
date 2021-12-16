import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';

import 'detai_new.dart';
class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  List<newdata> ?listdata;
  @override
  void initState() {
    listdata=[
      newdata(
        image: 'https://naipot.com/static/web/images/logo-np.png',
        text: 'Thông báo thay đổi tỷ giá nhân dân tệ từ\n16/12/2021',
        date: '8h30'
      ),
      newdata(
          image: 'https://naipot.com/static/web/images/logo-np.png',
          text: 'Thông báo thay đổi tỷ giá nhân dân tệ từ\n16/12/2021',
          date: '8h30 11/12/2021'
      ),
      newdata(
          image: 'https://naipot.com/static/web/images/logo-np.png',
          text: 'Thông báo thay đổi tỷ giá nhân dân tệ từ\n16/12/2021',
          date: '8h30 11/12/2021'
      ),
      newdata(
          image: 'https://naipot.com/static/web/images/logo-np.png',
          text: 'Thông báo thay đổi tỷ giá nhân dân tệ từ\n16/12/2021',
          date: '8h30 11/12/2021'
      ),
      newdata(
          image: 'https://naipot.com/static/web/images/logo-np.png',
          text: 'Thông báo thay đổi tỷ giá nhân dân tệ từ\n16/12/2021',
          date: '8h30 11/12/2021'
      ),
      newdata(
          image: 'https://naipot.com/static/web/images/logo-np.png',
          text: 'Thông báo thay đổi tỷ giá nhân dân tệ từ\n16/12/2021',
          date: '8h30 11/12/2021'
      ),
      newdata(
          image: 'https://naipot.com/static/web/images/logo-np.png',
          text: 'Thông báo thay đổi tỷ giá nhân dân tệ từ\n16/12/2021',
          date: '8h30 11/12/2021'
      ),
      newdata(
          image: 'https://naipot.com/static/web/images/logo-np.png',
          text: 'Thông báo thay đổi tỷ giá nhân dân tệ từ\n16/12/2021',
          date: '8h30 11/12/2021'
      ),
      newdata(
          image: 'https://naipot.com/static/web/images/logo-np.png',
          text: 'Thông báo thay đổi tỷ giá nhân dân tệ từ\n16/12/2021',
          date: '8h30 11/12/2021'
      ),
      newdata(
          image: 'https://naipot.com/static/web/images/logo-np.png',
          text: 'Thông báo thay đổi tỷ giá nhân dân tệ từ\n16/12/2021',
          date: '8h30 11/12/2021'
      ),
      newdata(
          image: 'https://naipot.com/static/web/images/logo-np.png',
          text: 'Thông báo thay đổi tỷ giá nhân dân tệ từ\n16/12/2021',
          date: '8h30 11/12/2021'
      ),
      newdata(
          image: 'https://naipot.com/static/web/images/logo-np.png',
          text: 'Thông báo thay đổi tỷ giá nhân dân tệ từ\n16/12/2021',
          date: '8h30 11/12/2021'
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listdata!.length,
        itemBuilder: (BuildContext context, int index){
        return InkWell(
          onTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailNew()),
            );
          },
          child: Container(
            height: SizeConst.h90,
            width: double.infinity,
            decoration: BoxDecoration(
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network("${listdata![index].image}",height: 50,width: 50,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('${listdata![index].text}', style: TextStyle(color: Color(0xffeb9044)),),
                      Text('${listdata![index].date}',style: TextStyle(color: Color(0xffbcbcbc)),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
        });
  }
}
class newdata{
  String? image;
  String? text;
  String? date;
  newdata({this.image, this.text, this.date});
}