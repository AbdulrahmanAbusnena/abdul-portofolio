import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                ClipOval(
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(30),
                    child: Image.asset('assets/abdul.png', fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Abdulrahman Abusnena',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                  ),
                ),
                const Divider(
                  indent: 130,
                  endIndent: 130,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text
                    Text('About'),
                    // Divider
                    Divider(
                      indent: 405,
                      endIndent: 405,
                    ),
                    // SizedBox
                    SizedBox(
                      height: 20,
                    ),
                    //Text
                    Text('Connect'),
                    // Divider
                    Divider(
                      indent: 405,
                      endIndent: 405,
                    ),
                    //  SizedBox
                    SizedBox(
                      height: 20,
                    ),
                    // Text
                    Text('Experience'),
                    // Divider
                    Divider(
                      indent: 405,
                      endIndent: 405,
                    ),
                    // SizedBox
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
