import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Stack - Deep Dive';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.black,
            child: Stack(
              //fit: StackFit.expand,
              alignment: Alignment.bottomCenter,
              //overflow: Overflow.visible,
              children: [
                /// bottom

                Container(
                  width: 200,
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  ),
                ),

                /// top
              ],
            ),
          ),
        ),
      );
}
