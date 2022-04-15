import 'package:bankk/bottom_item/home/notice.dart';
import 'package:flutter/material.dart';


import 'home/home_img.dart';
import '../left_navigation/left_navigation_bar.dart';
import '../tool_item/search.dart';
import 'home/home_recommend.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: AppBar(

        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.search),//按钮样式
            tooltip:'Navigration',//按钮作用
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Search())
              );
            }, //按钮行为
          ),
        ],
      ),

      drawer: DrawerDemo(),

      body: ListView(
        children: [
          Container(
            height: 240,
            width: 100,
            child:
            ImgActivit(),
          ),

          Notice(),
          Home_recommend(),
        ],
      ),
    );
  }

}
