import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/app_consttans.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:intl/intl.dart';

class Home9View extends StatefulWidget {
  const Home9View({Key? key}) : super(key: key);

  @override
  _Home9ViewState createState() => _Home9ViewState();
}

class _Home9ViewState extends State<Home9View> {

  List<String> _locations = ['Tiền mặt', 'Thẻ ATM',]; // Option 2
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
        id: '9876554',
        date: '16:17 - 28/11/2021',
        money: '-689.481',
        moneys: '59.418',
        type: 'Đặt cọc',
        code: 'NP7464532',
        content: 'Đặt cọc cho đơn hàng NP746292',
        status: 'Thành Công'
      ),
      History(
          id: '9876554',
          date: '16:17 - 28/11/2021',
          money: '-689.481',
          moneys: '59.418',
          type: 'Đặt cọc',
          code: 'NP7464532',
          content: 'Đặt cọc cho đơn hàng NP746292',
          status: 'Thành Công'
      ),History(
          id: '9876554',
          date: '16:17 - 28/11/2021',
          money: '-689.481',
          moneys: '59.418',
          type: 'Đặt cọc',
          code: 'NP7464532',
          content: 'Đặt cọc cho đơn hàng NP746292',
          status: 'Thành Công'
      ),History(
          id: '9876554',
          date: '16:17 - 28/11/2021',
          money: '-689.481',
          moneys: '59.418',
          type: 'Đặt cọc',
          code: 'NP7464532',
          content: 'Đặt cọc cho đơn hàng NP746292',
          status: 'Thành Công'
      ),History(
          id: '9876554',
          date: '16:17 - 28/11/2021',
          money: '-689.481',
          moneys: '59.418',
          type: 'Đặt cọc',
          code: 'NP7464532',
          content: 'Đặt cọc cho đơn hàng NP746292',
          status: 'Thành Công'
      ),
      History(
          id: '9876554',
          date: '16:17 - 28/11/2021',
          money: '-689.481',
          moneys: '59.418',
          type: 'Đặt cọc',
          code: 'NP7464532',
          content: 'Đặt cọc cho đơn hàng NP746292',
          status: 'Thành Công'
      ),
      History(
          id: '9876554',
          date: '16:17 - 28/11/2021',
          money: '-689.481',
          moneys: '59.418',
          type: 'Đặt cọc',
          code: 'NP7464532',
          content: 'Đặt cọc cho đơn hàng NP746292',
          status: 'Thành Công'
      ),
      History(
          id: '9876554',
          date: '16:17 - 28/11/2021',
          money: '-689.481',
          moneys: '59.418',
          type: 'Đặt cọc',
          code: 'NP7464532',
          content: 'Đặt cọc cho đơn hàng NP746292',
          status: 'Thành Công'
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
                      title: 'Loại giao dịch',
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
                          title: 'Trạng thái',
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
                  Flexible(
                    flex:1,
                    child: Container(
                      width: SizeConst.w180,
                      color: Color(0xffe95433),
                     child: Padding(
                       padding:  EdgeInsets.all(10.0),
                       child: Center(child: Text('Tìm kiếm',style: TextStyle(color: Colors.white),)),
                     )),
                  ),
                  SizedBox(
                    width: SizeConst.w20,
                  ),
                  Flexible(
                    flex:1,
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)
                        ),
                        width: SizeConst.w180,
                        child: Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Center(child: Text('Đóng nâng cao',style: TextStyle(color: Colors.grey),)),
                        )),
                  ),

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
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Text('Mã giao dịch',style: TextStyle(color: Color(0xffdb7f34),fontSize: SizeConst.size17,fontWeight: FontWeight.bold),)),
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Text('${historys![int].id}',style: TextStyle(color: Color(0xffdb7f34),fontSize: SizeConst.size17,fontWeight: FontWeight.bold),))
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Text('Mã giao dịch',style: TextStyle(),)),
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Text('${historys![int].date}',style: TextStyle(),))
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Text('Số tiền',style: TextStyle(),)),
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Text('${historys![int].money}',style: TextStyle(color: Color(0xffc85043),fontWeight: FontWeight.bold,fontSize: SizeConst.size17),))
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Text('Số dư sau giao dịch',style: TextStyle(),)),
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Text('${historys![int].money}',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: SizeConst.size17),))
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Flexible(
                                    flex:1,
                                    fit: FlexFit.loose,
                                    child: Text('Loại giao dịch',style: TextStyle(),)),
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Text('${historys![int].type}',style: TextStyle(color:Color(0xff5089aa),fontSize: SizeConst.size17),))
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Text('Mã đơn',style: TextStyle(),)),
                              Flexible(
                                flex:1,
                                fit: FlexFit.loose,
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Color(0xffdb7f34),width: 2)
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                                      child: Text('${historys![int].code}',style: TextStyle(color: Color(0xffdb7f34),fontSize: SizeConst.size17),),
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Text('Nội dung',style: TextStyle(),)),
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Text('${historys![int].content}',style: TextStyle()))
                            ],
                          ),
                          SizedBox(
                            height: SizeConst.h10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Text('Trạng thái',style: TextStyle(),)),
                              Flexible(
                                flex:1,
                                fit: FlexFit.loose,
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff0ba060),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.all(8.0),
                                      child: Text('${historys![int].status}',style: TextStyle(color:Colors.white),),
                                    )),
                              )
                            ],
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
          'Lịch sử giao dịch',
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
  String ? money;
  String ?moneys;
  String ?type;
  String ?code;
  String ?content;
  String ?status;
  History({this.id,this.date,this.money,this.moneys,this.type,this.code,this.content,this.status});
}