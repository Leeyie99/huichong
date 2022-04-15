import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '十三能织素，十四学裁衣，十五弹箜篌，十六诵诗书。十七为君妇，心中常苦悲。君既为府吏，守节情不移，贱妾留空房，相见常日稀。鸡鸣入机织，夜夜不得息。三日断五匹，大人故嫌迟。非为织作迟，君家妇难为！妾不堪驱使，徒留无所施，便可白公姥，及时相遣归。',
      textAlign: TextAlign.left,
      maxLines: 3,//显示最多行数
      overflow: TextOverflow.ellipsis,//超出之后的显示、
    );
  }
}

class RichTextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text:'灭了',
        style: TextStyle(
          color: Colors.red,
          fontSize: 30,
          fontWeight: FontWeight.w100,//文字粗细
        ),
        children: [
          TextSpan(
            text: 'ZJW',
            style: TextStyle(
              color: Colors.green
            )
          )
        ]
      )
    );
  }
}

class ContainerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,//居中显示
        children: <Widget> [
          Container(
            child: Icon(Icons.pool, size: 32, color: Colors.white,),
            color: Colors.blue,
            padding: EdgeInsets.all(16),//内边距
            margin: EdgeInsets.all(8),//外边距
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),//圆角
            ),
          )
        ],
      ),//横排显示
    );
  }
}