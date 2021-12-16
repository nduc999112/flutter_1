import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';

class AppConstant {
  static Widget1({String? tittle, TextAlign? textAlign}) {
    return Container(
      height: SizeConst.h50,
      child: TextField(
        style: TextStyle(
          height: 1,
        ),
        textAlign: textAlign ?? TextAlign.start,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            filled: true,
            contentPadding: EdgeInsets.only(left: 10),
            hintText: tittle,
            hintStyle: TextStyle(color: Color(0xffe2e2e2), fontSize: 15),
            fillColor: Colors.white),
      ),
    );
  }

  static Widget infoWidget({String? text, Widget? widget, bool? required}) {
    bool req = required ?? false;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 2)),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: text,
              ),
              TextSpan(
                text: req ? "*" : "",
              )
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: widget,
          ),
        ],
      ),
    );
  }

  static Widget Textform({String? title}) {
    return Row(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
          ),
        ),
      ],
    );
  }


  static Widget dropdownField(
      {String? title,
      String? valueselect,
      List<dynamic>? list,
      Function? function}) {
    return Center(
      child: InputDecorator(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          contentPadding: EdgeInsets.all(15),
        ),
        child: DropdownButtonHideUnderline(
            child: DropdownButton(
          isDense: true,
          isExpanded: true,
          hint: Text(
            title!,
            style: TextStyle(color: Colors.grey[400]),
          ),
          // Not necessary for Option 1
          value: valueselect,
          onChanged: (newValue) {
            valueselect = newValue.toString();
            function!.call(newValue);
            // setState(() {
            //   _selectedLocation = newValue as String?;
            // });
          },
          items: list!.map((location) {
            return DropdownMenuItem(
              child: Text(location),
              value: location,
            );
          }).toList(),
        )),
      ),
    );
  }
// static Widget dropdownField(value, items, hint, Function onChanged,
//     { TextStyle ?textStyle}) {
//   TextStyle style = textStyle ??TextStyle.;
//   TextStyle hintStyle = style.copyWith(color: Colors.grey);
//   return Padding(
//     padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
//     child: DropdownButtonFormField(
//       isExpanded: true,
//       //isDense: false,
//       value: value,
//       onTap: () {},
//       icon: Icon(
//         Icons.keyboard_arrow_down_sharp,
//         color: Colors.black,
//
//       ),
//       hint: Text(
//         hint,
//         style: hintStyle,
//       ),
//
//       elevation: 3,
//       style: style,
//       decoration: InputDecoration.collapsed(hintText: ''),
//       onChanged: (value) {
//         onChanged(value);
//       },
//       items: items,
//     ),
//   );
// }
}
