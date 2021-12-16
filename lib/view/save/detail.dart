import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';
class Detail extends StatefulWidget {

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List<dataimage>? data;
  @override
  void initState() {
   data=[
     dataimage(
       image: 'https://cf.shopee.vn/file/98a29367a5c8c81918d5a0cd262f9501',
     ),
     dataimage(
       image: 'https://cf.shopee.vn/file/98a29367a5c8c81918d5a0cd262f9501',
     ),
     dataimage(
       image: 'https://cf.shopee.vn/file/98a29367a5c8c81918d5a0cd262f9501',
     ),
     dataimage(
       image: 'https://cf.shopee.vn/file/98a29367a5c8c81918d5a0cd262f9501',
     ),
     dataimage(
       image: 'https://cf.shopee.vn/file/98a29367a5c8c81918d5a0cd262f9501',
     ),
     dataimage(
       image: 'https://cf.shopee.vn/file/98a29367a5c8c81918d5a0cd262f9501',
     ),
     dataimage(
       image: 'https://cf.shopee.vn/file/98a29367a5c8c81918d5a0cd262f9501',
     ),
   ];
    super.initState();
  }
  final List<String> imagesList = [
    'https://cf.shopee.vn/file/98a29367a5c8c81918d5a0cd262f9501',
    'https://cf.shopee.vn/file/98a29367a5c8c81918d5a0cd262f9501',
    'https://cf.shopee.vn/file/98a29367a5c8c81918d5a0cd262f9501',
    'https://cf.shopee.vn/file/98a29367a5c8c81918d5a0cd262f9501',
    'https://cf.shopee.vn/file/98a29367a5c8c81918d5a0cd262f9501',
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      backgroundColor: Color(0xfff8f8f8),
      body: Stack(
        children: [
           SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: SizeConst.h600,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio:1,
                          autoPlay: true,
                          onPageChanged: (index, reason) {
                            setState(
                                  () {
                                _currentIndex = index;
                              },
                            );
                          },
                        ),
                        items: imagesList
                            .map(
                              (item) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              margin: EdgeInsets.only(top: 10.0, bottom: 10.0,),
                              elevation: 6.0,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                child: Stack(
                                  children: <Widget>[
                                    Image.network(
                                      item,
                                      height: double.maxFinite,
                                      width: double.maxFinite,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                            .toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imagesList.map((urlOfItem) {
                          int index = imagesList.indexOf(urlOfItem);
                          return Container(
                            width: 10.0,
                            height: 10.0,
                            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == index
                                  ? Colors.red
                                  : Color(0xffff9899),
                            ),
                          );
                        }).toList(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('移动编程毕业项目 移动编程毕业项目',style: TextStyle(color: Colors.blue),),
                            SizedBox(height: 5,),
                            Text('Sản phẩm của shop:'),
                            SizedBox(height: 5,),
                            RichText(
                              text: TextSpan(
                                children: const <TextSpan>[
                                  TextSpan(text: 'Trên:',style:TextStyle(color: Colors.black) ),
                                  TextSpan(text: ' TAOBAO', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            RichText(
                              text: TextSpan(
                                children: const <TextSpan>[
                                  TextSpan(text: 'Trong kho:',style:TextStyle(color: Colors.black) ),
                                  TextSpan(text: ' 74', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            RichText(
                              text: TextSpan(
                                children: const <TextSpan>[
                                  TextSpan(text: 'Giá:',style:TextStyle(color: Colors.black)),
                                  TextSpan(text: ' 19.099.773đ', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red)),
                                  TextSpan(text: '~(¥4980)',style:TextStyle(color: Colors.black)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data!.length,
                    itemBuilder: (BuildContext context, int indx){
                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: SizeConst.h500,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Image.network('${data![indx].image}', height: double.infinity, width: double.infinity,),
                        ),
                      );
                    }),
                SizedBox(height: SizeConst.h150,),
              ],

            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: SizeConst.h120,
              width: double.infinity,
             decoration: BoxDecoration(
               color: Colors.white,
             ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: TextSpan(
                      children: const <TextSpan>[
                        TextSpan(text: 'Giá bán:',style:TextStyle(color: Color(0xffe59e2c))),
                        TextSpan(text: ' 19.099.773đ', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10),
                    child: Container(
                      height: SizeConst.h50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffea5433),
                      ),
                      child: Center(child: Text('Thêm vào giỏ hàng', style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                ],
              ),
            ),
          )
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
    title: Text(
      'Quay lại',
      style: TextStyle(fontWeight: FontWeight.normal),
    ),
    actions: [
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.search),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.home),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.shopping_cart),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.more_horiz),
          ),
        ],
      )
    ],
  );
}
 class dataimage{
  String? image;
  dataimage({this.image});
 }