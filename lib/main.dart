import 'package:flutter/material.dart';
import 'package:abdul/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abdulrahman Abusnena',
      theme: ThemeData(useMaterial3: true),
      //  routes:
      home: const HomePage(),
    );
  }
}
