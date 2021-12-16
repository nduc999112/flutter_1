import 'package:flutter/material.dart';
import 'package:flutter_1/contants/size_const.dart';
import 'package:flutter_1/home3/home3.dart';
import 'new_sceern.dart';
class NotifitUi extends StatefulWidget {
  const NotifitUi({Key? key}) : super(key: key);

  @override
  _NotifitUiState createState() => _NotifitUiState();
}

class _NotifitUiState extends State<NotifitUi> with SingleTickerProviderStateMixin{
  TabController? _tabController;
  List<datanoti> ?data;
  void  initState() {
    _tabController = TabController(length: 2, vsync: this);
    data=[
      datanoti(
          image: "https://phucanhcdn.com/media/product/28660_cuh_zct2g13.jpg",
          text: "Kiện hàng YT848588 của đơn NP85895\nđã về kho VN",
          date: '22:48 10/12/2021'
      ),
      datanoti(
          image: "https://phucanhcdn.com/media/product/28660_cuh_zct2g13.jpg",
          text: "Kiện hàng YT848588 của đơn NP85895\nđã về kho VN",
          date: '22:48 10/12/2021'
      ),
       datanoti(
          image: "https://phucanhcdn.com/media/product/28660_cuh_zct2g13.jpg",
          text: "Kiện hàng YT848588 của đơn NP85895\nđã về kho VN",
          date: '22:48 10/12/2021'
      ),
      datanoti(
          image: "https://phucanhcdn.com/media/product/28660_cuh_zct2g13.jpg",
          text: "Kiện hàng YT848588 của đơn NP85895\nđã về kho VN",
          date: '22:48 10/12/2021'
      ),
      datanoti(
          image: "https://phucanhcdn.com/media/product/28660_cuh_zct2g13.jpg",
          text: "Kiện hàng YT848588 của đơn NP85895\nđã về kho VN",
          date: '22:48 10/12/2021'
      ),
      datanoti(
          image: "https://phucanhcdn.com/media/product/28660_cuh_zct2g13.jpg",
          text: "Kiện hàng YT848588 của đơn NP85895\nđã về kho VN",
          date: '22:48 10/12/2021'
      ),
   ];
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text('Thông báo', style:  TextStyle(color: Colors.white, fontSize: 15),),
        ),
        backgroundColor: Color(0xfff0886f),
      ),
      body:  Container(
        child: DefaultTabController(
          initialIndex: 1,
          length: 2,
          child: Scaffold(
            body: Container(
              color: Colors.white,
              child: Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    isScrollable: true,
                    indicatorColor: Color(0xffec846b),
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
                        padding: const EdgeInsets.all(15),
                        child: Text('Thông báo '),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text('Tin tức'),
                      ),
                    ],
                  ),
                  Container(
                    child: Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            ListView.builder(
                              itemCount: data!.length,
                                itemBuilder: (BuildContext context, int idx){
                                return Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => HomeView3()),
                                      );
                                    },
                                    child: Container(
                                      height: SizeConst.h120,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xfffafafa),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8),
                                        child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            CircleAvatar(
                                              radius: 40,
                                              backgroundImage: NetworkImage('${data![idx].image}'),
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text('${data![idx].text}'),
                                                SizedBox(height: 30,),
                                                Text('${data![idx].date}'),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );

                                }),
                            NewScreen()
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
    
  }

}
class datanoti{
  String? image;
  String? text;
  String? date;
  datanoti({this.image, this.text, this.date});
}