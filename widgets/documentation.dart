import 'package:exo1/widgets/detail.dart';
import 'package:flutter/material.dart';
import 'listWidgets.dart';

class documentation extends StatefulWidget {
  @override
  _documentationState createState() => _documentationState();
}

class _documentationState extends State<documentation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: meswidgets.length,
          itemBuilder: (context, int i){
          List items = meswidgets[i];
          return ListTile(
            title: Text(meswidgets[i][0]),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                return new DetailP(items);
              }));
            },
          );
          },
      ),
    );
  }
}
