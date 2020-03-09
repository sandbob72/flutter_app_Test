/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test Row and Column",
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                Text('PREP:'),
                Text('25 min'),
                BlueBox()
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                Text('COOK:'),
                Text('1 hr'),
                BlueBox()
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                Text('FEEDS:'),
                Text('4-6'),
                BlueBox()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(color: Colors.blue, border: Border.all()),
    );
  }
}*/

//CrossAxisAlignment
/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test Cross Axis Alignment",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "CrossAxisAlignment",
            style: TextStyle(
                fontSize: 30, fontFamily: "Futura", color: Colors.yellow),
          ),
        ),
        backgroundColor: Colors.green,
        body: Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                        child: Column(
                          children: [
                            Icon(
                              Icons.kitchen,
                              color: Colors.green[500],
                              size: 100,
                            ),
                            Text('PREP:'),
                            Text('25 min')
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Icon(
                              Icons.kitchen,
                              color: Colors.red,
                              size: 100,
                            ),
                            Text('PREP:'),
                            Text('25 min')
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.green,
                        child: Column(
                          children: [
                            Icon(
                              Icons.kitchen,
                              color: Colors.orange,
                              size: 100,
                            ),
                            Text('PREP:'),
                            Text('25 min')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/images/pic3.jpg",
                              width: 100, height: 100)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sakul',
                            style: TextStyle(fontSize: 30),
                          ),
                          Text('Somkerwwhan', style: TextStyle(fontSize: 30)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.blue, border: Border.all(), shape: BoxShape.circle),
    );
  }
}

class BiggerBlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(color: Colors.blue, border: Border.all()),
    );
  }
}
*/

/*import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Test", home: RandomWords());
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final List<WordPair> suqqestion = <WordPair>[];
  final TextStyle biggerFont = TextStyle(fontSize: 20, color: Colors.red);
  final Set<WordPair> _saved = Set<WordPair>();

  Color _iconColor = Colors.white;
  List colors = [Colors.red, Colors.green, Colors.yellow];
  List icons = [Icons.favorite, Icons.audiotrack, Icons.beach_access];
  Random random = new Random();
  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(3));
  }

  Widget _buildSuggeston() {
    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemBuilder: (BuildContext _context, int i) {
        if (i.isOdd) {
          return Divider(
            color: Colors.red,
          );
        }
        final int index = i ~/ 2;
        if (index >= suqqestion.length) {
          suqqestion.addAll(generateWordPairs().take(10));
        }
        return _buildRow(suqqestion[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final bool aleadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asUpperCase,
        style: biggerFont,
      ),
//      trailing: IconButton(
//        icon: Icon(icons[index]),
//        color: colors[index],
//        highlightColor: Colors.red,
//        onPressed: () {
//          changeIndex();
//        },
//      ),
      trailing: Icon(
        aleadySaved ? Icons.favorite : Icons.timer,
        color: aleadySaved ? Colors.red : null,
      ),
      onTap: (){
        setState(() {
          if(aleadySaved){
            _saved.remove(pair);
          }
          else{
            _saved.add(pair);
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Generator"),
      ),
      backgroundColor: Colors.yellow,
      body: _buildSuggeston(),
    );
  }
}*/

/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test",
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MainPage"),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("click to SecondPage"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
            },
          ),
          RaisedButton(
            child: Text("click to ThirdPage"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThirdPage()));
            },
          ),
        ],
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("click to MainPage"),
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => MainPage()));
            },
          ),
          RaisedButton(
            child: Text("click to ThirdPage"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThirdPage()));
            },
          ),
        ],
      )),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThirdPage"),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("click to MainPage"),
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => MainPage()));
            },
          ),
          RaisedButton(
            child: Text("click to SecondPage"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
            },
          ),
        ],
      )),
    );
  }
}*/


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

var headerSection = Container(
  color: Colors.white,
//  height: 300,
  child: Image.asset('assets/images/CoC_img.jpg'),
);

var testSection = Padding(
  padding: EdgeInsets.all(20),
  child: Container(),
);

var titleSection = Container(
    color: Colors.white,
//  height: 300,
    padding: EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(border: Border.all()),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "College of Computing",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "Phuket, Thailand",
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.thumb_up, size: 40, color: Colors.blue)
            ],
          ),
          Column(
            children: <Widget>[Text("99", style: TextStyle(fontSize: 25))],
          ),
        ],
      ),
    ));
var buttonSection = Container(
  color: Colors.white,
  margin: EdgeInsets.only(top: 5),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
        children: <Widget>[
          Icon(Icons.thumb_up, size: 50),
          Text("Like", style: TextStyle(fontSize: 30))
        ],
      ),
      Column(
        children: <Widget>[
          Icon(Icons.comment, size: 50),
          Text("Comment", style: TextStyle(fontSize: 30))
        ],
      ),
      Column(
        children: <Widget>[
          Icon(Icons.share, size: 50),
          Text("Share", style: TextStyle(fontSize: 30))
        ],
      )
    ],
  ),
);
var courseSection = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Container(
      margin: EdgeInsetsDirectional.only(top: 30),
      child: Text(
        "Program",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
    Container(
        height: 120,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Image.asset("assets/images/admission.jpg"),
            Image.asset("assets/images/campus.jpg"),
            Image.asset("assets/images/domitory.jpg"),
            Image.asset("assets/images/service.jpg")
          ],
        ))
  ],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WorkShop UI",
      home: Scaffold(
        appBar: AppBar(
          title: Text("College of Computing"),
        ),
        body: ListView(
          children: <Widget>[
            headerSection,
            titleSection,
            buttonSection,
            courseSection,
          ],
        ),
      ),
    );
  }
}


