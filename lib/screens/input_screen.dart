import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

List<String> names = ['Название', 'Телефон', 'Описание'];
List<String> input_names = [
  'Водитель такси',
  '8-777-777-77-77',
  'Водитель Владимир; четные даты'
];
List<String> button_names = ['ДОБАВИТЬ', 'УДАЛИТЬ'];

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    Widget input(int index) {
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 380,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: TextField(
              decoration: InputDecoration(
            // border: OutlineInputBorder(),
            // icon: Icon(Icons.login),
            hintText: input_names[index],
            // helperText: "Логин используется для входа в систему",
          )),
        ),
      );
    }

    Widget texts(int index) {
      return Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(left: 16, top: 22),
          child: Text(
            names[index],
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    Widget button(int index) {
      return Container(
        margin: EdgeInsets.only(top: 10, bottom: 20),
        width: 360,
        height: 60,
        child: ElevatedButton(
            style: ButtonStyle(
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
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Редактироать',
                style: TextStyle(fontSize: 16, color: Colors.black),
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
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              texts(0),
              input(0),
              texts(1),
              input(1),
              texts(2),
              input(2),
              SizedBox(height: 30),
              button(0),
              button(1)
            ],
          ),
        ));
  }
}
