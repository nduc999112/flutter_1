import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/color_const.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:flutter_1/contants/text_constant.dart';

class ViewPay extends StatefulWidget {
  // const ViewPay({Key? key}) : super(key: key);

  @override
  _ViewPayState createState() => _ViewPayState();
}

class _ViewPayState extends State<ViewPay> {
  List<String>? image;
  List<String>? image1;
  List<String>? image2;
  List<String>? image3;
  @override
  void initState() {
    // TODO: implement initState
    image = [
      'https://upload.wikimedia.org/wikipedia/en/thumb/c/c1/Vietcombank_logo.svg/1200px-Vietcombank_logo.svg.png',
      'https://upload.wikimedia.org/wikipedia/vi/7/7c/Techcombank_logo.png',
      'https://upload.wikimedia.org/wikipedia/commons/5/55/LOGO-VIB-Blue.png',
      'http://htdcorp.vn/wp-content/uploads/2016/09/logo-vietinbank.png',
      'https://upload.wikimedia.org/wikipedia/vi/8/85/ACB_Logo.png',
      'https://upload.wikimedia.org/wikipedia/vi/7/79/BIDV_Logo.png',
      'https://static.wixstatic.com/media/9d8ed5_c1ff4912d7eb4f8b901802156088483d~mv2.png/v1/fit/w_500,h_500,q_90/file.png',
      'https://static.wixstatic.com/media/9d8ed5_c662c7d071d3477589ef3a2b31c173d6~mv2.png/v1/fit/w_500,h_500,q_90/file.png',
      'https://upload.wikimedia.org/wikipedia/vi/1/11/Maritimebank_logo_14.01.2019.png'
    ];
    image2 = [
      'https://upload.wikimedia.org/wikipedia/en/thumb/c/c1/Vietcombank_logo.svg/1200px-Vietcombank_logo.svg.png',
      'https://upload.wikimedia.org/wikipedia/vi/7/7c/Techcombank_logo.png',
      'https://upload.wikimedia.org/wikipedia/commons/5/55/LOGO-VIB-Blue.png',
      'https://upload.wikimedia.org/wikipedia/en/thumb/c/c1/Vietcombank_logo.svg/1200px-Vietcombank_logo.svg.png'
    ];
    image3 = [
      'https://banner2.cleanpng.com/20180719/kyq/kisspng-logo-brand-visa-font-visa-logo-5b5026e3029779.5918267915319794910106.jpg',
      'https://banner2.cleanpng.com/20180824/jbf/kisspng-mastercard-logo-credit-card-visa-brand-mastercard-logo-icon-paypal-icon-logo-png-and-v-5b8036c0e7dcf3.7313769415351292809497.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/JCB_logo.svg/2560px-JCB_logo.svg.png',
    ];
    image1=[
      'https://upload.wikimedia.org/wikipedia/en/thumb/c/c1/Vietcombank_logo.svg/1200px-Vietcombank_logo.svg.png',
      'https://upload.wikimedia.org/wikipedia/en/thumb/c/c1/Vietcombank_logo.svg/1200px-Vietcombank_logo.svg.png',
      'https://upload.wikimedia.org/wikipedia/vi/7/7c/Techcombank_logo.png',
      'https://upload.wikimedia.org/wikipedia/commons/2/25/Logo_MB_new.png',
      'https://upload.wikimedia.org/wikipedia/commons/5/55/LOGO-VIB-Blue.png',
      'https://i.pinimg.com/originals/6b/b0/4a/6bb04a5d58440c759ae9e92ac2a53fa1.png',
      'https://static.wixstatic.com/media/9d8ed5_c662c7d071d3477589ef3a2b31c173d6~mv2.png/v1/fit/w_500,h_500,q_90/file.png',
      'https://upload.wikimedia.org/wikipedia/vi/8/85/ACB_Logo.png',
      'https://cards.hdbank.com.vn/images/logohdbank.png',
      'https://upload.wikimedia.org/wikipedia/vi/1/11/Maritimebank_logo_14.01.2019.png',
      'https://lepham.vn/wp-content/uploads/2016/09/ncb-logo.jpg',
      'https://thebank.vn/uploads/2020/05/10/thebank_logonganhangvieta_1589124343.png',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/VPBank_logo.svg/2560px-VPBank_logo.svg.png',
      'https://inkythuatso.com/uploads/thumbnails/800/2021/09/logo-sacombank-inkythuatso-fn-10-16-42-08.jpg',
      'https://upload.wikimedia.org/wikipedia/en/thumb/c/c1/Vietcombank_logo.svg/1200px-Vietcombank_logo.svg.png',
      'https://upload.wikimedia.org/wikipedia/vi/thumb/3/3d/Argibank_logo.svg/1024px-Argibank_logo.svg.png',
      'https://upload.wikimedia.org/wikipedia/vi/7/79/BIDV_Logo.png',
      'https://oceanbank.vn/data/upload/LogoOceanBank2015M1-1509074903-742951386.jpg',
      'https://i.pinimg.com/736x/99/0d/ca/990dca3a31a9a434af1099b6c847cb79.jpg',
      'https://static.wixstatic.com/media/9d8ed5_bd7a5d28d42348bdbb8acc6e341fbd24~mv2.png/v1/fill/w_1182,h_1182,al_c/9d8ed5_bd7a5d28d42348bdbb8acc6e341fbd24~mv2.png',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Logo_TPBank.svg/1200px-Logo_TPBank.svg.png',
      'https://upload.wikimedia.org/wikipedia/commons/5/5c/Logo_Nam_A_Bank.jpg',
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: SingleChildScrollView(
        child: Container(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              //component1
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConst.colorRed1)),
                child: ExpansionTileCard(
                  initiallyExpanded: false,
                  baseColor: ColorConst.colorRed1,
                  borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  title: Text(
                    'Chuy???n kho???n nh???n ngay',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    '(Mi???n ph?? giao d???ch)',
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  children: [
                    Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('-Thanh to??n tr???c tuy???n an to??n',
                                    style: TextStyle(fontSize: SizeConst.size15)),
                                Text(
                                  '-N???p ti???n v??o v?? ho??n t???t trong v??i gi??y',
                                  style: TextStyle(fontSize: SizeConst.size15),
                                ),
                                Text(
                                  '-Danh s??ch ng??n h??ng h??? tr??? n???p chuy???n kho???n nh???n ngay',
                                  style: TextStyle(fontSize: SizeConst.size15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  child: GridView.count(
                                      shrinkWrap: true,
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 10,
                                      childAspectRatio: 2,
                                      mainAxisSpacing: 10,
                                      children:
                                          List.generate(image!.length, (index) {
                                        return Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border:
                                                  Border.all(color: Colors.grey)),
                                          child: Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Image.network(
                                              image![index],
                                              height: 10,
                                              width: 10,
                                            ),
                                          ),
                                        );
                                      })),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Nh???p s??? ti???n c???n n???p'),
                                TextField(
                                  decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(10),
                                      border: OutlineInputBorder(),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 1.0),
                                      ),
                                      hintText: 'V?? d??? 30.000',
                                      hintStyle: TextStyle(color: Colors.grey)
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: SizeConst.h50,
                                  decoration: BoxDecoration(
                                    color: ColorConst.colorRed1,
                                  ),
                                  child: Center(child: Text('N???p ti???n',style: TextStyle(color: Colors.white,fontSize: SizeConst.size17,),)),
                                )
                              ]),
                        ))
                  ],
                  elevation: 0,
                  animateTrailing: true,
                  expandedColor: ColorConst.colorRed1,
                  expandedTextColor: Colors.white,

                  // leading: CircleAvatar(child: Text('A')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //component2
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConst.colorRed1)),
                child: ExpansionTileCard(
                  initiallyExpanded: false,
                  baseColor: ColorConst.colorRed1,
                  borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  title: Text(
                    'V?? ??i???n t??? ng??n l?????ng',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    '(Ph?? giao d???ch 0.3%)',
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  children: [
                    Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.symmetric(vertical: 16),
                                child: Text('Thanh to??n tr???c tuy???n an to??n',style: TextStyle(fontSize: SizeConst.size15,fontWeight: FontWeight.w300),),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(bottom: 16),
                                child: Text('N???p ti???n v??o v?? ho??n t???t',style: TextStyle(fontSize: SizeConst.size15,fontWeight: FontWeight.w300),),
                              ),
                              Text('Nh???p s??? ti???n c???n n???p',style: TextStyle(fontSize: SizeConst.size15,fontWeight: FontWeight.w300),),
                              TextField(
                                decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: EdgeInsets.all(10),
                                    border: OutlineInputBorder(),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 1.0),
                                    ),
                                    hintText: 'V?? d??? 30.000',
                                    hintStyle: TextStyle(color: Colors.grey)
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: double.infinity,
                                height: SizeConst.h50,
                                decoration: BoxDecoration(
                                  color: ColorConst.colorRed1,
                                ),
                                child: Center(child: Text('N???p ti???n',style: TextStyle(color: Colors.white,fontSize: SizeConst.size17,),)),
                              )
                            ],
                          )
                        )),

                  ],
                  elevation: 0,
                  animateTrailing: true,
                  expandedColor: ColorConst.colorRed1,
                  expandedTextColor: Colors.white,

                  // leading: CircleAvatar(child: Text('A')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //component3
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConst.colorRed1)),
                child: ExpansionTileCard(
                  initiallyExpanded: false,
                  baseColor: ColorConst.colorRed1,
                  borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  title: Text(
                    'Th??? ATM ng??n h??ng n???i ?????a',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    '(Ph?? giao d???ch 1.760?? + 1.1%)',
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  children: [
                    Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: SizeConst.h32,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(fontSize: SizeConst.size15,fontWeight: FontWeight.w300),
                                    children: [
                                      WidgetSpan(
                                        child: Container(
                                          width: 80,
                                        )
                                      ),
                                      TextSpan(text: 'S??? th??? c???a b???n ???????c m?? h??a an to??n 100% v?? ch??? ???????c s??? d???ng cho giao d???ch n??y.Naipot kh??ng bao gi??? ti???t l??? th??ng tin th??? c???a b???n cho b???t k??? b??n th??? ba.', style: TextStyle(fontSize: SizeConst.size14,fontWeight: FontWeight.w300,color: Colors.black)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConst.h50,
                                ),
                                Text('B???n h??y ch???n ng??n h??ng n???i ?????a (ATM Online/Internet bankking) c???n thanh to??n',style: TextStyle(fontSize: SizeConst.size14,fontWeight: FontWeight.w300,color: Colors.black)),
                                // Text('S??? th??? c???a b???n ???????c m?? h??a an to??n 100% v?? ch??? ???????c s??? d???ng cho giao d???ch n??y.Naipot kh??ng bao gi??? ti???t l??? th??ng tin th??? c???a b???n cho b???t k??? b??n th??? ba.',
                                //     style: TextStyle(fontSize: SizeConst.size15,fontWeight: FontWeight.w300)),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  child: GridView.count(
                                      physics:  NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 10,
                                      childAspectRatio: 2,
                                      mainAxisSpacing: 10,
                                      children:
                                      List.generate(image1!.length, (index) {
                                        return Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              border:
                                              Border.all(color: Colors.grey)),
                                          child: Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Image.network(
                                              image1![index],
                                              height: 10,
                                              width: 10,
                                            ),
                                          ),
                                        );
                                      })),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Nh???p s??? ti???n c???n n???p'),
                                TextField(
                                  decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(10),
                                      border: OutlineInputBorder(),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 1.0),
                                      ),
                                      hintText: 'V?? d??? 30.000',
                                      hintStyle: TextStyle(color: Colors.grey)
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: SizeConst.h50,
                                  decoration: BoxDecoration(
                                    color: ColorConst.colorRed1,
                                  ),
                                  child: Center(child: Text('N???p ti???n',style: TextStyle(color: Colors.white,fontSize: SizeConst.size17,),)),
                                )
                              ]),
                        ))
                  ],
                  elevation: 0,
                  animateTrailing: true,
                  expandedColor: ColorConst.colorRed1,
                  expandedTextColor: Colors.white,

                  // leading: CircleAvatar(child: Text('A')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //component4
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConst.colorRed1)),
                child: ExpansionTileCard(
                  initiallyExpanded: false,
                  baseColor: ColorConst.colorRed1,
                  borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  title: Text(
                    'Thanh to??n qua Internet Banking',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    '(Ph?? giao d???ch 1.760?? + 1.1%)',
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  children: [
                    Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: SizeConst.h32,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(fontSize: SizeConst.size15,fontWeight: FontWeight.w300),
                                    children: [
                                      TextSpan(text: 'S??? th??? c???a b???n ???????c m?? h??a an to??n 100% v?? ch??? ???????c s??? d???ng cho giao d???ch n??y.Naipot kh??ng bao gi??? ti???t l??? th??ng tin th??? c???a b???n cho b???t k??? b??n th??? ba.', style: TextStyle(fontSize: SizeConst.size14,fontWeight: FontWeight.w300,color: Colors.black)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConst.h50,
                                ),
                                Text('Vui l??ng ch???n ng??n h??ng :',style: TextStyle(fontSize: SizeConst.size14,fontWeight: FontWeight.w300,color: Colors.black)),
                                // Text('S??? th??? c???a b???n ???????c m?? h??a an to??n 100% v?? ch??? ???????c s??? d???ng cho giao d???ch n??y.Naipot kh??ng bao gi??? ti???t l??? th??ng tin th??? c???a b???n cho b???t k??? b??n th??? ba.',
                                //     style: TextStyle(fontSize: SizeConst.size15,fontWeight: FontWeight.w300)),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  child: GridView.count(
                                      physics:  NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 10,
                                      childAspectRatio: 2,
                                      mainAxisSpacing: 10,
                                      children:
                                      List.generate(image2!.length, (index) {
                                        return Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              border:
                                              Border.all(color: Colors.grey)),
                                          child: Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Image.network(
                                              image2![index],
                                              height: 10,
                                              width: 10,
                                            ),
                                          ),
                                        );
                                      })),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Nh???p s??? ti???n c???n n???p'),
                                TextField(
                                  decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(10),
                                      border: OutlineInputBorder(),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 1.0),
                                      ),
                                      hintText: 'V?? d??? 30.000',
                                      hintStyle: TextStyle(color: Colors.grey)
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: SizeConst.h50,
                                  decoration: BoxDecoration(
                                    color: ColorConst.colorRed1,
                                  ),
                                  child: Center(child: Text('N???p ti???n',style: TextStyle(color: Colors.white,fontSize: SizeConst.size17,),)),
                                )
                              ]),
                        ))
                  ],
                  elevation: 0,
                  animateTrailing: true,
                  expandedColor: ColorConst.colorRed1,
                  expandedTextColor: Colors.white,

                  // leading: CircleAvatar(child: Text('A')),
                ),
              ),
              //component5
              SizedBox(
                height: 10,
              ),
              //component6
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConst.colorRed1)),
                child: ExpansionTileCard(
                  initiallyExpanded: false,
                  baseColor: ColorConst.colorRed1,
                  borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  title: Text(
                    'N???p ti???n m???t t???i v??n ph??ng',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    '(Mi???n ph?? giao d???ch)',
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  children: [
                    Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 28,bottom: 16),
                                    child: Text('Qu?? kh??ch vui l??ng n???p ti???n m???t t???i ?????a ch??? :',style: TextStyle(fontSize: SizeConst.size14,fontWeight: FontWeight.w300,color: Colors.black))),
                                Container(
                                    margin: EdgeInsets.only(bottom: 16),
                                    child: Text('T???ng 16,T??a nh?? VTC Online, 18 Tam Trinh, Hai B?? Tr??ng, H?? N???i',style: TextStyle(fontSize: SizeConst.size14,fontWeight: FontWeight.w400,color: Colors.black))),

                                Text.rich(
                                  TextSpan(
                                    text: 'Th???i gian: ',style: TextStyle(fontSize: SizeConst.size14,fontWeight: FontWeight.w300,color: Colors.black),
                                    children: [
                                      TextSpan(text: 't??? 8h - 12h v?? 13h30 - 17h30', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ' c??c ng??y tr??ng tu???n(Th??? B???y ngh??? bu???i chi???u),tr??? ng??y L??? v?? Ch??? nh???t.',style: TextStyle(fontSize: SizeConst.size14,fontWeight: FontWeight.w300,color: Colors.black)),
                                    ],
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 16),
                                    child: Text('L??u ??: Qu?? kh??ch vui l??ng ghi r?? Email v?? s??? ??i???n tho???i ???? ????ng k?? t??i kho???n trong n???i dung c???a phi???u n???p ti???n t???i v??n ph??ng',style: TextStyle(fontSize: SizeConst.size14,fontWeight: FontWeight.w300,color: Colors.black))),

                              ]),
                        ))
                  ],
                  elevation: 0,
                  animateTrailing: true,
                  expandedColor: ColorConst.colorRed1,
                  expandedTextColor: Colors.white,

                  // leading: CircleAvatar(child: Text('A')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //component7
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConst.colorRed1)),
                child: ExpansionTileCard(
                  initiallyExpanded: false,
                  baseColor: ColorConst.colorRed1,
                  borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  title: Text(
                    'Th??? t??n d???ng',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    '(Ph?? giao d???ch 2.7%)',
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  children: [
                    Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: SizeConst.h32,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(fontSize: SizeConst.size15,fontWeight: FontWeight.w300),
                                    children: [
                                      WidgetSpan(
                                          child: Container(
                                            width: 80,
                                          )
                                      ),
                                      TextSpan(text: 'S??? th??? c???a b???n ???????c m?? h??a an to??n 100% v?? ch??? ???????c s??? d???ng cho giao d???ch n??y.Naipot kh??ng bao gi??? ti???t l??? th??ng tin th??? c???a b???n cho b???t k??? b??n th??? ba.', style: TextStyle(fontSize: SizeConst.size14,fontWeight: FontWeight.w300,color: Colors.black)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConst.h50,
                                ),
                                Text('B???n h??y ch???n lo???i th??? t??n d???ng',style: TextStyle(fontSize: SizeConst.size14,fontWeight: FontWeight.w300,color: Colors.black)),
                                // Text('S??? th??? c???a b???n ???????c m?? h??a an to??n 100% v?? ch??? ???????c s??? d???ng cho giao d???ch n??y.Naipot kh??ng bao gi??? ti???t l??? th??ng tin th??? c???a b???n cho b???t k??? b??n th??? ba.',
                                //     style: TextStyle(fontSize: SizeConst.size15,fontWeight: FontWeight.w300)),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  child: GridView.count(
                                      physics:  NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 10,
                                      childAspectRatio: 2,
                                      mainAxisSpacing: 10,
                                      children:
                                      List.generate(image3!.length, (index) {
                                        return Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              border:
                                              Border.all(color: Colors.grey)),
                                          child: Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Image.network(
                                              image3![index],
                                              height: 10,
                                              width: 10,
                                            ),
                                          ),
                                        );
                                      })),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Nh???p s??? ti???n c???n n???p'),
                                TextField(
                                  decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(10),
                                      border: OutlineInputBorder(),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 1.0),
                                      ),
                                      hintText: 'V?? d??? 30.000',
                                      hintStyle: TextStyle(color: Colors.grey)
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: SizeConst.h50,
                                  decoration: BoxDecoration(
                                    color: ColorConst.colorRed1,
                                  ),
                                  child: Center(child: Text('N???p ti???n',style: TextStyle(color: Colors.white,fontSize: SizeConst.size17,),)),
                                )
                              ]),
                        ))
                  ],
                  elevation: 0,
                  animateTrailing: true,
                  expandedColor: ColorConst.colorRed1,
                  expandedTextColor: Colors.white,

                  // leading: CircleAvatar(child: Text('A')),
                ),
              ),
            ],
          ),
        )),
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
        'N???p ti???n',
        style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: SizeConst.size16,
            color: Colors.white60),
      ),
    ),
  );
}
