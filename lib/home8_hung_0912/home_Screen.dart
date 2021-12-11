import 'package:flutter/material.dart';
import 'package:flutter_1/home8_hung_0912/gridData.dart';
class homeScreen8 extends StatefulWidget {
  @override
  _homeScreen8State createState() => _homeScreen8State();
}

class _homeScreen8State extends State<homeScreen8> {
  List<GridData> listdata = [];
  @override
  void initState() {
 listdata = [
   GridData(
     image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTP9OV49GdnmUygAcdU79dyowtmO9nKbWi9w&usqp=CAU",
     use: '图像购物笔记本电脑 53125 2.5k 购物',
     price: '24.988.655',
     sl: '300 Đã bán',
     tt: '6.499 ¥'
   ),
   GridData(
       image: "https://my-live-05.slatic.net/p/78085f773d27cb48b2947b6ff5e5cbfc.jpg_360x360q90.jpg_.webp",
       use: '图像购物笔记本电脑购物',
       price: '24.988.655',
       sl: '300 Đã bán',
       tt: '6.499 ¥'
   ),
   GridData(
       image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8o5nMTlDuAulYGyEJ8T0IrAXlOLuKsi8P3b5IrSvPTOwMsNeB8DMlMmiazgQspqxrgLQ&usqp=CAU",
       use: '图像购物笔记本电脑购物',
       price: '24.988.655',
       sl: '300 Đã bán',
       tt: '6.499 ¥'
   ),
   GridData(
       image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZH2heswss5HGFCHi7zZep11fHfVwUSp0ETFo3-lQPUNE6vLTD-eKsEgPxTGF8ubQZDt8&usqp=CAU",
       use: '图像购物笔记本电脑购物',
       price: '24.988.655',
       sl: '300 Đã bán',
       tt: '6.499 ¥'
   ),
   GridData(
       image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTky7ZgbUO_HV6IPGob6-qOxXkOr8VBRZyBXw-7dOG7Z9e9kxa3STzPJ4rKHaj_AMIel8A&usqp=CAU",
       use: '图像购物笔记本电脑购物',
       price: '24.988.655',
       sl: '300 Đã bán',
       tt: '6.499 ¥'
   ),
   GridData(
       image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCXB3StfweJ5nLVLHn32GtHaCwUWHxl5Ig3Hk8a7w8PDd0uHmGGEQ6x7C5pIGf6tSSMiE&usqp=CAU",
       use: '图像购物笔记本电脑购物',
       price: '24.988.655',
       sl: '300 Đã bán',
       tt: '6.499 ¥'
   ),
   GridData(
       image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeCFoTTNxHW3zJMQIEPj5_Aqb_uLI7yxaCxW2jfIFB7q5ugv2FAoH_Gcf7p8Gbg2Qt26U&usqp=CAU",
       use: '图像购物笔记本电脑购物',
       price: '24.988.655',
       sl: '300 Đã bán',
       tt: '6.499 ¥'
   ),
   GridData(
       image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEX1gEewuhLt-Q9QPbC6TOAOKNZuzjB9aCTM3NHCi80K5tfjfhaK49CeesGprH_XoMCGI&usqp=CAU",
       use: '图像购物笔记本电脑购物',
       price: '24.988.655',
       sl: '300 Đã bán',
       tt: '6.499 ¥'
   ),
   GridData(
       image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZuT7sbkRf9EmxMsQb9hQ7iEBMkCerWL_t2agaiatxUbcHodIQGZmSJ2GSabPDb6YACio&usqp=CAU",
       use: '图像购物笔记本电脑购物',
       price: '24.988.655',
       sl: '300 Đã bán',
       tt: '6.499 ¥'
   ),
   GridData(
       image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhYV-w4EhgZBW3O0HKz_l05YdqAFWtdXxGpWV7h9mhu8XIdEjupcu13Gd9mMPOCFDZYwo&usqp=CAU",
       use: '图像购物笔记本电脑购物',
       price: '24.988.655',
       sl: '300 Đã bán',
       tt: '6.499 ¥'
   ),
 ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tìm kiếm sản phẩm',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xfff0886f),
      ),
      backgroundColor: Color(0xfff1f2f4),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top:  20),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisExtent: 260,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: listdata.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Center(
                    child: Column(

                      children: [
                        Image.network('${listdata[index].image}',height:170,width: double.maxFinite,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${listdata[index].use}'),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${listdata[index].price}',style: TextStyle(color: Color(0xffc22c2a), fontSize: 13, fontWeight: FontWeight.bold),),
                                  Text('${listdata[index].sl}', style: TextStyle(fontSize: 13),),
                                ],
                              ),
                              SizedBox(height: 3,),
                              Text('${listdata[index].tt}', style: TextStyle(fontSize: 12),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      ),
                );
              }),
        ),
    );
  }
}
