import 'package:flutter/material.dart';
import 'package:loginpage/loginsignuppage.dart';


void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),));
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogInPage(),
    );
  }
}
