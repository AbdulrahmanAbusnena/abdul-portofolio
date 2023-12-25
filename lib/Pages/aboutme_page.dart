import 'package:abdul/overview.dart';
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
                    child: Image.asset(
                      'assets/abdul.png',
                      fit: BoxFit.cover,
                    ),
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
                  indent: 340,
                  endIndent: 340,
                ),
                const SizedBox(
                  height: 30,
                ),
                /*  
                  Main Content Body,  
                  */
                Row(
                  children: [
                    Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text
                        Text('About',
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.blueGrey)),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      about,
                      style: GoogleFonts.montserrat(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  indent: 405,
                  endIndent: 405,
                ),
                const Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text
                    Text('Connect'),
                  ],
                ),
                const Divider(
                  indent: 405,
                  endIndent: 405,
                ),
                const Row(
                    //    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text
                      Text('Work'),
                    ]),
                const Divider(
                  indent: 405,
                  endIndent: 405,
                ),
                const Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text
                    Text('Experience'),
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
