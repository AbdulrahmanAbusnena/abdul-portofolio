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
  var emailme = TextButton(
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
                ).animate().slide(delay: 500.ms).then().shake(hz: 11),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Abdulrahman Abusnena',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                  ),
                )
                    .animate()
                    .fade()
                    .slide(curve: Curves.easeIn)
                    .then()
                    .shake(delay: 500.ms),
                const Divider(
                  indent: 340,
                  endIndent: 340,
                  color: Colors.blueGrey,
                ),
                const SizedBox(
                  height: 45,
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
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.blueGrey))
                        .animate()
                        .fade()
                        .slideY(
                          curve: Curves.easeIn,
                        ),

                    const SizedBox(
                      width: 120,
                    ),
                    Text(
                      about,
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  indent: 225,
                  endIndent: 500,
                  color: Colors.blueGrey,
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text
                    Text(' Connect',
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.blueGrey))
                        .animate()
                        .fade()
                        .slideY(
                          curve: Curves.easeIn,
                        ),

                    const SizedBox(
                      width: 120,
                    ),

                    Text(connect,
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          //   color: Colors.blueGrey
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  indent: 225,
                  endIndent: 500,
                  color: Colors.blueGrey,
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(

                    //    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text
                      Text('  Work',
                              style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueGrey))
                          .animate()
                          .fade()
                          .slideY(
                            curve: Curves.easeIn,
                          ),

                      const SizedBox(
                        width: 120,
                      ),
                      Text(
                        work,
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ]),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  indent: 225,
                  endIndent: 500,
                  color: Colors.blueGrey,
                ),
                const SizedBox(
                  height: 70,
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
