import 'package:bankk/color/color.dart';
import 'package:bankk/land/register.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

import '../safe/safe_page.dart';
import '../safe/verify_page.dart';

class Lang extends StatefulWidget {
  const Lang({Key? key}) : super(key: key);

  @override
  State<Lang> createState() => _LangState();
}

class _LangState extends State<Lang> {
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

  final registerkey = GlobalKey <FormState> ();
  late String username, password;

  void submitRegister () {
    registerkey.currentState?.save();//控制台输出
    registerkey.currentState?.validate();//验证

    debugPrint('账号名称：$username');
    debugPrint('账号密码：$password');

    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('登录成功'),
        )
    );
  }

  // _toast(){
  //   Fluttertoast.showToast(
  //       msg: "登录成功",
  //       toastLength: Toast.LENGTH_LONG,
  //       gravity: ToastGravity.BOTTOM,  // 消息框弹出的位置
  //       timeInSecForIos: 1,  // 消息框持续的时间（目前的版本只有ios有效）
  //       backgroundColor: Colors.red,
  //       textColor: Colors.white,
  //       fontSize: 16.0
  //   );
  // }

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
          Container(
            child: Image.asset(
              'images/logo/strlogo.jpg',
            ),
            height: 50,
          ),

          SizedBox(
            height: 10,
          ),

          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle),
              labelText: '账户名称',
              helperText: '',
            ),
            onSaved: (value) {
              username = value!;
            },
            validator: validateUsername,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),

          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              labelText: '账户密码',
              helperText: '',
            ),
            onSaved: (value) {
              password = value!;
            },
            validator: validatePassword,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),

          SizedBox(
            height: 15,
          ),

          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child:Text(
                '登录',
                style: (
                    TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                ),
              ),
              elevation: 0,
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>VerifyPage()));
                submitRegister();
                // _toast();
              },

            ),
          ),

          Container(
            height: 50,//表格高度
            alignment: Alignment.centerLeft,
            child: GestureDetector(
                child:Text(
                  '还没账号，去注册',
                  style: TextStyle(
                    color: Mycolors.radmain,
                    fontSize: 15,
                    fontWeight:FontWeight.w400,//文字粗细
                  ),
                ),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Register()));
                }
            ),

          ),


        ],
      ),
    );
  }
}
