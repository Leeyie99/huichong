import 'package:flutter/material.dart';

class Buttondemo extends StatefulWidget {
  const Buttondemo({Key? key}) : super(key: key);

  @override
  State<Buttondemo> createState() => _ButtondemoState();
}

class _ButtondemoState extends State<Buttondemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮'),
      ),

      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(),
      )
    );
  }
}
