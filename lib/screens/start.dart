import 'package:flutter/material.dart';

class Strart_screen extends StatelessWidget {
  const Strart_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // margin: EdgeInsets.only(top: 299,bottom: 301),
            child: Image.asset('assets/image.png',width: 165,height: 212,),
          ),
        ],
    ),
      ),
    );
  }
}