import 'package:bankk/color/color.dart';
import 'package:bankk/land/lang.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Theme(
          data: Theme.of(context).copyWith(
              primaryColor: Colors.black
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children:[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Nametext(),
                  ],
                ),
              ]
            ),
          ),
        )
    );
  }
}

class Theme_Register extends StatelessWidget {
  const Theme_Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,//背景颜色

    );
  }
}

class Nametext extends StatefulWidget {
  const Nametext({Key? key}) : super(key: key);

  @override
  State<Nametext> createState() => _NametextState();
}

class _NametextState extends State<Nametext> {

  final registerkey = GlobalKey <FormState> ();
  late String username, ID,phonenumber,mailbox,password;
  bool autovalidata = false;

  void submitRegister () {
    registerkey.currentState?.save();//控制台输出
    registerkey.currentState?.validate();//验证

    debugPrint('账号名称：$username');
    debugPrint('身份证号：$ID');
    debugPrint('电话号码：$phonenumber');
    debugPrint('邮箱地址：$mailbox');
    debugPrint('账号密码：$password');

    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('登录成功'),
        )
    );
  }

  String? validateUsername(value){
    if(value.isEmpty){
      return '账户名称不能为空';
    }

    return null;
  }

  String? validatePassword(value){
    if(value.isEmpty){
      return '账户密码不能为空';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerkey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: '账号名称',
            ),

            onSaved: (value) {
              username = value!;
            },
          ),

          TextFormField(
            decoration: InputDecoration(
              labelText: '身份证号',
            ),

            onSaved: (value) {
              username = value!;
            },
          ),

          TextFormField(
            decoration: InputDecoration(
              labelText: '手机号码',
            ),

            onSaved: (value) {
              username = value!;
            },
          ),

          TextFormField(
            decoration: InputDecoration(
              labelText: '邮箱地址',
            ),

            onSaved: (value) {
              username = value!;
            },
          ),


          TextFormField(
            decoration: InputDecoration(
              labelText: '账号密码',
            ),

            onSaved: (value) {
              username = value!;
            },
          ),

          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: '再次输入账号密码',
            ),

            onSaved: (value) {
              password = value!;
            },

            validator: validatePassword,
          ),

          SizedBox(
            height: 30,
          ),

          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child:Text(
                '注册',
                style: (
                    TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                ),
              ),
              elevation: 0,
              onPressed: submitRegister,
            ),
          ),

          Container(
            height: 50,//表格高度
            alignment: Alignment.centerLeft,
            child: GestureDetector(
                child:Text(
                  '已有账号，去登录',
                  style: TextStyle(
                    color: Mycolors.radmain,
                    fontSize: 15,
                    fontWeight:FontWeight.w400,//文字粗细
                  ),
                ),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Lang()));
                }
            ),

          ),


        ],
      ),
    );
  }
}
