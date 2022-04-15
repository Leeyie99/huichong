import 'package:flutter/material.dart';

class Formd_land extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Nametext(),
            ],
          ),
        ),
      )
    );
  }
}

class Nametext extends StatefulWidget {
  const Nametext({Key? key}) : super(key: key);

  @override
  State<Nametext> createState() => _NametextState();
}

class _NametextState extends State<Nametext> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.account_circle_outlined),
        hintText: '请输入用户名',//提示文字
        labelText: '用户名',
        filled: true,//灰色背景
        // border: OutlineInputBorder(),//边框
      ),

      onChanged: (value){//文本框有变化时输出
        debugPrint('input:$value');
      },

      onSubmitted: (value){//文本框在确定时输出
        debugPrint('input:$value');
      },

    );
  }
}

class Theme_land extends StatelessWidget {
  const Theme_land({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,//背景颜色

    );
  }
}
