import 'package:flutter/material.dart';
import 'package:flutter_1/contants/app_consttans.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:intl/intl.dart';
class HomeScreen10 extends StatefulWidget {

  @override
  _HomeScreen10State createState() => _HomeScreen10State();
}

class _HomeScreen10State extends State<HomeScreen10> {

  List<String> _locations = ['giao 1', 'giao 2',]; // Option 2
  String ?_selectedLocation; // Option 2
  String ?selectState;
  List<String> state = ['Trạng thái1', 'Trạng thái 2',];
  List<History> ?historys;

  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
        // edtDate!.text=formattedDate;

      });
  }
  @override
  void initState() {
    // TODO: implement initState
    historys=[
      History(
          id: '75999876554',
          sl: '1',
          cn: '2.9kg',
          ht: 'Giao nhận tại kho',
          date: '16:17 - 28/11/2021',
          code: 'NP7464532',
          status: 'Đã giao',
          gc: "chưa có ghi chú",
          nv: 'Trao đổi với nhân viên',
          dc: 'Nguyễn Trần Tuấn/0974646747\n505 Minh Khai,\nQuận hai Bà Trưng, Hà Nội',
        ma: 'YT598698796980',
      ),
      History(
        id: '75999876554',
        sl: '1',
        cn: '2.9kg',
        ht: 'Giao nhận tại kho',
        date: '16:17 - 28/11/2021',
        code: 'NP7464532',
        status: 'Đã giao',
        gc: "chưa có ghi chú",
        nv: 'Trao đổi với nhân viên',
        dc: 'Nguyễn Trần Tuấn/0974646747\n505 Minh Khai,\nQuận hai Bà Trưng, Hà Nội',
        ma: 'YT598698796980',
      ),
      History(
        id: '75999876554',
        sl: '1',
        cn: '2.9kg',
        ht: 'Giao nhận tại kho',
        date: '16:17 - 28/11/2021',
        code: 'NP7464532',
        status: 'Đã giao',
        gc: "chưa có ghi chú",
        nv: 'Trao đổi với nhân viên',
        dc: 'Nguyễn Trần Tuấn/0974646747\n505 Minh Khai,\nQuận hai Bà Trưng, Hà Nội',
        ma: 'YT598698796980',
      ),
      History(
        id: '75999876554',
        sl: '1',
        cn: '2.9kg',
        ht: 'Giao nhận tại kho',
        date: '16:17 - 28/11/2021',
        code: 'NP7464532',
        status: 'Đã giao',
        gc: "chưa có ghi chú",
        nv: 'Trao đổi với nhân viên',
        dc: 'Nguyễn Trần Tuấn/0974646747\n505 Minh Khai,\nQuận hai Bà Trưng, Hà Nội',
        ma: 'YT598698796980',
      ),
      History(
        id: '75999876554',
        sl: '1',
        cn: '2.9kg',
        ht: 'Giao nhận tại kho',
        date: '16:17 - 28/11/2021',
        code: 'NP7464532',
        status: 'Đã giao',
        gc: "chưa có ghi chú",
        nv: 'Trao đổi với nhân viên',
        dc: 'Nguyễn Trần Tuấn/0974646747\n505 Minh Khai,\nQuận hai Bà Trưng, Hà Nội',
        ma: 'YT598698796980',
      ),

    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Container(
        color: Color(0xfff2f2f2),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                child: Padding(
                  padding:  EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                          flex: 1,
                          child: AppConstant.Widget1(tittle: 'Mã giao dịch')
                      ),
                      SizedBox(width: SizeConst.w10,),
                      Expanded(
                          flex: 1,
                          child: AppConstant.Widget1(tittle: 'Mã đơn hàng')
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConst.h10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: AppConstant.Widget1(tittle: 'Từ ngày',textAlign: TextAlign.center)),
                  SizedBox(
                    width: SizeConst.w4,
                  ),
                  InkWell(
                      onTap: (){
                        _selectDate(context);
                      },
                      child: Icon(Icons.calendar_today,color: Colors.red,size: 30,)),
                  SizedBox(
                    width: SizeConst.w16,
                  ),
                  Expanded(child: AppConstant.Widget1(tittle: 'Đến ngày',textAlign: TextAlign.center)),
                  SizedBox(
                    width: SizeConst.w4,
                  ),
                  InkWell(
                      onTap: (){
                        _selectDate(context);
                      },
                      child: Icon(Icons.calendar_today,color: Colors.red,size: 30,))
                ],),
            ),
            SizedBox(
              height: SizeConst.h10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child:AppConstant.dropdownField(
                          title: 'Hình thức giao',
                          list: _locations,
                          valueselect: _selectedLocation,
                          function: (value){
                            setState(() {
                              _selectedLocation=value;
                            });
                          }
                      )
                  ),
                  SizedBox(
                    width: SizeConst.w10,
                  ),
                  Expanded(
                      child:AppConstant.dropdownField(
                          title: 'Trạng thái phiếu ',
                          list: state,
                          valueselect: selectState,
                          function: (value){
                            setState(() {
                              selectState=value;
                            });
                          }
                      )
                  )
                ],
              ),
            ),
            SizedBox(
              height: SizeConst.h10,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: SizeConst.w180,
                      color: Color(0xffe95433),
                      child: Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Center(child: Text('Tìm kiếm',style: TextStyle(color: Colors.white),)),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)
                      ),
                      width: SizeConst.w180,
                      child: Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Center(child: Text('Đóng nâng cao',style: TextStyle(color: Colors.grey),)),
                      )),

                ],
              ),
            ),
            Expanded(child:
            ListView.builder(
              itemCount: historys!.length,
              itemBuilder: (context,int){
                return Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Mã phiếu',style: TextStyle(color: Color(0xffdb7f34),fontSize: SizeConst.size17,fontWeight: FontWeight.bold),),
                              Text('${historys![int].id}',style: TextStyle(color: Color(0xffdb7f34),fontSize: SizeConst.size17,fontWeight: FontWeight.bold),)
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Ngày tạo',style: TextStyle(),),
                              Text('${historys![int].date}',style: TextStyle(),)
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Trạng thái',style: TextStyle(),),
                              Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff0ba060),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.all(8.0),
                                    child: Text('${historys![int].status}',style: TextStyle(color:Colors.white),),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Hình thức giao hàng',style: TextStyle(),),
                              Text('${historys![int].ht}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: SizeConst.size17),)
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Số kiện hàng',style: TextStyle(),),
                              Text('${historys![int].sl}',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: SizeConst.size17),)
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Tổng trọng lượng',style: TextStyle(),),
                              Text('${historys![int].cn}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: SizeConst.size17),)
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Địa chỉ nhận hàng',style: TextStyle(),),
                              Text('${historys![int].dc}',style: TextStyle(fontSize: 13))
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('ghi chú',style: TextStyle(),),
                              Column(
                                children: [
                              Text('${historys![int].gc}'),
                                  SizedBox(height: 5,),
                                  Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Color(0xffdb7f34),width: 2)
                                      ),
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                                        child: Text('${historys![int].nv}',style: TextStyle(color: Color(0xffdb7f34),fontSize: SizeConst.size17),),
                                      )),
                                ],
                              )
                            ],
                          ),

                          SizedBox(
                            height: SizeConst.h15,
                          ),
                          Center(child: Text('Danh sách kiện hàng',style: TextStyle(color: Color(0xffb7978b)),)),
                          SizedBox(
                            height: SizeConst.h10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Mã đơn hàng',style: TextStyle(),),
                              Text('${historys![int].ma}',style: TextStyle())
                            ],
                          ),

                          SizedBox(
                            height: SizeConst.h5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Địa chỉ nhận hàng',style: TextStyle(),),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Color(0xffdb7f34),width: 2)
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                                    child: Text('${historys![int].code}',style: TextStyle(color: Color(0xffdb7f34),fontSize: SizeConst.size17),),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h5,
                          ),
                          SizedBox(
                            height: SizeConst.h5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Cân Nặng',style: TextStyle(),),
                              Text('${historys![int].cn}',style: TextStyle(fontWeight: FontWeight.bold))
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h10,
                          ),
                        ],
                      ),
                    ),
                  ),
                );

              },
            ))

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
          'Phiếu giao hàng',
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
class History{
  String ?id;
  String ?date;
  String ? ht;
  String ?sl;
  String ?cn;
  String ?code;
  String ?dc;
  String ?gc;
  String ?ma;
  String ?nv;
  String ?status;
  History({this.id,this.date,this.sl,this.cn,this.ht,this.code,this.dc,this.status,this.ma, this.gc, this.nv});
}
