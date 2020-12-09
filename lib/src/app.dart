import 'package:flutter/material.dart';
import 'package:app_counter/src/pages/counter_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Center(child: CounterPage()));
  }
}
