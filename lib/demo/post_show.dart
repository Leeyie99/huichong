import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {

  final Post postd;

  PostShow({
    required this.postd,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:Text('${postd.title}'),//内容标题
        elevation: 0.0,
      ),

      body: Column(
        children: <Widget>[
          Image.network(postd.imageUrl),
          Container(
            padding: EdgeInsets.all(32),//内边距
            width: double.infinity,//宽度
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${postd.title}',style: Theme.of(context).textTheme.titleSmall,),
                Text('${postd.author}',style: Theme.of(context).textTheme.titleSmall,),
                Text('${postd.description}',style: Theme.of(context).textTheme.titleSmall,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
