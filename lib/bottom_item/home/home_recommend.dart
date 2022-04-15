import 'package:flutter/material.dart';

import '../../color/color.dart';
import '../../data/personal_data/recommend_data.dart';
import '../../left_navigation/bottom_navigation_bar.dart';
import '../wealth_bar.dart';

class Home_recommend extends StatefulWidget {
  const Home_recommend({Key? key}) : super(key: key);

  @override
  State<Home_recommend> createState() => _Home_recommendState();
}

TableRow Home_recommend_row(int i){

  final String zhu = recommend_datas[i].raise + '起购' + '  |  ' + recommend_datas[i].deadline;

  return TableRow(
    children: <Widget>[
      Container(
        height: 90,//表格高度
        alignment: Alignment.centerLeft,//居中居左

        child:
        Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          // 设置表格有多少列，并且指定列宽
          columnWidths:const <int,TableColumnWidth> {
            0:FractionColumnWidth(0.27),
            1:FractionColumnWidth(0.73),
          },

          border: TableBorder(horizontalInside: BorderSide(width: 0,color: Colors.white, style: BorderStyle.solid),),


          children: <TableRow>[
            // 添加第一行数据
            TableRow(
              children: <Widget>[

                Container(
                  height: 50,//表格高度
                  alignment: Alignment.bottomCenter,//底下居中
                  child:
                  Text(
                    recommend_datas[i].return_on_equity,
                    style: TextStyle(
                      color: Mycolors.radmain,
                      fontSize: 27,
                      fontWeight:FontWeight.w400,//文字粗细
                    ),
                  ),

                ),

                Text(
                  recommend_datas[i].name,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight:FontWeight.w300,//文字粗细
                  ),
                ),
              ],
            ),

            TableRow(
              children: <Widget>[
                Container(
                  height: 40,//表格高度
                  alignment: Alignment.topCenter,//顶上居中
                  child:
                  Text(
                    '满期利率',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontWeight:FontWeight.w400,//文字粗细
                    ),
                  ),
                ),

                Container(
                  height: 40,
                  alignment: Alignment.topLeft,
                  child:
                  Text(
                    zhu,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontWeight:FontWeight.w400,//文字粗细
                    ),
                  ),
                ),

              ],
            ),


          ],

        ),
      ),

    ],
  );
}

class _Home_recommendState extends State<Home_recommend> {
  @override
  Widget build(BuildContext context) {
    return Container(//白框容器
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),//容器外间距
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
        child: Wrap(
          children: <Widget>[

            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              // 设置表格有多少列，并且指定列宽
              columnWidths:const <int,TableColumnWidth> {
                0:FractionColumnWidth(0.65),
                1:FractionColumnWidth(0.35),
              },

              border: TableBorder(horizontalInside: BorderSide(width: 0,color: Colors.white, style: BorderStyle.solid),),

              children: <TableRow>[
                // 添加第一行数据

                TableRow(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),//容器外间距
                      height: 50,//表格高度
                      alignment: Alignment.centerLeft,//居中居左
                      child:
                      Text(//利率
                        '精选',
                        style: TextStyle(
                          color: Mycolors.radmain,
                          fontSize: 25,
                          fontWeight:FontWeight.w400,//文字粗细
                        ),
                      ),
                    ),

                    Container(
                      height: 50,//表格高度
                      alignment: Alignment.centerRight,//居中靠右
                      child:IconButton(
                        icon: Icon(Icons.arrow_right),//按钮样式
                        tooltip:'Navigration',//按钮作用
                        color: Colors.black,
                        iconSize: 35,
                        onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => BottomNavigation())
                          );
                        }, //按钮行为
                      ),
                    ),
                  ],
                ),
              ],

            ),

            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              // 设置表格有多少列，并且指定列宽
              columnWidths:const <int,TableColumnWidth> {
                0:FractionColumnWidth(1),
              },

              border: TableBorder(horizontalInside: BorderSide(width: 1,color: Colors.black12, style: BorderStyle.solid),),

              children: <TableRow>[
                // 添加第一行数据
                Home_recommend_row(0),
                Home_recommend_row(1),
                Home_recommend_row(2),

              ],

            ),

          ],
        )
    );
  }
}
