import 'package:flutter/material.dart';
import 'router.dart' as router;
import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MainPageRoute,
      onGenerateRoute: router.gameRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: mainScreenButtons()),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget mainScreenButtons() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      regularModeButton(),
      Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
      challengeModeButton(),
      Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
      exitButton()
    ]);
  }

  Widget regularModeButton() {
    return FlatButton(
        child: Container(padding: EdgeInsets.all(10), child: Text("Regular Mode", textAlign: TextAlign.center), width: 200),
        color: Colors.cyan,
        onPressed: () {
          _startGame(0);
          print("regular mode");
        });
  }

  Widget challengeModeButton() {
    return FlatButton(
        child: Container(padding: EdgeInsets.all(10), child: Text("Challenge Mode", textAlign: TextAlign.center), width: 200),
        color: Colors.red,
        onPressed: () {
          _startGame(1);
          print("challenge mode");
        });
  }

  // Widget settingsButton() {}

  Widget exitButton() {
    return FlatButton(
        child: Container(padding: EdgeInsets.all(5), child: Text("Exit", textAlign: TextAlign.center), width: 100),
        color: Colors.orange,
        onPressed: () {
          print("exit");
        });
  }

  void _startGame(int gameMode) {
    Navigator.pushNamed(context, GamePageRoute, arguments: gameMode);
  }
}
