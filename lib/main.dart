import 'package:flutter/material.dart';
import 'package:flutter_internals/keys/keys.dart';

import 'package:flutter_internals/ui_updates_demo.dart';

void main() {
  runApp(const App());
final  numbers = [1, 2, 3];
 //final - can not override but add 
 //add , edit ,and override numbers - var 
 //const - can add but got an error 
  // numbers = [4, 5, 6]; 
 
  numbers.add(4); 
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Internals'),
        ),
        body: const Keys(),
      ),
    );
  }
}
