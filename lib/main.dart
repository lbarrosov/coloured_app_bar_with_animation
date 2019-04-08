import 'package:flutter/material.dart';
import 'package:flutter_coloured_app_bar_with_animation/ColouredBottomBar/ColouredBarIcon.dart';
import 'package:flutter_coloured_app_bar_with_animation/ColouredBottomBar/ColouredBottomBarWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Coloured App Bar'),
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
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tap the bottom buttons ;)',
            ),
          ],
        ),
      ),
      bottomNavigationBar: ColouredBottomBarWidget(
        indexButtonActive: 0,
        durationAnimations: 2000,
        itemList: [
        ColouredBarIcon(title: "BLUE", iconSrc:"assets/face_white.png", color: Colors.blue),
        ColouredBarIcon(title: "RED", iconSrc:"assets/face_white.png", color: Colors.red),
        ColouredBarIcon(title: "GREEN", iconSrc:"assets/face_white.png", color: Colors.green),
      ],),
    );
  }
}
