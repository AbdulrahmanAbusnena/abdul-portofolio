import 'package:flutter/material.dart';
import 'package:abdul/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abdulrahman Abusnena',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
