import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';




class DraggableDe extends StatefulWidget {
  @override
  _DraggableDeState createState() => _DraggableDeState();
}

class _DraggableDeState extends State<DraggableDe> {

  Color deff = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Draggable"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Draggable<Color>(data: Colors.deepOrange, child: Container(width: 70, height: 70, color: Colors.deepOrange,), feedback: Container(width: 70, height: 70, color: Colors.deepOrange,),),
                  Draggable<Color>(data: Colors.blue, child: Container(width: 70, height: 70, color: Colors.blue,), feedback: Container(width: 70, height: 70, color: Colors.blue,),)
                ],
              )
          ),
          SizedBox(height: 10,),
          Expanded(
            flex: 4,
              child: Container(
                child: DragTarget<Color>(
                    builder: (context, List<dynamic> accepted, refused){
                      return new Container(
                        width: 150,
                        height: 150,
                        color: deff,
                      );
                    },
                  onAccept: (data){
                      setState(() {
                        deff = data;
                      });
                  },
                  onWillAccept: (d){
                      return true;
                  },
                    ),
              ),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}





class SpacerDe extends StatefulWidget {
  @override
  _SpacerDeState createState() => _SpacerDeState();
}

class _SpacerDeState extends State<SpacerDe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spacer"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: <Widget>[
          Container(height: 100.0, color: Colors.deepOrange,),
          Spacer(),
          Container(height: 100.0, color: Colors.blue,),
          Spacer(),
          Container(height: 100.0, color: Colors.amber,),

        ],
      ),
    );
  }
}





class StacKDe extends StatefulWidget {
  @override
  _StacKDeState createState() => _StacKDeState();
}

class _StacKDeState extends State<StacKDe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container( width: 400, height: 400, color: Colors.amber,),
            Container(width: 300, height: 300, color: Colors.red,),
            Container(width: 200, height: 200, color: Colors.blue,),
            Container(width: 100, height: 100, color: Colors.green,),
          ],
        ),
      ),
    );
  }
}





class flexibleDe extends StatefulWidget {
  @override
  _flexibleDeState createState() => _flexibleDeState();
}

class _flexibleDeState extends State<flexibleDe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
              flex: 3,
              child: Container(color: Colors.green,)
          ),
          Spacer(),
          Flexible(
              flex: 2,
              child: Container(color: Colors.orange,)
          ),
          Spacer(),
          Flexible(
              flex: 1,
              child: Container(color: Colors.red,)
          ),
          Spacer(),
        ],
      ),
    );
  }
}








class aspectRatioD extends StatefulWidget {
  @override
  _aspectRatioDState createState() => _aspectRatioDState();
}

class _aspectRatioDState extends State<aspectRatioD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AspectRatio"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 3/2,
              child: Container(
                color: Colors.blue,
              ),
            ),
            AspectRatio(
              aspectRatio: 5/2,
              child: Container(
                color: Colors.deepOrange,
              ),
            )
          ],
        )
    );
  }
}




class placeholderD extends StatefulWidget {
  @override
  _placeholderDState createState() => _placeholderDState();
}

class _placeholderDState extends State<placeholderD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Placeholder"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Placeholder(
            color: Colors.orange,
            fallbackHeight: 60.0,
            fallbackWidth: 200.0,
            strokeWidth: 2.0,
          ),
          Placeholder(
            color: Colors.redAccent,
            fallbackHeight: 50.0,
            fallbackWidth: 100.0,
            strokeWidth: 3.0,
          )
        ],
      ),
    );
  }
}



class richTextD extends StatefulWidget {
  @override
  _richTextDState createState() => _richTextDState();
}

class _richTextDState extends State<richTextD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RichText"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(

          child:
          RichText(text: TextSpan(
              style: TextStyle(fontStyle: FontStyle.italic),
              children: [
                TextSpan(text: "Rich", style: TextStyle(color: Colors.red, fontSize: 25.0)),
                TextSpan(text: "Text", style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold, fontSize: 30.0)),
              ]
          ))
      ),
    );
  }
}





class indexedStackDe extends StatefulWidget {
  @override
  _indexedStackDeState createState() => _indexedStackDeState();
}

class _indexedStackDeState extends State<indexedStackDe> with TickerProviderStateMixin<indexedStackDe> {
  int _indexx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IndexedStack"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: IndexedStack(
        index: _indexx,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text("First indexed", style: TextStyle(fontSize: 30),),
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Second indexed", style: TextStyle(fontSize: 30)),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexx,
       onTap: (int index){
          setState(() {
            _indexx = index;
          });
       },
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.person_outline),title: Text("first widget")),
         BottomNavigationBarItem(icon: Icon(Icons.person_outline),title: Text("second widget")),
       ],
      ),
    );
  }
}



class reorderableD extends StatefulWidget {
  @override
  _reorderableDState createState() => _reorderableDState();
}

class _listItem {
  final String value;
  bool checked;
  _listItem(this.value, this.checked);
}

class _reorderableDState extends State<reorderableD> {
  bool reversed = false;
  static final _items = <String>[
    "1",
    "2",
    "4",
    "5"
  ].map((item) => _listItem(item, false)).toList();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ReorderableListView"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: ReorderableListView(

        onReorder: (int old, int newI){
          setState(() {
            if (newI > old)
              newI -= 1;
            final _listItem item = _items.removeAt(old);
            _items.insert(newI, item);
          });
        },
        children: _items.map((item)=> ListTile(
          key: Key(item.value),
          title: Text("Numero ${item.value}"),
          leading: Text(item.value),
        )).toList(),
      ),
    );
  }
}







class ConstrainedB extends StatefulWidget {
  @override
  _ConstrainedBState createState() => _ConstrainedBState();
}

