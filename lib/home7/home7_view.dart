import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:intl/intl.dart';
class Home7Home extends StatefulWidget {
  const Home7Home({Key? key}) : super(key: key);

  @override
  _Home7HomeState createState() => _Home7HomeState();
}

class _Home7HomeState extends State<Home7Home> {
  String ?sex;
  String?city;
  String?city1;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  var _currencies = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
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
  TextEditingController? edtDate=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 20),
          child: Center(
            child: CircleAvatar(
              radius: SizeConst.r50,
              backgroundImage:
              NetworkImage("https://s3.o7planning.com/images/boy-128.png"),
            ),
          ),
        ),
        SizedBox(
          height: SizeConst.h16,
        ),
        itemTextField(textTitle: 'Họ và tên', hinText: 'Họ và tên'),
        SizedBox(
          height: SizeConst.h16,
        ),
        itemTextField(textTitle: 'Số điện thoại', hinText: 'Số điện thoại'),
        SizedBox(
          height: SizeConst.h16,
        ),
        Padding(
          padding: EdgeInsets.only(right: 16, left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  flex: 1,
                  child: Text(
                    'Mật khẩu',
                    style: TextStyle(
                        color: Colors.black, fontSize: SizeConst.size15),
                  )),
              SizedBox(
                width: SizeConst.w1,
              ),
              Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lần cuối lúc 07:45 - 06/07/2021'),
                    Text(
                      'Đổi mật khẩu ?',
                      style: TextStyle(
                        color: Color(0xff609fb9),
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 0,
                child: Container(),
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        //ngày sinh
        Padding(
          padding:  EdgeInsets.only(left: 16,right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: Text(
                  'Ngày sinh',
                  style:
                  TextStyle(color: Colors.black, fontSize: SizeConst.size15),
                ),
              ),
              Flexible(
                flex: 2,
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: SizeConst.h50,
                      child: TextField(
                        controller:edtDate ,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Ngày sinh',
                            isDense: true),
                      ),
                    ),
                    SizedBox(width: SizeConst.w4,),
                    InkWell(
                        onTap: (){
                          _selectDate(context);
                        },
                        child: Icon(Icons.calendar_today,color: Colors.red,size: 35,))
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: SizeConst.h16,
        ),
        widgetDropDown(
            title: 'Giới tính',
            value: sex,function: (value){
          setState(() {
            sex = value;
          });
        }
            ,
            list: ['Nam','Nữ']
        ),
        SizedBox(
          height: 16,
        ),
        //giới tính
        itemTextField(textTitle: 'Địa chỉ', hinText: 'Địa chỉ'),
        SizedBox(
          height: 16,
        ),
        widgetDropDown(
            title: 'Tỉnh/TP',
            value: city,function: (value){
          setState(() {
            city = value;
          });
        }
            ,
            list: ['Hà Nội','Hải Dương','Hải Phòng','Hồ Chí Minh']
        ),
        SizedBox(
          height: 16,
        ),
        widgetDropDown(
            title: 'Quận/Huyện',
            value: city1,function: (value){
          setState(() {
            city1 = value;
          });
        }
            ,
            list: ['Quận Hai Bà Trưng','Quận Nam Từ Liêm','Quận Ba Đình','Quận Cầu Giấy']
        ),
        SizedBox(
          height: SizeConst.h50,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: double.infinity,
              height: SizeConst.h40,
              decoration: BoxDecoration(
                  color:  Color(0xffe95433),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Center(child: Text('Cập nhật thông tin',style: TextStyle(color: Colors.white,fontSize: 17),)),
            ),
          ),
        )
      ],

    )),
    );
  }
}

PreferredSizeWidget _appbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(0xffec846b),
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        'Thông tin cá nhân',
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

Widget widgetDropDown({String?title,String ?value,Function ?function,List<String>? list}){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
            flex: 1,
            child: RichText(
              text: TextSpan(
                  text: title,
                  style: TextStyle(color: Colors.black, fontSize: SizeConst.size15),
                  children: <TextSpan>[
                    TextSpan(
                        text: '(',
                        style:
                        TextStyle(color: Colors.black, fontSize: SizeConst.size15)),
                    TextSpan(
                        text: '*',
                        style: TextStyle(color: Colors.red, fontSize: SizeConst.size15)),
                    TextSpan(
                        text: ')',
                        style: TextStyle(color: Colors.black, fontSize: SizeConst.size15))
                  ]),
            )),
        Flexible(
          flex: 2,
          child: Container(
            height: SizeConst.h50,
            child: DropdownButtonFormField<String>(
              decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  isDense: true
              ),
              value: value,
              items: list!
                  .map((label) => DropdownMenuItem(
                child: Text(label.toString()),
                value: label,
              ))
                  .toList(),
              hint: Text(''),
              onChanged: (value) {
                function!(value);
              },
            ),
          ),
        ),
      ],
    ),
  );
}

Widget title({String? title}) {
  return RichText(
    text: TextSpan(
        text: title,
        style: TextStyle(color: Colors.black, fontSize: SizeConst.size15),
        children: <TextSpan>[
          TextSpan(
              text: '(',
              style:
                  TextStyle(color: Colors.black, fontSize: SizeConst.size15)),
          TextSpan(
              text: '*',
              style: TextStyle(color: Colors.red, fontSize: SizeConst.size15)),
          TextSpan(
              text: ')',
              style: TextStyle(color: Colors.black, fontSize: SizeConst.size15))
        ]),
  );
}

Widget itemTextField({String? textTitle, String? hinText}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: SizeConst.w16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(flex: 1, child: title(title: textTitle)),
        SizedBox(
          width: SizeConst.w2,
        ),
        Flexible(
          flex: 2,
          child: Container(
            height: SizeConst.h50,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: hinText,
                  isDense: true),
            ),
          ),
        )
      ],
    ),
  );
}
