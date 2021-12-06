import 'package:flutter/material.dart';

import 'naipot.dart';
class HomeView4 extends StatefulWidget {
  const HomeView4({Key? key}) : super(key: key);

  @override
  _HomeView4State createState() => _HomeView4State();
}

class _HomeView4State extends State<HomeView4> {
  List<Naipot> listdata = [];
  TextEditingController user = TextEditingController();
  @override
  void initState() {
    listdata = [
      Naipot(
          date: "15:44  28/10/2021",
          title:
          "The default constructor takes an explicit of children. This constructor is appropriate for list views with a small number of children because constructing the List requires doing work for every child that could possibly be displayed in the list view instead of just those children that are actually visible."),
      Naipot(
          date: "15:44  28/10/2021",
          title:
          "If non-null, the itemExtent forces the children to have the given extent in the scroll direction."),
      Naipot(
          date: "15:44  28/10/2021",
          title:
          "If non-null, the itemExtent forces the children to have the given extent in the scroll direction."),
      Naipot(
          date: "15:44  28/10/2021",
          title:
          "If non-null, the itemExtent forces the children to have the given extent in the scroll direction."),
      Naipot(
          date: "15:44  28/10/2021",
          title:
          "If non-null, the itemExtent forces the children to have the given extent in the scroll direction."),
      Naipot(
          date: "15:44  28/10/2021",
          title:
          "If non-null, the itemExtent forces the children to have the given extent in the scroll direction."),
      Naipot(
          date: "15:44  28/10/2021",
          title:
          "If non-null, the itemExtent forces the children to have the given extent in the scroll direction."),
      Naipot(
          date: "15:44  28/10/2021",
          title:
          "The default constructor takes an explicit of children. This constructor is appropriate for list views with a small number of children because constructing the List requires doing work for every child that could possibly be displayed in the list view instead of just those children that are actually visible."),
      Naipot(
          date: "15:44  28/10/2021",
          title:
          "The default constructor takes an explicit of children. This constructor is appropriate for list views with a small number of children because constructing the List requires doing work for every child that could possibly be displayed in the list view instead of just those children that are actually visible."),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('chi tiết đơn hàng'),
          backgroundColor: Color(0xffec846b),
        ),
        backgroundColor: Colors.grey,
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Column(
                      children: [
                        Text(
                          'Trao đổi với Naipot trên đơn',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Flexible(
                    flex: 8,
                    child: SingleChildScrollView(
                        physics: ScrollPhysics(),
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: listdata.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${listdata[index].date}",
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontSize: 14,
                                            color: Color(0xff5a5a5a))),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${listdata[index].title}",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 14,
                                          color: Color(0xff5a5a5a)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        )),
                  ),
                  // Divider(color: Colors.black,),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 8,
                            child: Container(
                              height: 40,
                              width: double.maxFinite,
                              // child: Row(
                              //   mainAxisSize: MainAxisSize.min,
                              //   children: [
                              child: TextField(
                                controller: user,
                                style: TextStyle(
                                  height: 1,
                                ),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    filled: true,
                                    hintText: 'Quý Khách có thể trao đổi tại đây',
                                    fillColor: Colors.white70),
                              ),

                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: InkWell(
                              onTap: (){
                                user.text ="";
                              },
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xffd4614e),
                                ),
                                child: Center(child: Text('Gửi', style: TextStyle(color: Colors.white),)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
