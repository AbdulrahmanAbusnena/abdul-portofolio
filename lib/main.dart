import 'package:flutter/material.dart';
import 'package:abdul/Pages/homepage.dart';
import 'package:abdul/themes_colors/theme.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abdulrahman Abusnena',
      theme: darkMode,

      // routes: '/home'
      home: const HomePage(),
    );
  } 
}
