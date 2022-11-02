import 'package:flutter/material.dart';
import 'package:taylor/tab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.amber),
        // fontFamily: 'Raleway',
        // primarySwatch: Colors.purple,
        primaryColor: Colors.purple,
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        buttonTheme: ButtonTheme.of(context).copyWith(
        ),
        iconTheme: IconTheme.of(context).copyWith(
          color: Colors.purple,
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
        bodyText1: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(20, 51, 51, 1),),
          bodyText2: const TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      home: const TabScreen(),
    );
  }
}
