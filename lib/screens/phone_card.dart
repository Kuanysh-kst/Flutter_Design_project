import 'package:flutter/material.dart';

class PhoneCard extends StatefulWidget {
  PhoneCard({Key? key}) : super(key: key);

  @override
  _PhoneCardState createState() => _PhoneCardState();
}

List<String> texts = [
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et sed tempor, at magna purus quam sit id. Ut id aliquam molestie tortor, amet, suspendisse mi. Dictum viverra accumsan a proin amet. Amet, velit consequat enim urna, pellentesque in cursus auctor. Erat a, sapien, nisl id et.'
];

class _PhoneCardState extends State<PhoneCard> {
  @override
  Widget build(BuildContext context) {
    Widget table_of_contents() {
      return Container(
        padding: EdgeInsets.only(top: 20),
        width: 343,
        height: 60,
        child: Text(
          'Скорая помощь',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget number() {
      return Expanded(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.only(top: 30, left: 10),
            height: 110,
            child: Text(
              '112',
              style: TextStyle(fontSize: 41, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    }

    Widget call_button() {
      return Expanded(
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 180,
            height: 50,
            padding: EdgeInsets.only(right: 10),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {},
              child: Text(
                'ПОЗВОНИТЬ',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      );
    }

    Widget reading_text(int index) {
      return Container(
        margin: EdgeInsets.only(top: 20),
        width: 380,
        height: 154,
        child: Text(
          texts[index],
          style: TextStyle(fontSize: 16),
        ),
      );
    }

    Widget reason_name() {
      return Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(left: 10, bottom: 20),
          child: Text(
            'Причины вызова',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    Widget reasons() {
      return Container(
        height: 40,
        child: ListTile(
          leading: Container(
              width: 30,
              height: 25,
              child: Icon(
                Icons.brightness_1_rounded,
                size: 8,
                color: Colors.black,
              )),
          title: Text('My second line'),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Colors.red,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.blue,
          ),
        ),
        title: Center(
            child: Text(
          'КАРТОЧКА ТЕЛЕФОНА',
          style: TextStyle(color: Colors.black, fontSize: 14),
        )),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            table_of_contents(),
            Row(
              children: <Widget>[number(), call_button()],
            ),
            reading_text(0),
            reason_name(),
            Column(
              children: <Widget>[reasons(), reasons(), reasons()],
            )
          ],
        ),
      ),
    );
  }
}
