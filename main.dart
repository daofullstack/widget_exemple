import 'package:exo1/widgets/animatedListV.dart';
import 'package:exo1/widgets/documentation.dart';
import 'package:flutter/material.dart';
import 'widgets/mesWidgets.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {

    void _launchUrl()  {
       launch("https://www.github.com/ousmane08");
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets"),
        actions: <Widget>[
          FlatButton(child: Text("Doc", style: TextStyle(color: Colors.white),),
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
              return new documentation();
            }));
          },
          ),
          IconButton(icon: Icon(Icons.share), onPressed: _launchUrl),

        ],
      ),
      body:  ListView(

          padding: EdgeInsets.all(25.0),
          children: <Widget>[
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new DraggableDe();
                }));
              },
              title: Text("Draggable"),
              leading: Text("1"),
            ),
            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new flexibleDe();
                }));
              },
              title: Text("Flexible"),
              leading: Text("2"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new SpacerDe();
                }));
              },
              title: Text("Spacer"),
              leading: Text("3"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new StacKDe();
                }));
              },
              title: Text("Stack"),
              leading: Text("4"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new indexedStackDe();
                }));
              },
              title: Text("IndexedStack"),
              leading: Text("5"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new ConstrainedB();
                }));
              },
              title: Text("ConstrainedBox"),
              leading: Text("6"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new aspectRatioD();
                }));
              },

              title: Text("AspectRatio"),
              leading: Text("7"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new limitedBoxD();
                }));
              },
              title: Text("LimitedBox"),
              leading: Text("8"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new mediaQueryD();
                }));
              },
              title: Text("MediaQuery"),
              leading: Text("9"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new placeholderD();
                }));
              },
              title: Text("Placeholder"),
              leading: Text("10"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new reorderableD();
                }));
              },
              title: Text("ReorderableListView"),
              leading: Text("11"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new richTextD();
                }));
              },
              title: Text("RichText"),
              leading: Text("12"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new animatedIconD();
                }));
              },
              title: Text("AnimatedIcon"),
              leading: Text("13"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new AnimatedListSample();
                }));
              },
              title: Text("AnimatedList"),
              leading: Text("14"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new animatedPaddingD();
                }));
              },
              title: Text("AnimatedPadding"),
              leading: Text("15"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new animatedPositionD();
                }));
              },
              title: Text("AnimatedPositioned"),
              leading: Text("16"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new animatedSwitcherD();
                }));
              },
              title: Text("AnimatedSwitcher"),
              leading: Text("17"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new animatedOpacityD();
                }));
              },
              title: Text("AnimatedOpacity"),
              leading: Text("18"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new semanticsD();
                }));
              },
              title: Text("Semantics"),
              leading: Text("19"),
            ),

            Divider(height: 2.0, color: Colors.black12,),

            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return new inheritedWidgetD();
                }));
              },
              title: Text("inheritedWidget"),
              leading: Text("20"),
            ),





          ],
        )

    );
  }
}
