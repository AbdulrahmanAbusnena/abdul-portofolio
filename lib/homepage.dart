import 'package:flutter/material.dart';
//import 'package:abdul/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:abdul/overview.dart';

// import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final name = 'Abdulrahman Abusnena';
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
          name,
          style: GoogleFonts.rubik(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        // centerTitle: true,
        leading: CircleAvatar(
            backgroundImage: AssetImage(
          'assets/ab.jpg',
        )),
        actions: [
          TextButton(
              onPressed: () {
                // ignore: avoid_print
                print('Contact Me is Pressed');
              },
              child: const Text('Contact Me')),
          TextButton(
            onPressed: () {
              // ignore: avoid_print
            },
            child: const Text('About me'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Blog'),
          ),
          TextButton(onPressed: () {}, child: const Text('Projects')),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/abdul.png',
                  height: 200,
                  // idth: 25,
                ),
              ),
            ],
          ),
          Text(
            '$name  - $jobTitle',
            style: GoogleFonts.rubik(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Container(
              //    alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      overview,
                      style: GoogleFonts.rubik(
                          fontSize: 12, fontWeight: FontWeight.normal),
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ]))
        ],
      ),
    );
  }
}
