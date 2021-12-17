import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/app_consttans.dart';
import 'package:flutter_1/contants/size_const.dart';

class AddDeliveryAdressView extends StatefulWidget {
  const AddDeliveryAdressView({Key? key}) : super(key: key);

  @override
  _AddDeliveryAdressViewState createState() => _AddDeliveryAdressViewState();
}

class _AddDeliveryAdressViewState extends State<AddDeliveryAdressView> {
  List<String> ?city;
  String ?value;
  bool _switchValue=true;
  @override
  void initState() {
    city=[
      'Hà Nội',
      'Hà Nam',
      'Hải Dương'
    ];
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Container(
        child: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Họ và tên',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration:  InputDecoration.collapsed(
                          hintText: 'Nhập họ tên',
                        hintStyle: TextStyle(color: Colors.grey[300],fontSize: 15)
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeConst.h32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Số điện thoại',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: new InputDecoration.collapsed(
                          hintText: 'Nhập số điện thoại',
                          hintStyle:  TextStyle(color: Colors.grey[300],fontSize: 15)
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeConst.h32,
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Text('Tỉnh/Thành phố',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                 Expanded(
                   child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         isDense: true,
                         isExpanded: true,
                         hint: Text(
                           '',
                           textAlign: TextAlign.right,
                           style: TextStyle(color: Colors.grey[400]),
                         ),
                         // Not necessary for Option 1
                         value: value,
                         onChanged: (newValue) {
                           value = newValue.toString();

                           // setState(() {
                           //   _selectedLocation = newValue as String?;
                           // });
                         },
                         items: city?.map((location) {
                           return DropdownMenuItem(
                             child: Align(alignment: Alignment.centerRight, child: Text(location)),
                             value: location,
                           );
                         }).toList(),
                       )),
                 ),
               ],
             ),
              SizedBox(
                height: SizeConst.h32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Quận/Huyện',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                  Expanded(
                    child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          isDense: true,
                          isExpanded: true,
                          hint: Text(
                            '',
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                          // Not necessary for Option 1
                          value: value,
                          onChanged: (newValue) {
                            value = newValue.toString();

                            // setState(() {
                            //   _selectedLocation = newValue as String?;
                            // });
                          },
                          items: city?.map((location) {
                            return DropdownMenuItem(
                              child: Align(alignment: Alignment.centerRight, child: Text(location)),
                              value: location,
                            );
                          }).toList(),
                        )),
                  ),
                ],
              ),
              ListTile(
                title: Text('Địa chỉ cụ thể',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                subtitle: Text(
                    'Số nhà,tên tòa nhà,tên đường ...',style:TextStyle(color: Colors.grey[300],fontSize: 15) ,
                ),
              ),
              TextField(
                decoration:  InputDecoration.collapsed(
                    hintText: 'Nhập địa chỉ nhận hàng',
                    hintStyle: TextStyle(color: Colors.grey[300],fontSize: 15)
                ),
              ),
              SizedBox(
                height: SizeConst.h32,
              ),
              Text('Ghi chú',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
              SizedBox(
                height: SizeConst.h20,
              ),
              TextField(
                decoration:  InputDecoration.collapsed(
                    hintText: 'Nhập ghi chú',
                    hintStyle: TextStyle(color: Colors.grey[300],fontSize: 15)
                ),
              ),
              SizedBox(
                height: SizeConst.h20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Đặt làm địa chỉ mặc định',style: TextStyle(color: Colors.grey[300],fontSize: 15)),
                  CupertinoSwitch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),

                ],
              )
            ],
          ),
        ),
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
        'Địa chỉ nhận hàng',
        style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: SizeConst.size16,
            color: Colors.white60),
      ),
    ),
  );
}
