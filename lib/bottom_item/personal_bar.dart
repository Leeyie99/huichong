import 'package:bankk/bottom_item/personal/message.dart';
import 'package:bankk/bottom_item/personal/profit.dart';
import 'package:bankk/bottom_item/personal/recommend.dart';
import 'package:bankk/tool_item/setup_bar.dart';
import 'package:bankk/tool_item/store_bar.dart';
import 'package:bankk/tool_item/wallet_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../color/color.dart';
import '../data/personal_data/profit_data.dart';
import '../left_navigation/left_navigation_bar.dart';

class PersonalScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PersonalScreenState();
}

class PersonalScreenState extends State<PersonalScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: AppBar(

        actions: const <Widget> [
        ],
      ),

      body: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Yun.kou',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('koopking@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p8833.webp'),
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: NetworkImage(
                    'https://img.ui.cn/data/file/6/3/7/2477736.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.red,
                  BlendMode.hardLight,
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),//容器外间距
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),//容器内间距
            decoration: BoxDecoration(
              //背景
              color: Colors.white,
              //设置四周圆角 角度
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              //设置四周边框
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 2.0), //阴影xy轴偏移量
                    blurRadius: 1.0, //阴影模糊程度
                    spreadRadius: 1.0 //阴影扩散程度
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.account_balance_wallet),//按钮样式
                  tooltip:'Navigration',//按钮作用
                  color: Colors.black,
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Wallet())
                    );
                  }, //按钮行为
                ),
                IconButton(
                  icon: Icon(Icons.star_rate),//按钮样式
                  tooltip:'Navigration',//按钮作用
                  color: Colors.black,
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Store())
                    );
                  }, //按钮行为
                ),
                IconButton(
                  icon: Icon(Icons.call),//按钮样式
                  tooltip:'Navigration',//按钮作用
                  color: Colors.black,
                  onPressed: () => launch("tel://123151515"),//按钮行为
                ),
                IconButton(
                  icon: Icon(Icons.settings),//按钮样式
                  tooltip:'Navigration',//按钮作用
                  color: Colors.black,
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Setup())
                    );
                  },//按钮行为
                ),
              ],
            ),
          ),

          Profit(),
          Message(),
          Recommend(),
        ],
      ),

      drawer: DrawerDemo(),
    );
  }
}