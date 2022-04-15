import 'package:flutter/material.dart';

import '../color/color.dart';
import '../demo/home_img.dart';
import '../left_navigation/left_navigation_bar.dart';
import '../tool_item/search.dart';
import '../top_finance/finance_list.dart';

class WealthScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WealthScreenState();
}

class WealthScreenState extends State<WealthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.huimain,

      body: DefaultTabController(
        length: 2,//标签栏数量

        child: Scaffold(
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

            bottom: const TabBar(
              unselectedLabelColor: Colors.black38,
              tabs: <Widget> [
                Tab(text: '理财产品',),//上部标签
                Tab(text: '基金产品',),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              Finance_list(),
              Finance_list(),
            ],
          ),

          drawer: DrawerDemo(),

        ),

      ),
    );
  }
}