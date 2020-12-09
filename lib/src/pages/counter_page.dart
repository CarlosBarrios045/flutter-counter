import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _styleText = new TextStyle(fontSize: 22.0);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contador'),
          centerTitle: true,
          elevation: 12.0,
          toolbarHeight: 70.0,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:', style: _styleText),
            Text('$_count', style: _styleText),
          ],
        )),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(width: 40.0),
      FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
      Expanded(child: SizedBox(width: 5.0)),
      FloatingActionButton(child: Icon(Icons.remove), onPressed: _remove),
      SizedBox(width: 5.0),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _add)
    ]);
  }

  void _add() {
    setState(() => _count += 1);
  }

  void _remove() {
    setState(() => _count != 0 ? _count -= 1 : null);
  }

  void _reset() {
    setState(() => _count = 0);
  }
}
