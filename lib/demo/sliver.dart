import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget> [
          SliverAppBar(
            floating: true,//状态栏状态
            expandedHeight: 100,//状态栏与内容之间的伸展
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'BANK'.toUpperCase(),
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 5.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          
          SliverSafeArea(//令内容显示在安全区域
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),//内边距
              sliver: SliverGridD(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverGridD extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index){
          return Container(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },

        childCount: posts.length,//项目数量
      ),

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,//网格上的数量
        crossAxisSpacing:8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.6,//网格大小比例
      ),
    );
  }
}