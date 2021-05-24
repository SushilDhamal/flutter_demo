import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterDemo',
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FeavrateCity();
  }
}

class FeavrateCity extends State<MyStatefulWidget> {

  String nameCity = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DemoFlutter1.0'),),
      body: Container(
        child: Column(
          children: [
            TextField(
                onChanged: (String userInput) {
                  setState(() {
                    nameCity = userInput;
                  });
                }
            ),
            Text('Your city is $nameCity')
          ],
        )
      ),
    );
  }
}
