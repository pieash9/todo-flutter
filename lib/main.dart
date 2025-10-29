import 'package:flutter/material.dart';
import 'package:flutter_bs/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //   init hive
  await Hive.initFlutter();

  // open the box
  await Hive.openBox("myBox");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final yellowColor = Colors.yellow;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: yellowColor,
        useMaterial3: true,

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
        ),
      ),
    );
  }
}
