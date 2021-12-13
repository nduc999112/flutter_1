import 'package:flutter/material.dart';
import 'package:flutter_1/contants/app_consttans.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:intl/intl.dart';

import 'model1.dart';
class HomeSceen6 extends StatefulWidget {

  @override
  _HomeSceen6State createState() => _HomeSceen6State();
}

class _HomeSceen6State extends State<HomeSceen6> {
  List<Model1> listData =[];
  String ?selectState;
  List<String> state = ['Trạng thái1', 'Trạng thái 2',];
  @override
  void initState() {
  listData = [
     Model1(
       titlema: 'Mã kiện hàng',
       titledh: 'Mã đơn hàng',
       titlecn: 'cân nặng',
       titlett: 'thể tích(m3)',
       titleqd: 'cân nặn quy đổi',
       titledc: 'địa chỉ nhận hàng',
       titlekho: 'kho trung quốc',
       titlestate: 'Đang vận chuyển TQ-VN',
       titletien: 'Tiền còn thiếu ',
       ma: 'YT68858559598598',
       dh: 'NP985758696',
       cn: '4.2kg',
       tt: '0cm3',
       qd: '0kg',
       dc: 'Nguyễn trần tuấn/09757575576\n ngõ 3, Trần khát Chân, Quận hai\nbà trưng, Hà Nội',
       kho: '10:41  01/12/2021',
       State: '18:21  01/12/2021',
       tien: '427.622đ',
     ),
    Model1(
      titlema: 'Mã kiện hàng',
      titledh: 'Mã đơn hàng',
      titlecn: 'cân nặng',
      titlett: 'thể tích(m3)',
      titleqd: 'cân nặn quy đổi',
      titledc: 'địa chỉ nhận hàng',
      titlekho: 'kho trung quốc',
      titlestate: 'Đang vận chuyển TQ-VN',
      titletien: 'Tiền còn thiếu ',
      ma: 'YT68858559598598',
      dh: 'NP985758696',
      cn: '4.2kg',
      tt: '0cm3',
      qd: '0kg',
      dc: 'Nguyễn trần tuấn/09757575576\n ngõ 3, Trần khát Chân, Quận hai\nbà trưng, Hà Nội',
      kho: '10:41  01/12/2021',
      State: '18:21  01/12/2021',
      tien: '427.622đ',
    ),
    Model1(
      titlema: 'Mã kiện hàng',
      titledh: 'Mã đơn hàng',
      titlecn: 'cân nặng',
      titlett: 'thể tích(m3)',
      titleqd: 'cân nặn quy đổi',
      titledc: 'địa chỉ nhận hàng',
      titlekho: 'kho trung quốc',
      titlestate: 'Đang vận chuyển TQ-VN',
      titletien: 'Tiền còn thiếu ',
      ma: 'YT68858559598598',
      dh: 'NP985758696',
      cn: '4.2kg',
      tt: '0cm3',
      qd: '0kg',
      dc: 'Nguyễn trần tuấn/09757575576\n ngõ 3, Trần khát Chân, Quận hai\nbà trưng, Hà Nội',
      kho: '10:41  01/12/2021',
      State: '18:21  01/12/2021',
      tien: '427.622đ',
    )
  ];
    super.initState();
  }
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
        edtDate!.text=formattedDate;

      });
  }
  DateTime StartDate = DateTime.now();
  Future<void> _StartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
        startDate!.text=formattedDate;

      });
  }
  TextEditingController? edtDate=TextEditingController();
  TextEditingController? startDate=TextEditingController();
  @override
  Widget build(BuildContext context) {
    print('${MediaQuery.of(context).size.width}');
    print('${MediaQuery.of(context).size.height}');
    return Scaffold(
      appBar: AppBar(
 title: Text('Danh Sách kiện hàng', style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xffec846b),
      ),
    body: Container(
      child: Column(
        children: [
          Container(
              width: double.maxFinite,
              height: SizeConst.h220,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: SizeConst.h40,
                                width: double.maxFinite,
                                child: TextField(
                                  style: TextStyle(
                                    height: 1,
                                  ),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(1),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Color(0xffe1e1e1)),
                                      ),
                                      filled: true,
                                      contentPadding: EdgeInsets.only(left: 10),
                                      hintText: 'Mã kiện hàng ',
                                      hintStyle: TextStyle(color: Color(0xffe2e2e2), fontSize: 15),
                                      fillColor: Colors.white70),
                                ),
                              ),
                            ),
                            SizedBox(width: SizeConst.w10,),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: SizeConst.h40,
                                width: double.maxFinite,
                                child: TextField(
                                  style: TextStyle(
                                    height: 1,
                                  ),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(1),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Color(0xffe1e1e1)),
                                      ),
                                      filled: true,
                                      contentPadding: EdgeInsets.only(left: 10),
                                      hintText: 'Mã đơn Hàng',
                                    hintStyle: TextStyle(color: Color(0xffe2e2e2), fontSize: 15),
                                      fillColor: Colors.white70),
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConst.h5,),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: SizeConst.h40,
                              width: double.maxFinite,
                              child: TextField(
                                controller: startDate,
                                style: TextStyle(
                                  height: 1,
                                ),
                                enabled: false,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xffa6a6a6)),
                                    ),
                                    filled: true,
                                    contentPadding: EdgeInsets.only(left: 10),
                                    hintText: 'Từ ngày ',
                                    hintStyle: TextStyle(color: Color(0xffcacaca), fontSize: 15),
                                    fillColor: Colors.white70),
                              ),
                            ),
                          ),
                          SizedBox(width: SizeConst.w4,),
                          InkWell(
                              onTap: (){
                                _StartDate(context);
                              },
                            child: Expanded(
                              flex: 1,
                              child: Icon(Icons.calendar_today, color: Colors.red)
                            ),
                          ),
                          SizedBox(width: SizeConst.w10,),
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: SizeConst.h40,
                              width: double.maxFinite,
                              child: TextField(
                                controller: edtDate,
                                style: TextStyle(
                                  height: 1,
                                ),
                                enabled: false,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xffa6a6a6)),
                                    ),
                                    filled: true,
                                    contentPadding: EdgeInsets.only(left: 10),
                                    hintText: 'Đến ngày',
                                    hintStyle: TextStyle(color: Color(0xffcacaca), fontSize: 15),
                                    fillColor: Colors.white70),
                              ),

                            ),
                          ),
                          SizedBox(width: SizeConst.w4,),
                          InkWell(
                            onTap: (){
                              _selectDate(context);
                            },
                            child: Expanded(
                                flex: 1,
                                child: Icon(Icons.calendar_today, color: Colors.red)
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Expanded(
                        child:Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: AppConstant.dropdownField(
                              title: 'Trạng thái đơn hàng',
                              list: state,
                              valueselect: selectState,
                              function: (value){
                                setState(() {
                                  selectState=value;
                                });
                              }
                          ),
                        ),
                    ),
                  SizedBox(height: 5,),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                child: Container(
                                  height: SizeConst.h40,
                                  decoration: BoxDecoration(
                                    color: Color(0xffd4614e),
                                  ),
                                  child: Center(child: Text('Tìm kiếm', style: TextStyle(color: Colors.white),)),
                                ),
                              ),
                            ),
                            SizedBox(width: SizeConst.w10,),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: SizeConst.h40,
                                width: double.maxFinite,
                                child: TextField(
                                  style: TextStyle(
                                    height: 1,
                                  ),
                                  enabled: false,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(1),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Color(0xffa6a6a6)),
                                      ),
                                      filled: true,
                                      contentPadding: EdgeInsets.only(left: 30),
                                      hintText: 'Đóng nâng cao',
                                      hintStyle: TextStyle(color: Color(0xffcacaca), fontSize: 15),
                                      fillColor: Colors.white70),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: Container(
              color: Color(0xffefefef),
              child: ListView.builder(
                itemCount: listData.length,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: SizeConst.h320,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10), color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 12, bottom: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${listData[index].titlema}', style: TextStyle(color: Color(0xffdf8530)),),
                                  Text("${listData[index].ma}",style: TextStyle(color: Color(0xffdf8530))),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${listData[index].titledh}'),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.black
                                      ),
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8),
                                        child: Text("${listData[index].dh}"),
                                      )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${listData[index].titlecn}'),
                                  Text("${listData[index].cn}"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${listData[index].titlett}'),
                                  Text("${listData[index].tt}"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${listData[index].titleqd}'),
                                  Text("${listData[index].qd}"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${listData[index].titledc}'),
                                  Text("${listData[index].dc}"),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${listData[index].titlekho}'),
                                  Text("${listData[index].kho}"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${listData[index].titlestate}', style: TextStyle(color: Colors.blue),),
                                  Text("${listData[index].State}", style: TextStyle(color: Colors.blue),),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${listData[index].titletien}', style: TextStyle(color: Colors.red),),
                                  Text("${listData[index].tien}" ,style: TextStyle(color: Colors.red),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          )
        ],
      ),
    ),
    );
  }
}
