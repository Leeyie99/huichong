import 'package:flutter/material.dart';

class NavigtionDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed:(){
                Navigator.pushNamed(context,'/home');
              },
              child: Text('home'),
            ),
            FlatButton(
              onPressed: (){
                Navigator.pushNamed(context,'/about');
              },
              child: Text('about'),
            ),
          ],
        ),
      ),
    );
  }
}


class Paged extends StatelessWidget {

  final String ti;

  Paged(
  {required this.ti}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ti),
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
