import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isChecked = false;

  void onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Check Box'),
        ),
        body: new Container(
            child: new Center(
                child: new Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Click Me'),
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool value) {
                    onChanged(value);
                    print("check value $value");
                  },
                ),
              ],
            ),
            Checkbox(
              value: _isChecked,
              onChanged: (bool value) {
                onChanged(value);
                print("check value $value");
              },
            ),
          ],
        ))),
      ),
    );
  }
}
