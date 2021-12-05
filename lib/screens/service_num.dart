// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_8/screens/input_screen.dart';

class TwoCard extends StatefulWidget {
  TwoCard({Key? key}) : super(key: key);

  @override
  _TwoCardState createState() => _TwoCardState();
}

List<String> title_name = ['Единый телефон служб', 'Отель Невский'];
List<TextStyle> stylish = [
  TextStyle(color: Colors.white, fontSize: 16),
  TextStyle(color: Colors.white, fontSize: 16),
  TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
  TextStyle(color: Colors.black, fontSize: 14)
];
List<String> names = [
  'Медицина',
  'Полиция',
  'Посольство',
  'Транспорт',
  'Свои номера'
];

class _TwoCardState extends State<TwoCard> {
  @override
  Widget build(BuildContext context) {
    Widget scroll_widget(int title_index) {
      return Container(
        margin: EdgeInsets.only(left: 16,right: 16),
        child: SizedBox(
          width: 360,
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    width: 232,
                    height: 83,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue,
                    ),
                    margin: EdgeInsets.only(right: 10, left: 10),
                    padding: EdgeInsets.only(top: 10),
                    child: ListTile(
                      leading: Image.asset('assets/medicine.png'),
                      title: Text(
                        title_name[title_index],
                        style: stylish[title_index],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    }

    Widget names_widget(int wd_index, int st_index) {
      return Container(
        margin: EdgeInsets.only(top: 25, left: 16, bottom: 34),
        child: Text(
          names[wd_index],
          style: stylish[st_index],
        ),
      );
    }

    Widget end_scroll_widget(int tx_index,int st_index) {
      return Container(
        margin: EdgeInsets.only(left: 16,right: 16),
        child: SizedBox(
          width: 200,
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                            child:Image.asset('assets/add-phone.png',),
                            ),
                      );
                   
                } else {
                  return Center(
                    child: MaterialButton(
                      onPressed: (){},
                      child: Container(
                        padding: EdgeInsets.only(top:15),
                        width: 172,
                        height: 83,
                        decoration: BoxDecoration(
                          color:Colors.blue, 
                          borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            leading: Image.asset('assets/hotel.png'),
                            title: Text(title_name[tx_index],style: stylish[st_index],),
                          ),
                      ),
                    ),
                  );
                }
              }),
        ),
      );
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.blue,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Center(
              child: Container(
                padding: EdgeInsets.only(right: 40),
                child: Text(
                  "TЕЛЕФОНЫ СЛУЖБ",
                  style: stylish[3],
                ),
              ),
            )),
        body: SafeArea(
            child: ListView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            names_widget(0, 2),
            scroll_widget(0),
            names_widget(1, 2),
            scroll_widget(0),
            names_widget(2, 2),
            scroll_widget(0),
            names_widget(3, 2),
            scroll_widget(0),
            names_widget(4, 2),
            end_scroll_widget(1,1),
            SizedBox(height: 50,)
          ],
        )));
  }
}