class _ConstrainedBState extends State<ConstrainedB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 150,
              minHeight: 50,
              maxWidth: 150,
              minWidth: 50

            ),
            child: Container(width: 250, height: 250, color: Colors.green,),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: 100,
                minHeight: 30,
                maxWidth: 120,
                minWidth: 30

            ),
            child: Container(width: 200, height: 250, color: Colors.blue,),
          ),
        ],
      ),
    );
  }
}



class limitedBoxD extends StatefulWidget {
  @override
  _limitedBoxDState createState() => _limitedBoxDState();
}

class _limitedBoxDState extends State<limitedBoxD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LimitedBox"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LimitedBox(
              maxHeight: 50,
              child: Container(
                color: Colors.yellow,
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 50.0,),
            LimitedBox(
              maxWidth: 150,
              child: Container(
                color: Colors.deepOrange,
                width: 200,
                height: 150,
              ),
            )
          ],
        ),
      )

    );
  }
}




class mediaQueryD extends StatefulWidget {
  @override
  _mediaQueryDState createState() => _mediaQueryDState();
}

class _mediaQueryDState extends State<mediaQueryD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 6,
                ),
                Container(
                  color: Colors.deepOrangeAccent,
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 6,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height /3,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}





class animatedOpacityD extends StatefulWidget {
  @override
  _animatedOpacityDState createState() => _animatedOpacityDState();
}

class _animatedOpacityDState extends State<animatedOpacityD> {
  double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedOpacity"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                setState(() {
                  _opacity = _opacity == 0.0 ? 1.0 : 0.0;
                });
              },
              child: AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: _opacity,
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}





class animatedIconD extends StatefulWidget {
  @override
  _animatedIconDState createState() => _animatedIconDState();
}

class _animatedIconDState extends State<animatedIconD> with TickerProviderStateMixin {
  bool mR = false;
  AnimationController animationController;

  @override
  void initState(){
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  void dispose(){
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedIcon"),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: IconButton(
          icon: AnimatedIcon(
            size: 60.0,
            color: Colors.orange,
            icon: AnimatedIcons.play_pause,
            progress: animationController,
          ),
          onPressed: (){
            setState(() {
              if (mR == false)
                animationController.reverse();
              else
                animationController.forward();
              mR = !mR;
            });
          },
        )


      ),
    );
  }
}









class animatedPaddingD extends StatefulWidget {
  @override
  _animatedPaddingDState createState() => _animatedPaddingDState();
}

class _animatedPaddingDState extends State<animatedPaddingD> {
  double paddingg = 40.0;
  Curve mycu = Curves.ease;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPadding"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      height: 300,
                      width: 300,
                    )
                  ],
                ),
                AnimatedPadding(
                  padding: EdgeInsets.all(paddingg),
                  duration: Duration(seconds: 1),
                  reverseDuration: Duration(seconds: 1),
                  curve: mycu,
                  child: Container(
                    width: 300.0,
                    height: 300.0,
                    color: Colors.deepOrange
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.blue,
                      child: Text("Padding: 50", style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        setState(() {
                          paddingg = 50.0;
                          mycu = Curves.easeInOut;
                        });
                      },
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Text("Padding: 70", style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        setState(() {
                          paddingg = 70.0;
                          mycu = Curves.elasticInOut;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
          )

        ],),
    );
  }
}




class animatedPositionD extends StatefulWidget {
  @override
  _animatedPositionDState createState() => _animatedPositionDState();
}

class _animatedPositionDState extends State<animatedPositionD> {
  double btn = 220.0;
  bool seeM = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPositioned"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: GestureDetector(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.green,
                    child: Text("Hello !"),
                  )
              ),
              AnimatedPositioned(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.yellow,
                  height: 50,
                  width: 250,
                ),
                duration: Duration(seconds: 1),
                bottom: btn,
                curve: Curves.easeInToLinear,

              ),
            ],
          ),
        ),
        onTap: (){
          setState(() {
            if (seeM == false)
              btn = 220.0;
            else
              btn = 100.0;
            seeM = true;
          });
        },
      )

    );
  }
}





class animatedSwitcherD extends StatefulWidget {
  @override
  _animatedSwitcherDState createState() => _animatedSwitcherDState();
}

class _animatedSwitcherDState extends State<animatedSwitcherD> {
  bool ll = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedSwitcher"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: AnimatedSwitcher(
          child: ll ?
          Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          ) :
          Text("Un text", style: TextStyle(color: Colors.green, fontSize: 35, fontWeight: FontWeight.bold),),
          duration: Duration(seconds: 2),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ll = !ll;
          });
        },
      ),
    );
  }
}








class semanticsD extends StatefulWidget {
  @override
  _semanticsDState createState() => _semanticsDState();
}

class _semanticsDState extends State<semanticsD> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: true,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Semantics"),
            centerTitle: true,
            backgroundColor: Colors.cyan,
          ),
          body: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, posi){
                return Semantics(

                  label: 'Mon widget ...',
                  enabled: posi == 1 ? true : false,
                  selected: posi == 0 ? true : false,
                  onTap: (){
                    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Objet ${posi+1} cliqué"),));
                  },
                  onScrollDown: (){
                    print('Scroller');
                  },
                  child: Container(
                    color: Colors.red,
                    height: 250,
                    width: 250,
                    margin: EdgeInsets.all(20),
                  ),
                );
              })
      ),
    );

  }
}




class inheritedWidgetD extends StatefulWidget {
  @override
  _inheritedWidgetDState createState() => _inheritedWidgetDState();
}

class _inheritedWidgetDState extends State<inheritedWidgetD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("inheritedWidget"),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
    );
  }
}

















