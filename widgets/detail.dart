import 'package:flutter/material.dart';

class DetailP extends StatelessWidget {

  List item;

  DetailP(List item){
    this.item = item;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item[0]),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(item[1], style: TextStyle(fontSize: 20.0,),textAlign: TextAlign.center,),
            ],
          )

      ),
    );
  }
}

