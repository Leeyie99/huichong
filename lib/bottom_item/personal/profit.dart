import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../color/color.dart';
import '../../data/personal_data/profit_data.dart';
import '../../data/personal_data/profit_data.dart';

class Profit extends StatefulWidget {
  const Profit({Key? key}) : super(key: key);

  @override
  State<Profit> createState() => _ProfitState();
}

TableRow Profit_row(int i){
  return TableRow(
    children: <Widget>[
      Container(
        height: 45,//表格高度
        alignment: Alignment.centerLeft,
        child:
        Text(
          profit_datas[i].name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 18,
            fontWeight:FontWeight.w400,//文字粗细
          ),
        ),

      ),

      Container(
        height: 45,//表格高度
        alignment: Alignment.centerRight,
        child:
        Text(
          '${profit_datas[i].profit}'+'元',
          style: TextStyle(
            color: Mycolors.radmain,
            fontSize: 18,
            fontWeight:FontWeight.w400,//文字粗细
          ),
        ),
      ),
    ],
  );
}

class _ProfitState extends State<Profit> {
  @override
  Widget build(BuildContext context) {
    return Container(//白框容器
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
        child: Wrap(
          children: <Widget>[

            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              // 设置表格有多少列，并且指定列宽
              columnWidths:const <int,TableColumnWidth> {
                0:FractionColumnWidth(0.7),
                1:FractionColumnWidth(0.3),
              },

              border: TableBorder(horizontalInside: BorderSide(width: 1.2,color: Colors.black12, style: BorderStyle.solid),),

              children: <TableRow>[
                // 添加第一行数据

                TableRow(
                  children: <Widget>[
                    Container(
                      height: 50,//表格高度
                      alignment: Alignment.centerLeft,//居中居左
                      child:
                      Text(//利率
                        '收益',
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
                      child:
                      Text(
                        '更多',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight:FontWeight.w400,//文字粗细
                        ),
                      ),
                    ),
                  ],
                ),


                Profit_row(0),
                Profit_row(1),
                Profit_row(2),
              ],

            ),

          ],
        )
    );
  }
}
