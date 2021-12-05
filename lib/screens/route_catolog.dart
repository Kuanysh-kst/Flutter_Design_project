import 'package:flutter/material.dart';

class RouteCatolog extends StatefulWidget {
  RouteCatolog({Key? key}) : super(key: key);

  @override
  _RouteCatologState createState() => _RouteCatologState();
}

List<String> button_names = ['СЛУЧАЙНЫЙ МАРШРУТ', 'ПО ВАШЕМУ МЕСТУ'];
List<Color> color_names = [
  Colors.blue,
  Colors.red,
];

class _RouteCatologState extends State<RouteCatolog> {
  @override
  Widget build(BuildContext context) {
    Widget ruletka() {
      return SizedBox(
        width: 343,
        height: 300,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Container(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                ),
                width: 299,
                height: 278,
                margin:
                    EdgeInsets.only(left: 16.0, right: 10, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Stack(children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 14),
                          width: 267,
                          height: 180,
                          child: Image.asset('assets/home.png'),
                        ),
                      ),
                      Positioned(
                          right: 23,
                          top: 10,
                          child: Container(
                            width: 45,
                            height: 45,
                            padding: EdgeInsets.only(right: 22, bottom: 22),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Colors.white,
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.orange.shade700,
                                  size: 30,
                                )),
                          ))
                    ]),
                    Container(
                        width: 280,
                        margin: EdgeInsets.only(left: 0, top: 10),
                        child: Text(
                          'Эпоха раннего Барокко',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                    Container(
                      width: 280,
                      margin: EdgeInsets.only(left: 0, top: 10),
                      child: Text(
                        'Этот маршрут прошли 1209 человек',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      );
    }

    Widget name_text() {
      return Container(
        margin: EdgeInsets.only(left: 16, top: 36, bottom: 32),
        child: Text(
          "Архитектура",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget button(int index) {
      return Container(
        margin: EdgeInsets.only(top: 10, bottom: 20, left: 16, right: 16),
        width: 340,
        height: 60,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color_names[index]),
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0)))),
            onPressed: () {},
            child: Text(
              button_names[index],
              style: TextStyle(fontSize: 18),
            )),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.blue,
          ),
        ),
        title: Center(
            child: Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            'КАТОЛОГ МАРШРУТОВ',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        )),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          name_text(),
          ruletka(),
          name_text(),
          ruletka(),
          name_text(),
          ruletka(),
          SizedBox(
            height: 30,
          ),
          button(0),
          SizedBox(
            height: 20,
          ),
          button(1),
          SizedBox(
            height: 40,
          ),
        ],
      )),
    );
  }
}
