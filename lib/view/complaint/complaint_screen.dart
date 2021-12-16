import 'package:flutter/material.dart';
import 'package:flutter_1/contants/app_consttans.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:intl/intl.dart';

import 'complaint_ui.dart';
class ComplaintScreen extends StatefulWidget {
  const ComplaintScreen({Key? key}) : super(key: key);

  @override
  _ComplaintScreenState createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  @override
  bool visi= true;
  List<String> _locations = ['web1', 'web2',]; // Option 2
  String ?_selectedLocation; // Option 2
  String ?selectState;
  List<String> state = ['Trạng thái1', 'Trạng thái 2',];
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: Container(
        color: Color(0xfff2f2f2),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                child: Padding(
                  padding:  EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      AppConstant.Widget1(tittle: 'Mã Khiếu nại'),
                      SizedBox(height: 10,),
                      Row(
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
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConst.h10,
            ),
            Visibility(
              visible: visi,
              child: Padding(
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
            ),
            SizedBox(
              height: SizeConst.h10,
            ),
            Visibility(
              visible: visi,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child:AppConstant.dropdownField(
                            title: 'Website',
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
                            title: 'Trạng thái  ',
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
                  InkWell(
                    onTap: (){
                      setState(() {
                        visi=! visi;
                      });
                    },
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
            Expanded(
              child: Container(
                    color: Color(0xfff2f2f2),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push( context, MaterialPageRoute(builder: (context) => ComplaintUi()), );
                        },
                        child: Container(
                          height: SizeConst.h150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network("https://vn-live-05.slatic.net/p/ff17d900fda6683d68b9c72f1a796676.jpg_525x525q80.jpg",width: 100,height: 140,),
                                SizedBox(width: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text('Mã KN: 5578686', style: TextStyle(color: Color(0xfff67b5e)),),
                                          SizedBox(width: SizeConst.w32,),
                                          Container(
                                            height: SizeConst.h35,
                                            width: SizeConst.w90,
                                            decoration: BoxDecoration(
                                              color: Color(0xff00a65a),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                            child: Center(child: Text('Thành công', style: TextStyle(color: Colors.white),)),
                                          )
                                        ],
                                      ),
                                      Text('Kiếu nại sản phẩm 123773 trong đơn\nhàng 7833288'),
                                      Text('Mã sản phẩm:123444'),
                                      Text('Lý do: Không nhận được hàng'),
                                    ],
                                  ),
                                )
                              ],
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
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
        'danh sách khiếu nại',
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