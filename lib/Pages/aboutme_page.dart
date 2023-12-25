import 'package:abdul/overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  var email_me = TextButton(
    onPressed: () {},
    child: Text('Email me'),
  );
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
                ).animate().fade().slide(curve: Curves.easeIn),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Text
                    Text('  About',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.blueGrey)),
                    const SizedBox(
                      width: 120,
                    ),
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
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text
                    Text('Connect',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.blueGrey)),
                    SizedBox(
                      width: 120,
                    ),

                    Text(connect,
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          //   color: Colors.blueGrey
                        )),
                  ],
                ),
                const Divider(
                  indent: 405,
                  endIndent: 405,
                ),
                Row(
                    //    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text
                      Text('Work',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.blueGrey)),
                      const SizedBox(
                        height: 120,
                      ),
                      Text(
                        work,
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ]),
                const Divider(
                  indent: 405,
                  endIndent: 405,
                ),
                /* Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text
                    Text('Experience',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.blueGrey)),
                  ], 
                ),
*/
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
