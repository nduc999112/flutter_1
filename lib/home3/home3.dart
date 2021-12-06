import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_1/home3/state.dart';
import 'package:collection/collection.dart';
import 'package:flutter_1/home4/home4.dart';
class HomeView3 extends StatefulWidget {
  const HomeView3({Key? key}) : super(key: key);

  @override
  _HomeView3State createState() => _HomeView3State();
}

class _HomeView3State extends State<HomeView3>  with SingleTickerProviderStateMixin {
  List<Statee>? list;
  List<Model>? models;
  List<Model2>? models2;
  List<Product>? product;
  List<Model3>? models3;
  List<Info> ?infos;
  List<Histoty>? historys;
  List<Model1> ?models1;
  TabController ?_tabController;
  @override
  void initState() {
    // TODO: implement initState
    historys=[
      Histoty(
        time: '12:05 - 26/10/2021',
        price: '-703.430đ',
        type: 'Đặt cọc',
        content: 'Đặt cọc cho đơn hàng NP1243554'
      ),
      Histoty(
          time: '12:05 - 26/10/2021',
          price: '-703.430đ',
          type: 'Đặt cọc',
          content: 'Đặt cọc cho đơn hàng NP1243554fffffffffffff'
      ),
    ];
    infos=[
      Info(
        title: 'Người bán',
        value: '中文不好我的中文'
      ),
      Info(
          title: 'Tỉ lệ đặt cọc',
          value: '70%'
      ),
    ];
    product=[
      Product(
        image: 'https://cf.shopee.vn/file/202d7b108a8549f373da092b310bc5f1_tn',
        title: '我的中文不好我的中文不好我的中文不好',
        title2: '中文不好我的中文',
        id: '98453436',
        idproduct: 'CN435',
        number: '1/1/1'
      )
    ];
    models3=[
      Model3(
        title: 'Tổng cân nặng tịnh',
        kg: '2.9',
      ),
      Model3(
        title: 'Cân nặng tính phí VCQT',
        kg: '2.9',
      ),
    ];
    models2=[
      Model2(
        makien: 'YT60540659328754',
        cannang: '2.9 kg',
        cannangprice: '2.9 kg',
        thetich: '---',
        state: 'Đã nhận hàng',
        time: '11:22-05/11/2021'
      )
    ];
    models1=[
      Model1(
        title: 'người nhận',
        diachi: 'Nguyễn Trần tuấn\n0988529669',
      ),
      Model1(
        title: 'Địa chỉ',
        diachi: '505 Minh Khai\n Quận Hai Bà Trưng\n Hà Nội',
      )
    ];
    models=[
      Model(
        title: 'Tổng tiền hàng (Y260)',
        price: '1.220.434đ'

      ),
      Model(
          title: 'Phí nội địa TQ',
          price: '46.775đ'
      ),
      Model(
          title: 'Phí mua hàng',
          price: '10.000đ'
      ),
      Model(
          title: 'Phí vận chuyển TQ-VN',
          price: '99.5454đ',
          priceHide: '84.665đ'
      ),
      Model(
          title: 'Tổng giá trị đơn hàng',
          price: '1.220.434đ'
      ),
      Model(
          title: 'Đã thanh toán',
          price: '1.540.434đ'
      ),
      Model(
          title: 'Naipot trả lại',
          price: '0đ'
      ),
      Model(
          title: 'Còn thiếu',
          price: '0đ'
      ),
    ];
    list=[
      Statee(
        title: "ĐÃ ĐẶT CỌC",
        date: "12:05 -26/10/2021"
      ),
      Statee(
          title: "ĐANG MUA HÀNG",
          date: "15:05 -26/10/2021"
      ),
      Statee(
          title: "ĐÃ MUA HÀNG",
          date: "15:45 -26/10/2021"
      ),
      Statee(
          title: "NGƯỜI BÁN GIAO",
          date: "17:05 -26/10/2021"
      ),
      Statee(
          title: "KHO TRUNG QUỐC",
          date: "12.05 -26/10/2021"
      ),
      Statee(
          title: "ĐÃ ĐẶT CỌC",
          date: "10:09 -26/10/2021"
      ),
      Statee(
          title: "ĐANG VẬN CHUYỂN TQ-VN",
          date: "12:05 -26/10/2021"
      ),
      Statee(
          title: "KHO VIỆT NAM",
          date: "12:05 -26/10/2021"
      ),
      Statee(
          title: "YÊU CẦU GIAO",
          date: "12:05 -26/10/2021"
      ),Statee(
          title: "ĐANG GIAO HÀNG",
          date: "12:05 -26/10/2021"
      ),
      Statee(
          title: "ĐÃ NHẬN HÀNG",
          date: "12:05 -26/10/2021"
      ),


    ];
    _tabController = TabController(length: 3, vsync: this);
    super.initState();

  }
  @override
  void dispose() {
    super.dispose();
  }

  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: _appbar(),
        body: Column(
          children: [
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
              labelStyle: TextStyle(
                fontSize: 15,
              ),
              tabs: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Thông tin'),
                ),
                Text('Hành trình'),
                Text('Trao đổi với Naipot'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  SingleChildScrollView(
                    child: Container(
                      color: Color(0xFFf2f2f2),
                      child: Container(
                        child: Column(
                          children: [
                            //component1
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text('Mã đơn hàng: ',style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.normal)),
                                          Text('NP12345678',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF00a758),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Đã nhận hàng',style: TextStyle(color: Colors.white),),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //component2
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ExpansionTile(
                                    title: const Text('Thông tin tài chính',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    children: models!.mapIndexed((int,model)=>item(
                                      index: int,
                                        title: model.title,
                                        price: model.price,
                                        pricehide: model.priceHide
                                    )).toList()
                                ),
                              ),
                            ),
                            //component3
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ExpansionTile(
                                    title:  Text('Danh sách kiện hàng (${models2!.length})',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    children: models2!.mapIndexed((int,model)=>item2(
                                        makien: model.makien,
                                        cannang: model.cannang,
                                        cannangprice: model.cannangprice,
                                        thetich: model.thetich,
                                        state: model.state,
                                        time: model.time
                                    )).toList()
                                ),
                              ),
                            ),
                            //component4
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ExpansionTile(
                                    title:  Text('Sản phẩm',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    children:  product!.mapIndexed((int,product)=>itemProduct(
                                        image: product.image,
                                        title: product.title,
                                        title1: product.title2,
                                        id: product.id,
                                        idProduct: product.idproduct,
                                        number: product.number
                                    )).toList()
                                ),
                              ),
                            ),
                            //component5
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ExpansionTile(
                                    title:  Text('Thông tin người nhận',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    children: models1!.mapIndexed((int,model)=>infoperson(
                                      title: model.title,
                                      nguoinhan: model.diachi,
                                    )).toList()
                                ),
                              ),
                            ),
                            //commonent6
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ExpansionTile(
                                    title:  Text('Khối lượng hàng hóa',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    children: models3!.mapIndexed((int,model3)=>itemKhoiLuongHH(
                                      title: model3.title,
                                      kg: model3.kg
                                    )).toList()
                                ),
                              ),
                            ),
                            //commonent6
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ExpansionTile(
                                    title:  Text('Thông tin khác',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    children: infos!.mapIndexed((int,model3)=>itemKhoiLuongHH(
                                        title: model3.title,
                                        kg: model3.value
                                    )).toList()
                                ),
                              ),
                            ),
                            //commonent7
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ExpansionTile(
                                    title:  Text('Dịch vụ sử dụng',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    children: infos!.mapIndexed((int,model3)=>itemKhoiLuongHH(
                                        title: model3.title,
                                        kg: model3.value
                                    )).toList()
                                ),
                              ),
                            ),
                            //commonent8
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ExpansionTile(
                                    title:  Text('Lịch sử giao dịch',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    children:historys!.mapIndexed((int,history)=>itemHistory(
                                        time: history.time,
                                      price: history.price,
                                      type: history.type,
                                      content: history.content
                                    )).toList()
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Tab2(list!),
                  HomeView4()


                ],
              ),
            ),
          ],
        ),


      ),
    );



  }
}
PreferredSizeWidget _appbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(0xffec846b),
    leading: Padding(
      padding: const EdgeInsets.only(left: 3),
      child: Icon(Icons.arrow_back_ios),
    ),
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text('Chi tiết đơn hàng',style: TextStyle(fontWeight: FontWeight.normal),),
    ),

    actions: [
      Container(
        margin: EdgeInsets.only(right: 10),
        child: Icon(Icons.home),
      )
    ],
    // bottom: const TabBar(
    //   tabs: <Widget>[
    //     Tab(
    //         child: Text('Thông tin',style: TextStyle(color: Colors.black),)
    //     ),
    //     Tab(
    //         child: Text('Hành trình',style: TextStyle(color: Colors.black),)
    //     ),
    //     Tab(
    //         child: Text('Trao đổi với Naipot',style: TextStyle(color: Colors.black),)
    //     ),
    //   ],
    // ),
  );
}
Widget Tab2(List<Statee> list){
  return Center(
    child: Container(
      color: Color(0xFFf2f2f2),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child:ListView.builder(
              padding: EdgeInsets.only(top: 20,bottom: 16),
              itemCount: list.length,
              itemBuilder: (context,int){
                return  Padding(
                  padding: const EdgeInsets.only(left: 26,right: 26),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFe55634)),
                              ),
                              Container(
                                  width: 2,
                                  height: 50,
                                  color: int==list.length-1?Colors.grey:Color(0xFFe55634)
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${list[int].title}',style: TextStyle( color: Color(0xFFe55634),fontWeight: FontWeight.bold,fontSize: 16),),
                              SizedBox(
                                height: 5,
                              ),
                              Text('${list[int].date}',style: TextStyle( color:Colors.black,fontWeight: FontWeight.normal,fontSize: 14),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            )
        ),
      ),
    ),
  );
}
Widget item2({String ? makien,String ? cannang,String ?cannangprice,String ?thetich,String ?state,String ?time}){
  return Padding(
    padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16),
    child: Column(
      children: [
        childitem2(title: 'Mã kiện',value: makien),
        childitem2(title: 'Cân nặng tịnh',value: cannang),
        childitem2(title: 'Cân nặng tính phí',value: cannangprice),
        childitem2(title: 'Thể tích',value: thetich),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Trạng thái',style: TextStyle(fontSize: 14,color: Colors.grey[500]),),
          Text(state!,style: TextStyle(fontSize: 14,),)
        ],
      ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Thời gian',style: TextStyle(fontSize: 14,color: Colors.grey[500]),),
            Text(time!,style: TextStyle(fontSize: 14,),)
          ],
        ),
        Divider()
      ],
    ),
  );
}
Widget childitem2({String ? value,String ? title}){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title!,style: TextStyle(fontSize: 14,color: Colors.grey[500]),),
      Text(value!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
    ],
  );
}
Widget infoperson({String ? title,String ? nguoinhan}){
  return  Padding(
      padding:  EdgeInsets.symmetric(horizontal:16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title!,style: TextStyle(color: Colors.grey[600]),),
              Text(nguoinhan!,)
            ],
          ),
          Divider(),
        ],
      )
  );
}
Widget item({String ?title,String ?price,bool? hide,String ? pricehide,Color? colorText,int? index}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${title??''}',style: TextStyle(color: Colors.grey[600]),),
              Row(
                children: [
                  Visibility(
                    visible: hide??true,
                    child: Text('${pricehide??''}',style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),),
                  ),
                  SizedBox(width: 5,),
                  Text('${price??''}',style: TextStyle(fontWeight: FontWeight.bold,color: getcolor(index!)),),
                ],
              )
            ],
          ),
        ),
        Divider()
      ],
    )
  );
}
Color? getcolor(int index){
  Color ?color;
  if(index==4 ||index==7){
    color=Colors.red;
  }
  if(index==5){
    color=Colors.green;
  }
  return color;
}
Widget itemProduct({String? image,String? title,String ?title1,String?id,String?idProduct,String ?number}){
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Image.network(image!,),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 3, // 40% of space
            child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title!),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: title1),
                          TextSpan(
                            text: ' #',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: id,
                            style: TextStyle(color: Color(0xFFc58875),),
                          ),
                        ],
                      ),
                    ),
                    Text(idProduct!,style: TextStyle(color: Colors.grey[400]),),
                    Text('Số lượng: ${number!}',style: TextStyle(color: Colors.grey[400])),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.shopping_cart_rounded),
                        Text('Thêm vào giỏ hàng',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                )
            ),
          ),

        ],
      ),
    ),
  );
}
Widget itemKhoiLuongHH({String ?title,String ? kg}){
  return Padding(
      padding:  EdgeInsets.symmetric(horizontal:16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title!,style: TextStyle(color: Colors.grey[600]),),
              Text(kg!,style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Divider(),
        ],
      )
  );
}

