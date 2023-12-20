import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final name = 'Abdurahman Abusnena';
  final jobTitle = 'Software Developer';

  final intro = '';
  final skills = [
    'Mobile development',
    'Flutter & dart',
    'C++',
    'Git',
    'Github'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$name',
          style: GoogleFonts.rubik(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        leading: CircleAvatar(
          child: SvgPicture.asset(
            'assets/ab.jpg',
          ),
        ),
        actions: [
          TextButton(onPressed: () {}, child: Text('Contact Me')),
          TextButton(onPressed: () {}, child: Text('About')),
        ],
      ),
      body: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/abdul.jpg',
                  height: 55,
                  width: 55,
                ),
              ],
            ),
            Center(
              child: Text(
                '$name  - $jobTitle',
                style: GoogleFonts.rubik(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(''),
              ],
            )
          ],
        ),
      ),
    );
  }
}
