import 'package:bankk/demo/post_show.dart';
import 'package:flutter/material.dart';
import '../model/post.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget{
  @override
  Widget _listBu(BuildContext context, int index){
    return Container(//白框容器
      margin: EdgeInsets.all(4.0),//容器间距
      decoration: const BoxDecoration(
        //背景
        color: Colors.white,
        //设置四周圆角 角度
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        //设置四周边框
      ),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.network(posts[index].imageUrl),
              SizedBox(height: 16),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 5,),//间距
            ],
          ),

          Positioned.fill(//溅墨效果
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: (){
                  debugPrint('${posts[index].title}');//控制台输出
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PostShow(postd: posts[index]))
                  );
                },
              ),
            ),
          ),
        ],
      )
    );
  }

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder:_listBu,
    );
  }
}