Widget itemHistory({String? time,String ? price,String? type,String?content }){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      children: [
        itemchildHistory(title: 'Thời gian',value: time),
      SizedBox(
        height: 7,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Giá trị'),
          Text(price!,style: TextStyle(color:Color(0xFFd6574f),fontWeight: FontWeight.bold ),)
        ],
      ),
        SizedBox(
          height: 7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Loại giao dịch'),
            Text(type!,style: TextStyle(color:Color(0xFF7095ad) ),)
          ],
        ),
        SizedBox(
          height: 7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex:3,child: Text('Nội dung')),
            Flexible(flex:2,child: Text(content!,),)
          ],
        ),
        Divider()

      ],
    ),
  );
}
Widget itemchildHistory({String? title,String? value}){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title!),
      Text(value!,)
    ],
  );
}
class Model{
  String? title;
  String ?price;
  String ?priceHide;
  Model({this.title,this.price,this.priceHide});
}
class Model2{
  String ?makien;
  String ?cannang;
  String ?cannangprice;
  String ?thetich;
  String ?state;
  String ?time;
  Model2({
    this.makien,this.cannang,this.cannangprice,this.thetich,this.state,this.time
});
}
class Product{
  String ? image;
  String? title;
  String? title2;
  String ?id;
  String ?idproduct;
  String ?number;
  Product({this.image,this.title,this.title2,this.id,this.idproduct,this.number});
}
class Model3{
  String ? title;
  String ?kg;
  Model3({this.title,this.kg});
}
class Info{
  String ? title;
  String ? value;
  Info({this.title,this.value});
}
class Histoty{
  String ? time;
  String ? price;
  String ? type;
  String ? content;
  Histoty({this.time,this.price,this.type,this.content});
}
class Model1{
  String ?diachi;
  String ?title;
  Model1({this.diachi,this.title});
}