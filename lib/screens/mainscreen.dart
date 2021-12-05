import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  Mainscreen({Key? key}) : super(key: key);

  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
final List<String> entries = <String>[
  'Попали в трудную ситуацию?',
 'Тематически провести день?',
 'Легко общаться с жителями?',
 'Хотите больше увидеть в России?',
 'Нравится духовно развиваться?'];
 final List<String> entries1 = <String>[
   'Телефоны служб',
   'Маршруты прогулок',
   'Выучите язык',
   'Поездка по городам',
   'Музеи города'
 ];
final List<String> icon_way=<String>['icon','icon-1','icon-2','icon-3','icon-4'];



    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView.separated(
  physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
  padding: const EdgeInsets.only(top:54,left: 10,right: 10),
  itemCount: entries.length,
  itemBuilder: (BuildContext context, int index) {
    return  Row(
      children: [
        SizedBox(height: 20,),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.center,
            width: 343,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.shade500,
            ),
            child: ListTile(
              trailing: IconButton(onPressed: (){},
              icon: Icon(Icons.more_vert,size: 34,color: Colors.white,),),
              leading: Image.asset('assets/${icon_way[index]}.png',alignment: Alignment.center,),
              subtitle: Text(entries1[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white)),
              title: Text(entries[index],style: TextStyle(fontSize: 12,color: Colors.white),),
            ),
          ),
        ),
      ],
    );
  },
  separatorBuilder: (BuildContext context, int index) => const SizedBox(height:44,),
        ),
      ),
     ),
    );
  }
}