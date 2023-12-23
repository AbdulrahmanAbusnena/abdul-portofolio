import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: GoogleFonts.rubik(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        // centerTitle: true,
        leading: const CircleAvatar(
            backgroundImage: AssetImage(
          'assets/abdul.png',
        )),
        actions: [
          TextButton(
              onPressed: () {
                // ignore: avoid_print
                print('About Me is Pressed');
              },
              child: const Text('About Me')),
          TextButton(
            onPressed: () {
              // ignore: avoid_print
              print('Contact me is Pressed');
            },
            child: const Text('Contact me'),
          ),
          TextButton(
            onPressed: () {
              //ignore: avoid_print
              print('Blog is Pressed');
            },
            child: const Text('Blog'),
          ),
          TextButton(
              onPressed: () {
                // ignore: avoid_print
                print('Project is Pressed');
              },
              child: const Text('Projects')),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(48),
                    child: Image.asset('assets/abdul.png', fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Column(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Animate(
                  effects: const [FadeEffect(), SlideEffect()],
                  child: Text(
                    '   $name  - $jobTitle', //
                    style: GoogleFonts.rubik(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    // textAlign: TextAlign.start
                  ),
                )
              ],
            ),
            const Divider(
              height: 25,
              endIndent: 405,
              indent: 405,
            ),
            Container(
                //     alignment: Alignment.center,
                // height: 10,
                width: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white70, width: 3)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        intro,
                        style: GoogleFonts.rubik(
                            fontSize: 15, fontWeight: FontWeight.normal),
                        // overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.center,
                        //   overflow: TextOverflow.ellipsis,
                        // maxLines: 20,
                      ),
                    ])),
          ],
        ),
      ),
    );
  }
}
