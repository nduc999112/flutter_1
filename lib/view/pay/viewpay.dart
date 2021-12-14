import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/contants/color_const.dart';
import 'package:flutter_1/contants/size_const.dart';

class ViewPay extends StatefulWidget {
  // const ViewPay({Key? key}) : super(key: key);

  @override
  _ViewPayState createState() => _ViewPayState();
}

class _ViewPayState extends State<ViewPay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Container(
        child: ExpansionTileCard(
          baseColor: ColorConst.colorRed1,
          title: Text('Chuyển khoản nhận ngay',style: TextStyle(color: Colors.white),),
          subtitle: Text('(Miễn phí giao dịch)',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white),),
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Text(
                  """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.

Use me any time you think your app could benefit from being just a bit more Material.

These buttons control the next card down!""",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontSize: 16),
                ),
              ),
            ),
          ],
          elevation: 0,
          animateTrailing: true,
          expandedColor: Colors.red,
          expandedTextColor: Colors.white,

          // leading: CircleAvatar(child: Text('A')),

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
      padding:  EdgeInsets.only(top: SizeConst.h3),
      child: Text('Nạp tiền',style: TextStyle(fontWeight: FontWeight.normal,fontSize: SizeConst.size16,color: Colors.white60),),
    ),

  );
}