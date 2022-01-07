import 'package:bora_viajar/utils/ItemScreen%20Utils/info_item.dart';
import 'package:bora_viajar/views/HomeScreen.dart';
import 'package:bora_viajar/views/ItemScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bora Viajar?',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ItemScreen(),
    );
  }
}
