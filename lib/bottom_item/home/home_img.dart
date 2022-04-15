import 'package:flutter/material.dart';

class ImgActivit extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      pageSnapping: true,//自动滚动
      scrollDirection: Axis.horizontal,//水平滚动
      onPageChanged: (currentPage) => debugPrint('Page:$currentPage'),//控制台输出相应东西

      controller: PageController(
        initialPage: 0,//显示的是第0个页面
        keepPage: false,//记住用户滚动到哪一页
        viewportFraction: 1,//占用页面的比例
      ),


      children: <Widget> [
        Container(
          alignment: Alignment(0.0,0.0),
          child: Image.asset(
            'images/home_img/jr7.jpg',
            fit: BoxFit.cover,
          ),
          height: 240,
          width: 50,
        ),

        Container(
          alignment: Alignment(0.0,0.0),
          child: Image.asset('images/home_img/jr8.jpg'),
        ),

        Container(
          alignment: Alignment(0.0,0.0),
          child: Image.asset('images/home_img/jr9.jpg'),
        ),

      ],
    );
  }
}